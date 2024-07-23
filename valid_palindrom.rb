def is_palindrome(s)
    s = s.gsub(/[^a-zA-Z0-9]/, '')
    half_way = s.length/2
    half_way.times do |i|
        return false unless s[i].downcase == s[-(i+1)].downcase
    end
    return true
end