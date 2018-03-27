co=coroutine.create(function (value1,value2)
      local tempvar3=10
      print("cor sec 1",value1,value2,tempvar3)

      local tempvar1=coroutine.yield(value1+1,value2+1)
      tempvar3=tempvar3+value1
      print("cor sec 2",tempvar1 ,tempvar2, tempvar3)

      local tempvar1, tempvar2= coroutine.yield(value1+value2, value1-value2)
      tempvar3 = tempvar3 + value1
      print("cor sec 3",tempvar1,tempvar2, tempvar3)
      return value2,"end"
end)


print("main", coroutine.resume(co, 3, 2))
print("main", coroutine.resume(co, 12,14))
print("main", coroutine.resume(co, 5, 6))
print("main", coroutine.resume(co, 10, 20))
-----------------------------------------
function myfunction ()
   n = n/nil
end

if pcall(myfunction) then
   print("Success")
else
    print("Failure")
end
