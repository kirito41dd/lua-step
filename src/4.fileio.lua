-- io
-- r : read only
-- w : write only
-- a : append or create a new file
-- r+ : rerad & write existing file
-- w+ : overwrite read or create a file
-- a+ : append read or create file

file = io.open("test.text", "w+")
file:write("random string of text\n")
file:write("some more text\n")
file:seek("set",0)
print(file:read("*a"))
file:close()

file = io.open("test.text", "a+")
file:write("even more text\n")
file:seek("set", 0)
print(file:read("*a"))
file:close()

--[[
random string of text
some more text

random string of text
some more text
even more text
]]