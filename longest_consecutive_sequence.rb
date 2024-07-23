def longest_consecutive(nums)
    nums.sort!
    count = 1
    max = 0
    prev = nums[0]
    nums.each do |num|
        if num == prev + 1 
            count += 1
        elsif num != prev
            count = 1
        end
        max = [count,max].max
        prev = num
    end    
    max
end