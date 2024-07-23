class Solution
    def encode(strs)
      strs.map { |word| "#{word.length}%#{word}" }.join
    end
  
    def decode(s)
      result = []
      i = 0
  
      while i < s.length
        j = s.index('%', i)
        length = s[i..j].to_i
        i = j + 1
        result << s[i..(i + length)]
        i += length
      end
      result
    end
  end

  