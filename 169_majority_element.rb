def majority_element(nums)
    (nums.inject(Hash.new(0)) { |h, e| h[e] += 1 ; h }).max_by{|_,v| v}[0]
end