def encode(s)
    text = s.split('')
    encoded = []
    text.each {|e| 
        if e == 'a' 
            e = '1'
            encoded.push(e)  
        
        elsif  e == 'e'
            e = '2'
            encoded.push(e)

        elsif  e == 'i' 
            e = '3'
            encoded.push(e)
   
        elsif  e == 'o'
            e = '4'
            encoded.push(e)

        elsif  e == 'u'
            e = '5'
            encoded.push(e)
        else 
            encoded.push(e)
        end}
     encoded.join('')

end
  
def decode(s)
    text = s.split('')
    encoded = []
    text.each {|e| 
        if e == '1' 
            e = 'a'
            encoded.push(e)  
        
        elsif  e == '2'
            e = 'e'
            encoded.push(e)

        elsif  e == '3' 
            e = 'i'
            encoded.push(e)
   
        elsif  e == '4'
            e = 'o'
            encoded.push(e)

        elsif  e == '5'
            e = 'u'
            encoded.push(e)
        else 
            encoded.push(e)
        end}
     encoded.join('')
end

puts encode("hello")

puts decode("h2ll4")