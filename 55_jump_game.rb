def can_jump(nums)
    max_jumps = nums[0]
    nums.each_with_index do |num,i|
        max_jumps = [max_jumps - 1,num].max
        return false unless max_jumps > 0 || (i == nums.count - 1)
    end
    true
end