function send_page(socket, page)
    local content = require(page)
    local index =  0
    local a_size = #content
    local response=""

    if a_size==1 then
        local send_response=require("send_response")
        send_response(socket,content[1],page)
    else
        local send_end = function(socket)
            response="0\r\n\r\n"
            socket:send(response, function(socket)
                socket:close()
                response=nil
                content=nil
                collectgarbage()
            end)
        end
        local send_body=function(socket)
            if index==a_size then
                send_end(socket)
            else 
                local res_string = content[index+1]:gsub("\n","")
                local slen=string.format("%x",string.len(res_string))
                index=index+1;
                response = slen.."\r\n"..res_string.."\r\n"
                res_string=nil
                socket:send(response, send_body)
            end
        end
        response="HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nTransfer-Encoding: chunked\r\n\r\n"
        if page:find("css")~=nil then
            response=response:gsub("html","css")
        end
        socket:send(response,send_body)
    end
    collectgarbage()
end

return send_page
