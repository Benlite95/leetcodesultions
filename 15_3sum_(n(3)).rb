def three_sum(nums)
    result = []
    nums = nums.sort!
    i = 0
    while i < nums.length && nums[i] < 1
        j  = i
        i += 1
        next if nums[j] == nums[j-1] && j != 0
        nums[i..].each_with_index do |second,k|
            third = -(0 + nums[j] + second)
            break if third < second 
            result << [nums[j],second,third] if nums[(i + k + 1)..].include?(third) && [nums[j],second,third] != result.last
        end
    end
    result
end