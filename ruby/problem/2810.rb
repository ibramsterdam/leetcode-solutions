def final_string(s)
    result = ""
    s.each_char do |char|
        if char == "i"
            result = result.reverse
        else
            result = result + char
        end
    end
    result
end
