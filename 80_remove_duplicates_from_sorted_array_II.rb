def remove_duplicates(nums)
    i = 0
    while i < nums.count - 2
        nums[i] ==  nums[i+1] && nums[i+1] ==  nums[i+2] ? 
        nums.delete_at(i) : i += 1
    end
    nums.count
end
