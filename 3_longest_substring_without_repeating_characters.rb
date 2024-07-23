def length_of_longest_substring(s)
    hash = {}
    count = 0
    max = 0
    cutoff = 0
    s.chars.each_with_index do |char,i|
        if hash[char] 
            cutoff = [hash[char], cutoff  ].max
            count = i - cutoff 
            hash[char] = i
        else 
            hash[char] ||= i
            count += 1  
        end
        max = [count,max].max
    end
    max      
end