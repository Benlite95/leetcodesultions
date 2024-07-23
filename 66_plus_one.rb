def plus_one(digits)
    str =""
    digits.each do |digit|
        str += digit.to_s
    end    
    (str.to_i + 1).to_s.chars.map(&:to_i)
end