def longest_common_prefix(strs)
    strs[0].length.times do |i|
        char = strs[0][i]
        strs.each do |string|
            return strs[0][0,i] unless string[i] == char
        end
    end
    return strs[0]
end