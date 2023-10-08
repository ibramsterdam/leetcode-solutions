# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
    result = 0
    operations.each do |op|
        if op == "X--" || op == "--X"
            result -= 1
        elsif op == "X++" || op == "++X"
            result += 1
        end
    end
    result
end