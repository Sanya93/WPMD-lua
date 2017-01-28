function post_process(client,page,vars)
    local send_mes = require("send_to_a")
    local send_to_client
    vars = vars:gsub("%%20"," ")
    if (page=="/control.html") then
        local req = "control "..vars.."#"
        send_mes(req, client)
    elseif (page=="/") then
        local auth_data={}
        local result
        for k, v in string.gmatch(vars, "(%w+)=([%w. _]+)&*") do
            auth_data[k]=v
        end
        if (auth_data["login"]==config["PageLogin"] and 
            auth_data["pass"]==config["PagePass"]) then result="ok"
            else result = "incorrect"
            end
        local send_response=require("send_response")
        send_response(client,result,"")
    elseif (page=="/ap.html") or (page=="/sta.html") or (page=="/auth.html") then
        if (vars ~= nil)then
            local _,_,req = string.find(page,"\/(%w+).")
            
            for k, v in string.gmatch(vars, "(%w+)=([%w. _]+)&*") do
                req=req.."|"..v;
            end
            req=req.."#";
            send_mes(req,client)
        end
    end
    collectgarbage()
end

return post_process
