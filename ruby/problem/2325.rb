require "pry-byebug"

def decode_message(key, message)
    message.tr(key.delete(" ").split("").uniq.join, "a-z")
end
decode_message("the quick brown fox jumps over the lazy dog", "vkbs bs t suepuv")