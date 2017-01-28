function send_response(client, message,page)
    response = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nContent-Length:"
    if page:find("css")~=nil then
        response=response:gsub("html","css")
    end
    local res_string = message:gsub("\n","")
    response=response..tostring(string.len(res_string)).."\r\n\r\n"..res_string.."\r\n\r\n"
    client:send(response, function(client)
        client:close()
    end)
    collectgarbage()
end

return send_response