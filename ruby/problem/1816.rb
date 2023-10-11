require "pry-byebug"

def truncate_sentence(s, k)
    s.split(" ")[0...k].join(" ")
end
# after looking at solutions I could have done  s.split.take(k).join(' ')
# split always defaults to a space and .take takes [0, variable]: