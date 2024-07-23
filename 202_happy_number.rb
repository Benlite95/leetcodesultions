def is_happy(n,seen = Set.new)
    total = n.to_s.chars.each.map{|number| number.to_i  ** 2}.sum
    return true if total == 1
    return false if seen.include?(total)
    seen.add(total)
    is_happy(total,seen)
end
