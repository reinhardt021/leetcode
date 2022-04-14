# @param {String} s
# @return {Integer}
def roman_to_int(s)
    amount_map = {
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000,
    }
    
    total = 0
    last_char = ""
    for curr_char in s.split(//) do 
      last_amount = "n/a"
      curr_amount = amount_map[curr_char.to_sym]
      if (last_char == "")
          total += curr_amount
      end

      if (last_char != "")
          last_amount = amount_map[last_char.to_sym]
        # check if previous is smaller than curr
          # if previous smaller 
          # then subtract from total the previous amount
          # and add (curr - prev)
          # else just add to the total
          if (last_amount < curr_amount)
            total -= last_amount
            total += (curr_amount - last_amount)
          else
            total += curr_amount
          end
      end
        
        # if the previous letter is smaller than the current letter
        # then you can add to the total minux the last char amount
        puts "last: " + last_amount.to_s + " & curr:" + curr_amount.to_s + " >> total: " + total.to_s
        # if (map[last_char] < map[curr_char])
        # end 
      

      last_char = curr_char
    end
    
    return total
end

t1 = "III" # => 3
t2 = "LVIII" # => 58
t3 = "MCMXCIV" # => 1994
puts roman_to_int(t1) == 3
puts roman_to_int(t2) == 58
puts roman_to_int(t3) == 1994
