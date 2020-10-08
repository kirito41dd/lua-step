print("hello world") --hello world

-- comments
--[[
    comments
]]

name = 'kirito'

io.write("size of string ", #name, "\n") --size of string 6

name = 4
io.write("my name is ", name, "\n") --my name is 4

bigNum = 9223372036854775807 + 1
io.write("big number type: ", type(bigNum), "\n") --big number type: number
io.write("big number: ", bigNum, "\n") --big number: -9223372036854775808

floatPrecision = 1.99999999
io.write(floatPrecision,'\n') --1.99999999

longString = [[i am a string]] --i am a string
io.write(longString,'\n')

longString = longString .. name
io.write(longString,'\n') -- i am a string4

isAble = true
io.write(type(isAble),'\n') --boolean
io.write(type(aVal),'\n') --nil

isNil = type(aVal) == "nil"
print(isNil) --true

io.write("5 + 3 = ", 5+3, "\n") --5 + 3 = 8
io.write("5 - 3 = ", 5-3, "\n") --5 - 3 = 2
io.write("5 * 3 = ", 5*3, "\n") --5 * 3 = 15
io.write("5 / 3 = ", 5/7, "\n") --5 / 3 = 0.71428571428571
io.write("5 % 3 = ", 5%3, "\n") --5 % 3 = 2

io.write("floor(2.345) : ", math.floor(2.345), "\n") --floor(2.345) : 2
io.write("ceil(2.345) : ", math.ceil(2.345), "\n") --ceil(2.345) : 3
io.write("math.random() : ", math.random(), "\n") --math.random() : 0.86582797017022
io.write("math.random(1,10) : ", math.random(1,10), "\n") --math.random(1,10) : 9

print(string.format("Pi = %.10f", math.pi)) --Pi = 3.1415926536

-- 关系比较 > < >= <= == ~=
-- 逻辑判断 and or not
age = 21

if age < 16 then
    io.write("age < 16")
    
elseif age >= 16 and age <= 20 then
    io.write("age >= 16 and age <= 20")
else
    io.write("age > 20")
end

print(string.format("not true = %s", tostring(not true))) --not true = false

aStr = "i am ..."
io.write("replace i with me: ", string.gsub(aStr,"i","me"), "\n") --replace i with me: me am ...
io.write("index of i: ", string.find(aStr,"i"), "\n") --index of i: 1

i = 1
while (i <= 10) do
    io.write(i)
    i = i + 1

    if i == 8 then break end
end
io.write("\n")

-- repeat
--     io.write("enter your guess:")
--     guess = io.read()
-- until tonumber(guess) == 15

for i = 1, 10, 1 do
    io.write(i,"\n")
end

months = {"january", "february", "march", "april", "june", "july", 
          "august", "september","october","december", "november", "december"}

for k,v in pairs(months) do
    io.write(k, " ",v, "\n")
end
--[[
1 january
2 february
3 march
4 april
5 june
6 july
7 august
8 september
9 october
10 december
11 november
12 december
]]