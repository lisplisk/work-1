def func1

i=0
while i<=2

puts "这是第1个线程:#{Time.now}"
sleep(2)
i=i+1
end
end


def func2
j=0
while j<=2
puts "这是第2个线程:#{Time.now}"
sleep(2)
j=j+1
end

end 

puts "开始:#{Time.now}"

t1=Thread.new{func1()}
t2=Thread.new{func2()}
t1.join
t2.join 
