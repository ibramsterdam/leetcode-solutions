require "pry-byebug"
# @param {String} s
# @return {Integer}
def balanced_string_split(s)
    result = 0
    count = 0
    s.each_char do |char|
        char == "L" ? count -= 1 : count += 1
        result += 1 if count == 0
    end
    result 
end