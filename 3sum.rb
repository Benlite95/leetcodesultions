# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    grouped_nums = nums.tally
    grouped_nums.each do |k,v|
        diff = target - k
        if grouped_nums[diff] && (diff != k || grouped_nums[diff] > 1)
            return [nums.index(k),nums.rindex(diff)] 
        end
    end
end