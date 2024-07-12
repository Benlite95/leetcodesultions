def group_anagrams(strs)
    strs.group_by{|str| str.chars.tally}.values 
end