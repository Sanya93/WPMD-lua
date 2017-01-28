function send_to_a(message,client)
    local send_response=require("send_response")
    uart.on("data",0,function(data)
        uart.on("data")
        end,0)
    uart.write(0,message)
    uart.on("data", "#",
        function(data)
            send_response(client,data,"")
            uart.on("data")     
        end,
    0)
    collectgarbage()
end

return send_to_a
