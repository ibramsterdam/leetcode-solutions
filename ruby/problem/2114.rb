require "pry-byebug"

# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences)
    result = 0
    sentences.each do |sentence|
        words = sentence.split(" ")
        result = words.count if words.count > result
    end    
    result
end