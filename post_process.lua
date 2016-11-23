function post_process(client,page,vars)
    --print(page,vars)
    uart.on("data",0,function(data)
        uart.on("data")
        end,0)
    uart.write(0,page.." "..vars.."#")
    uart.on("data", "#",
        function(data)
            print(data)
            client:send(data ,function(client)
                client:close()
            end)
            uart.on("data")
        end,
    0)
    
end

return post_process
