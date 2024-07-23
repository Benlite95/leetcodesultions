def is_anagram(s, t)
    s.chars.each do |s_char|
        return false unless t.sub!(s_char,"")
    end
    t.size == 0
end


