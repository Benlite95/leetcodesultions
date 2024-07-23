def maxLengthBetweenEqualCharacters(self, s: str) -> int:
    longest = -1
    for i in range(len(s)):
        longest  = max(s.rfind(s[i]) - i-1,longest);
    return longest 