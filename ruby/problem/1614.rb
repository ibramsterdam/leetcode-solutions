require "pry-byebug"


def max_depth(s)
    dept = 0
    counter = 0
    s.each_char do |char|
      counter += 1 if char == "("
      counter -= 1 if char == ")"
      dept = counter if counter > dept
    end 
    dept
end

max_depth("(1+(2*3)+((8)/4))+1")
