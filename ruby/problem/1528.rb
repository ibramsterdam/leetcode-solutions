require "pry-byebug"
# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
    result = []
    s.each_char.with_index do |char, idx|
        result[indices[idx]] = char
    end
    puts result.join("")
end

restore_string("codeleet", [4,5,6,7,0,2,1,3])