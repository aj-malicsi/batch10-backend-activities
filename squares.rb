puts "input here:"
input = gets.chomp

num = input.split('')
ones = num[num.length-1]
sum = 0

def digitSum(num
    sum = 0
    if(num.class == Integer)
        num = num.to_s.split('')
        num.each{|digit| 
        sum += digit.to_i
        }
        return sum
    end

    num.each{|digit| 
    sum += digit.to_i
    }   
    return sum
end

if ones.to_i == 0 && input.to_i < 10
    puts "0 is a perfect square... kinda?"
end

if ones.to_i != 2 && ones.to_i != 3 && ones.to_i != 7 && ones.to_i != 8
    sum = digitSum(num)
    while sum > 9
        sum = digitSum(sum)
    end

    if sum == 1 || sum == 4 || sum == 7 || sum == 9
        puts "its a perfect square!"
    else
        puts "not a perfect square"
    end
end



    