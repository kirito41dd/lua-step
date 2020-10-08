co = coroutine.create( function()
    for i = 1, 10, 1 do
        print(i)
        print(coroutine.status(co))
        if i == 5 then coroutine.yield() end
    end
end)

print(coroutine.status(co)) -- suspended
coroutine.resume(co) --[[
1
running
2
running
3
running
4
running
5
running
]]
print(coroutine.status(co)) --suspended

co2 = coroutine.create(function()
    for i = 101, 110, 1 do
        print(i)
    end
end)

coroutine.resume(co2) -- 101 102 ... 110
coroutine.resume(co) -- 6 running  ... 10 runing
print(coroutine.status(co)) --dead
print(coroutine.status(co2)) --dead
