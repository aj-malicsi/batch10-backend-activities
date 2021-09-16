#1.each method
puts "1. each method"
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.each{|element| puts "#{element} is the current element"}

#2. hash
puts "2. hash"

h = {a:1, b:2, c:3, d:4}

#get value of key b
puts h[:b]

#add key value pair e:5
h[:e] = 5
puts h, "\n"


#3 copy array to hash
puts "3. copying array to hash\n"
contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
            ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}

# contact_data.each{|data| data.each{|inner| puts "#{inner}"} }

#solution 1
puts "solution 1 individual indexing"
john = contacts["John Cruz"]
avion = contacts["Avion School"]

johnData = contact_data[0]
avionData = contact_data[1]

john[:email] = johnData[0]
john[:address] = johnData[1]
john[:phone] = johnData[2]

avion[:email] = avionData[0]
avion[:address] = avionData[1]
avion[:phone] = avionData[2]

contacts["John Cruz"] = john
contacts["Avion School"] = avion

puts contacts, "\n"

#solution 2
puts "solution 2 transferring to 1D array using each method then indexing"
newArr = []
contact_data.each{|data| data.each{|inner| newArr.push(inner) }}

contacts["John Cruz"] = {email: newArr[0], address: newArr[1], phone:newArr[2]}
contacts["Avion School"] = {email: newArr[3], address: newArr[4], phone:newArr[5]}

puts contacts, "\n"

puts "solution 3 transferring to 1D array using each method then using shift"

contacts["John Cruz"] = {email: newArr.shift(), address: newArr.shift(), phone:newArr.shift()}
contacts["Avion School"] = {email: newArr.shift(), address: newArr.shift(), phone:newArr.shift()}

puts contacts, "\n"

puts "solution 4 indexing contact_data 2D array"
contacts["John Cruz"] = {email: contact_data[0][0], address: contact_data[0][1], phone:contact_data[0][2]}
contacts["Avion School"] = {email: contact_data[1][0], address: contact_data[1][1], phone:contact_data[1][2]}

puts contacts, "\n"

puts "solution 5 indexing then using shift method contact_data array"
contacts["John Cruz"] = {email: contact_data[0].shift(), address: contact_data[0].shift(), phone:contact_data[0].shift()}
contacts["Avion School"] = {email: contact_data[1].shift(), address: contact_data[1].shift(), phone:contact_data[1].shift()}

puts contacts, "\n"


# Expected output:
#  {
#    "John Cruz"=>{:email=>"john@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Avion School"=>{:email=>"avion@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}

puts "4. age"
puts "what is your age"
age = Integer(gets.chomp)

puts "your age is #{age}"
puts "In 10 years you will be: #{age+10}"
puts "In 20 years you will be: #{age+20}"
puts "In 30 years you will be: #{age+30}"
puts "In 40 years you will be: #{age+40}"
