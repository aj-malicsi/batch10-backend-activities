#1.each method
puts "1. each method"
numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.each{|element| puts "#{element}"}

#2. hash
puts "2. hash"

h = {a:1, b:2, c:3, d:4}

puts h[:b]

h[:e] = 5

puts h

puts "3. copying array to hash"
contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
            ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}

# contact_data.each{|data| data.each{|inner| puts "#{inner}"} }


# contacts["John Cruz"[:email] = "test"]
contacts["John Cruz"]


john = contacts["John Cruz"]
avion = contacts["Avion School"]
# puts john, avion

johnData = contact_data[0]
avionData = contact_data[1]

# johnData.each{|data| john[:email] = }

john[:email] = johnData[0]
john[:address] = johnData[1]
john[:phone] = johnData[2]

# puts avionData

avion[:email] = avionData[0]
avion[:address] = avionData[1]
avion[:phone] = avionData[2]

# puts john, avion

contacts["John Cruz"] = john
contacts["Avion School"] = avion

puts contacts


# Expected output:
#  {
#    "John Cruz"=>{:email=>"john@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Avion School"=>{:email=>"avion@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}

puts "what is your age"
age = Integer(gets)

puts age.class

puts "your age is", age


puts "In 10 years you will be", age + 10
puts "In 20 years you will be", age + 20
puts "In 30 years you will be", age + 30
puts "In 40 years you will be", age + 40
