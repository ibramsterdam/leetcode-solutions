require "pry-byebug"
# @param {String} s
# @return {String[]}
def cells_in_range(s)
    result= [] 
    cords = s.split(":") 
    start_col = cords[0].gsub(/[^A-Za-z]/, "")
    start_row = cords[0].gsub(/[A-Za-z]/, "")
    end_col = cords[1].gsub(/[^A-Za-z]/, "")
    end_row = cords[1].gsub(/[A-Za-z]/, "")

    (start_col..end_col).each do |col|
        (start_row..end_row).each do |row| 
            result << "#{col}#{row}"
        end
    end
    result
end