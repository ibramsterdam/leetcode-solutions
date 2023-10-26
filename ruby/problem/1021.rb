# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
    result = ""
    count = 0

    s.each_char do |char|
        if char == '('
            count += 1
            result << char if count > 1 
        else
            count -= 1
            result << char if count > 0 
        end
    end

    result
end
