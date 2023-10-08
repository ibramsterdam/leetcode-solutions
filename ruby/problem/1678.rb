require 'pry-byebug'

# @param {String} command
# @return {String}
def interpret(command)
    commands = {"G" => "G", "()" => "o", "(al)"=> "al"} 
    result = ""
    prev_char = ""
   command.each_char do |char|
    if char == "G"
        result.append("G")
    elsif char == ")"
        if prev_char == "l"
            result.append("al")
        else
            result.append("o")
        end
    end
    prev_char = char
   end
   result
end