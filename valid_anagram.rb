def is_anagram(s, t)
    s.chars.each do |s_char|
        return false unless t.sub!(s_char,"")
    end
    t.size == 0
end


array = ["r","e","g","e","d","f","h","e","r","t","s","h"]
