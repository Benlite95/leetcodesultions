def remove_duplicates(nums)
    prev = nil
    i = 0
    while i < nums.count
        if prev == nums[i]
            nums.delete_at(i)
            i -= 1
        end
        prev = nums[i]
        i += 1
    end
    nums.compact.count
end