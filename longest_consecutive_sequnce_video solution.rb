def longest_consecutive(nums)
    my_set = Set.new(nums)
    longest = 0
    my_set.each do |num|
        next if my_set.include?(num - 1)
        i = 0
        i += 1 while my_set.include?(num + i)
        longest = [i,longest].max 
    end
    longest
end