def top_k_frequent(nums, k)
    nums.tally.sort_by { |_, value| -value }.take(k).map(&:first)
end