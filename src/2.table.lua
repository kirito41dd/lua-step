aTable = {}

for i = 1, 10 do 
    aTable[i] = i
end

io.write("first : ", aTable[1], "\n") --first : 1
io.write("number of items : ", #aTable, "\n") --number of items : 10

table.insert(aTable, 1, 0)
io.write("first : ", aTable[1], "\n") --first : 0
io.write("number of items : ", #aTable, "\n") --number of items : 11

print(table.concat(aTable, ", ")) --0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

table.remove(aTable, 1)
print(table.concat(aTable, ", ")) --1, 2, 3, 4, 5, 6, 7, 8, 9, 10

aMultiTable = {}

for i = 0, 9 do
    aMultiTable[i] = {}
    for j = 0, 9 do
        aMultiTable[i][j] = tostring(i)..tostring(j)
    end
end

io.write("Table[0][0] : ", aMultiTable[0][0], "\n") --Table[0][0] : 00

for i = 0, 9 do
    for j = 0, 9 do
        io.write(aMultiTable[i][j],": ")
    end
    io.write("\n")
end

function getSum(num1, num2) 
    return num1 + num2
end

print(string.format("5 + 2 = %d", getSum(5,2))) --5 + 2 = 7

function splitStr(theString)
    stringTable = {}
    local i = 1
    for word in string.gmatch(theString,"[^%s]+") do 
        stringTable[i] = word
        i = i + 1
    end
    return stringTable, i
end

splitStrTable, numOfStr = splitStr("the str")
for j = 1, numOfStr-1 do 
    print(string.format("%d : %s", j, splitStrTable[j])) --1 : the --2 : str
end

function getSumMore(...)
    local sum = 0

    for k,v in pairs{...} do
        sum = sum + v
    end
    return sum 
end

io.write("sum more : ", getSumMore(1,2,3), "\n") --sum more : 6

doubleIt = function(x) return x * 2 end
print(doubleIt(3)) --6

function outerFunc()
    local i = 0
    return function()
        i = i + 1
        return i
    end
end

getI = outerFunc()
getJ = outerFunc()
print("get i",getI()) --get i   1
print("get j",getJ()) --get j   1
print("get i",getI()) --get i   2
print("get j",getJ()) --get j   2