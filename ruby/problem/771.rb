# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
    result = 0
    stones.each_char do |char|
        jewels.include?(char) ? result += 1 : result
    end
    result
end