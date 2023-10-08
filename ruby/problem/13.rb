require 'pry-byebug'
# @param {String} s
# @return {Integer}
def roman_to_int(s)
    roman_vals = {"I" => 1, "V"=> 5 , "X"=> 10, "L"=> 50, "C"=> 100, "D"=> 500, "M"=> 1000 }
    result = 0 
    prev_value = 0

    s.reverse.each_char do |char|
       value = roman_vals[char] 
       if value >= prev_value 
        result += value 
       else 
        result -= value
       end

       prev_value = value
    end
    result
end


