require "pry-byebug"

def check_if_pangram(sentence)
    uniq_chars_in_sentence = sentence.split("").uniq.sort
    uniq_chars_in_sentence == ("a".."z").to_a
end

check_if_pangram("thequickbrownfoxjumpsoverthelazydog")