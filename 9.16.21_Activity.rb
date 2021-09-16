# check if number is in an array

arr = [1,3,5,7,9,11]
puts "1. Enter a number:"
number = gets.chomp.to_i

arr.each{|digit| 
    if number == digit
        puts "#{number} is in the array"
    end}


#0 to 100

puts "2. Enter a number between 0 to 100:"
number = gets.chomp.to_i

if number > 100
    puts "#{number} is above 100"
end

if number < 100 && number > 50
    puts "#{number} is between 51 and 100"
end

if number < 50 && number > 0
    puts "#{number} is between 0 and 50"
end


# while loop stop
complete = false

while !complete
    puts "PLEASE PUT ME OUT OF MY MISERY AND TYPE STOP"
    input = gets.chomp
    if(input == "STOP")
        puts "THANK YOUUUUUUUuuuuu.... *fades into oblivion*"
        complete = true
    end
    if input == "stop"
        puts "ALL CAPS!!!! TRY AGAIN"
    end
end

puts "even number array:"
arr = [6,3,1,8,4,2,10,65,102]
newArr = []
arr.each{|digit| 
    if digit % 2 == 0
        newArr.push(digit)
    end}
puts newArr

