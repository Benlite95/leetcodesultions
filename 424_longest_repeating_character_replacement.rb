def character_replacement(s, k)
    hash = {}
    start  = 0
    finish = 1
    longest = 0
    char_array = s.chars
    hash[char_array[start]] = 1
    while start < finish 
        length = finish - start
        max =  hash.values.max
        if (length - max) > k
            hash[char_array[start]] = ( hash[char_array[start]] || 0) - 1
            start += 1
        else
            longest = [length,longest].max
            hash[char_array[finish]] = ( hash[char_array[finish]] || 0) + 1
            finish += 1
            break if  finish > char_array.size 
        end 
    end
    longest
end