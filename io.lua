local file = io.open("/tmp/lua.log", "a+")
--file:write("hello world\n")
file:close()


file = io.open("/tmp/lua.log", "r")
local out = file:read("*line")
print(out)
out = file:read("*line")
print(out)

file:seek("set")
out = file:read("*all")
print(out)
file:close()


local newfile = io.open("/tmp/newlua.log", "a+")
io.output(newfile)
--io.write("hello world\n")
io.close(newfile)

newfile = io.open("/tmp/newlua.log", "r")
io.input(newfile)
local out=io.read("*line")
print(out)
local out=io.read("*line")
print(out)
newfile:seek("set")
local out=io.read("*all")
print(out)
io.close(newfile)


