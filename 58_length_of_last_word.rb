def length_of_last_word(s)
    clean_str = s.rstrip
    last_space = clean_str.rindex(" ")
    last_space ? clean_str.length - last_space - 1 : clean_str.length
end