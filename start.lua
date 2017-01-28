wifi.setmode(3)
cfg={}
cfg.ssid=config["APName"]
cfg.pwd=config["APPass"]
cfg.auth=tonumber(config["APAuth"])
cfg.hidden=tonumber(config["APHiden"])
wifi.ap.config(cfg)
wifi.sta.config(config["STAName"],config["STAPass"])
wifi.sta.connect()

stacfg={}
stacfg.ip = config["STAIP"]
stacfg.netmask = config["STAMask"]
stacfg.gateway = config["STAGate"]
wifi.sta.setip(stacfg)

dofile("server.lua")