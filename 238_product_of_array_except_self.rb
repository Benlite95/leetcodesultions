def product_except_self(nums)
    answer = []
    hash = nums.tally
    nums.each do |num|
        hash[num] -= 1
        answer << hash.map { |key, value| key ** value }.reduce(:*)
        hash[num] += 1
    end
    answer
end