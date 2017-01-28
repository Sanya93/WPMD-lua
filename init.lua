config={}
local IDLE_AT_STARTUP_MS = 1000;

tmr.alarm(1,IDLE_AT_STARTUP_MS,0,function()
    uart.setup(0,115200,8,0,1,0)
    uart.on("data",0,function(data)
        uart.on("data")
        end,0)
    uart.write(0,"config#")
    uart.on("data", "#",
        function(data)
            for k, v in string.gmatch(data, "(%w+)=([%w._ ]+)|*") do
                config[k] = v
                --print(k," ",v,"\n")
            end
            uart.on("data") 
            collectgarbage()
            dofile("start.lua")
        end,
        0)
    end)   