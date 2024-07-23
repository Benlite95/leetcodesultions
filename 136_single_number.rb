def single_number(nums)
    my_hash = {}
    nums.each do |num|
        my_hash[num] ||= 0
        my_hash[num] +=1
    end
    my_hash.select { |_, value| value == 1 }.first[0]
end