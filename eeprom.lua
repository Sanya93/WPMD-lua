local eeprom ={}

function eeprom.get_string_from_eeprom(addr,len)
    h=math.floor(addr/256)
    l=addr - h*256
    i2c.start(0)
    i2c.address(0,0x50,i2c.TRANSMITTER)
    i2c.write(0,h)
    i2c.write(0,l)
    i2c.stop(0)
    i2c.start(0)
    i2c.address(0, 0x50,i2c.RECEIVER)
    result=i2c.read(0,len)
    i2c.stop(0)
    return result
end

return eeprom
