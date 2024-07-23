def three_sum(nums)
    result = []
    nums = nums.sort!
    i = 0
    while i < nums.length && nums[i] < 1
        start = i + 1
        finish = nums.length - 1
        while start < finish
            sum = (nums[i] + nums[start] + nums[finish])
            case 
            when sum > 0
                finish -= 1
            when sum < 0
                start += 1 
            when sum == 0
                new_answer = [nums[i] , nums[start] , nums[finish]]
                result <<  new_answer if new_answer != result.last
                start += 1 
            end
        end
        i += 1
        i += 1 while nums[i - 1] == nums[i] 
    end
    result
end