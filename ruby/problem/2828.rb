require "pry-byebug"

def is_acronym(words, s)
    s == words.reduce("") {|a,n| a << n[0]}
end

is_acronym(["an","apple"], "a")

