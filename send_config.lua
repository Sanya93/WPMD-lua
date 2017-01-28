function send_config(client,page)
	local send_response=require("send_response")
    if  (page=="/apdata") then
        local resp = [[{"APName":"]]..config["APName"]..
            [[","APPass":"]]..config["APPass"]..
            [[","APAuth":"]]..config["APAuth"]..
            [[","APHiden":"]]..config["APHiden"]..[["}]];
        send_response(client,resp,"")
    elseif (page=="/stadata") then
        local resp = [[{"STAName":"]]..config["STAName"]..
            [[","STAPass":"]]..config["STAPass"]..
            [[","STAIP":"]]..config["STAIP"]..
            [[","STAMask":"]]..config["STAMask"]..
            [[","STAGate":"]]..config["STAGate"]..[["}]];
        send_response(client,resp,"")
    elseif (page=="/authdata") then
        local resp = [[{"STAIP":"]]..config["STAIP"]..
            [[","PageLogin":"]]..config["PageLogin"]..
            [[","PagePass":"]]..config["PagePass"]..[["}]];
        send_response(client,resp,"")
    end
    collectgarbage()
end

return send_config
