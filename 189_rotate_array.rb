def rotate(nums, k) = k.times {nums.prepend(nums.pop())}