require "pry-byebug"

# @param {String} s
# @return {String}
def reverse_words(s)
    s.split.map! {_1.reverse}.join(" ")
end