
function recieve_data(client, req)
    local _, _, method, path = string.find(req, "([A-Z]+) (.+) HTTP");
    
    if (method=="GET") then
        local send_page=require("send_page")
        local send_config=require("send_config")
        if     (path=="/")              then send_page(client,"index_html")
        elseif (path=="/favicon.ico")   then send_page(client,"empty_page")
        elseif (path=="/main.css")      then send_page(client,"main_css")
        elseif (path=="/index.css")     then send_page(client,"index_css")
        elseif (path=="/logo.js")       then send_page(client,"logo_js")
        elseif (path=="/index.js")      then send_page(client,"index_js")
        elseif (path=="/settings.html") then send_page(client,"settings_html")
        elseif (path=="/control.html")  then send_page(client,"control_html")
        elseif (path=="/settings.css")  then send_page(client,"settings_css")
        elseif (path=="/settings.js")   then send_page(client,"settings_js")
        elseif (path=="/control.js")    then send_page(client,"control_js")
        elseif (path=="/ap.html")       then send_page(client,"ap_html")
        elseif (path=="/ap.js")         then send_page(client,"ap_js")
        elseif (path=="/frame.css")     then send_page(client,"frame_css")
        elseif (path=="/auth.html")     then send_page(client,"auth_html")
        elseif (path=="/auth.js")       then send_page(client,"auth_js")
        elseif (path=="/di.html")       then send_page(client,"di_html")
        elseif (path=="/rcv.html")      then send_page(client,"rcv_html")
        elseif (path=="/sta.html")      then send_page(client,"sta_html")
        elseif (path=="/sta.js")        then send_page(client,"sta_js")
        elseif (path=="/apdata")        then send_config(client,path)
        elseif (path=="/stadata")       then send_config(client,path)
        elseif (path=="/authdata")      then send_config(client,path)
        else                                 send_page(client,"empty_page")    
        end
        send_page=nil
    elseif (method=="POST") then
        local flag,_,vars = string.find(req, "%s%s%s%s(.+)");
        local post_process=require("post_process")
        if flag~=nil then
            post_process(client,path,vars)
        else
            client:on("receive", function(c,vars)
                post_process(client,path,vars)
            end)
        end
    end
    collectgarbage()
  end

srv = net.createServer(net.TCP,1)
srv:listen(80, function(conn)
  conn:on("receive", recieve_data )
  collectgarbage()
end)
