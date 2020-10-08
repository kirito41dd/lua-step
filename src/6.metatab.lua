aTable = {}
for x = 1, 10 do
    aTable[x] = x
end
--   __sub __mul __div __mod __concat ..
mt = {
 __add = function (tab1, tab2)
     sumTab = {}
     for y = 1, #tab1 do
        if(tab1[y] ~= nil) and (tab2[y] ~= nil) then
            sumTab[y] = tab1[y] + tab2[y]
        else
            sumTab[y] = 0
        end
 end
 return sumTab
end,
__eq = function (tab1,tab2)
    return tab1.value == tab2.value
    
end
}

setmetatable(aTable, mt)

print(aTable == aTable) --true

addTab = {}
addTab = aTable + aTable

for x = 1, #addTab do
    print(addTab[x]) -- 2 4 6 8 ... 20
end


-- 面向对象
Animal = {height = 0, weight = 0, name = "no name", sound = "no sound"}

function Animal:new (height, weight, name, sound)
    local o = {}
    setmetatable(o, Animal)
    self.__index = self
    o.height = height or 0
    o.weight = weight or 0
    o.name = name or ""
    o.sound = sound or ""
    return o
end

function Animal:toString()
    local str = string.format("height:%d, weight:%d, name:%s, sound:%s", self.height, self.weight, self.name, self.sound)
    return str
end

a1 = Animal:new(1,1,"spot","spot sound")
a2 = Animal:new(2,2, "snake", "sisi")
emp = Animal:new()
print(a1:toString()) --height:1, weight:1, name:spot, sound:spot sound
print(a2:toString()) --height:2, weight:2, name:snake, sound:sisi
print(emp:toString()) --height:0, weight:0, name:, sound:

-- 继承
dog = Animal:new()

function dog:new(height, weight, name, sound)
    local o = {}
    setmetatable(o, self)
    self.__index = self
    o.height = height or 0
    o.weight = weight or 0
    o.name = name or "dog"
    o.sound = name or "wang"
    return o
end

d1 = dog:new()
d2 = dog:new(1,1,"big dog")
print(d1:toString()) --height:0, weight:0, name:dog, sound:wang
print(d2:toString()) --height:1, weight:1, name:big dog, sound:big dog

