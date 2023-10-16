# @param {String} s
# @return {String}
def sort_sentence(s)
    result = []
    s.split.each do |word|
        result[word[-1].to_i] = word.chop
    end     
    result.join(" ").strip
end
