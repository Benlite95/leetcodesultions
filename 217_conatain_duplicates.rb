def contains_duplicate(nums)
    double_hash = {}
    nums.each do |num|
        return true if double_hash[num]
        double_hash[num] = 0
    end  
    return false  
end