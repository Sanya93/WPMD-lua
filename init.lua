wifi.setmode(3)
cfg={}
cfg.ssid="WPMD"
cfg.pwd="pass0000"
cfg.auth=wifi.WPA2_PSK
cfg.hidden=1
wifi.ap.config(cfg)
wifi.sta.config("Xperia E3_","1234qwer")
wifi.sta.connect()

stacfg={}
stacfg.ip = "192.168.43.2"
stacfg.netmask = "255.255.255.0"
stacfg.gateway = "192.168.43.1"
wifi.sta.setip(stacfg)
wifi.sta.sethostname("NodeMCU")
uart.setup(0, 115200, 8, 0, 1, 0 )

--i2c.setup(0,3,4,i2c.SLOW)
dofile("server.lua")
