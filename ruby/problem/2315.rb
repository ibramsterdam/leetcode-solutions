require 'pry-byebug'
# @param {String} s
# @return {Integer}
def count_asterisks(s)
  result = 0 

  include = true
  s.each_char do |char|
    include = !include if char == "|"
      
    if include 
      result += 1 if char == "*"
    end
  end
  puts result
end

count_asterisks("yo|uar|e**|b|e***au|tifu|l")
