require "pry-byebug"
def count_matches(items, rule_key, rule_value)
    result = 0
    items.each do |item|
        if rule_key == "type"
            if item[0] == rule_value
                result +=1
            end
        elsif rule_key == "color"
            if item[1] == rule_value
                result +=1
            end
        elsif rule_key == "name"
            if item[2] == rule_value
                result +=1
            end
        end
    end
    result
end

count_matches([["phone","blue","pixel"],["computer","silver","lenovo"],["phone","gold","iphone"]], "color", "silver")