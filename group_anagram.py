from collections import Counter
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        answer_hash = {}
        groups = Counter(strs)
        for [key,value] in groups:
            answer_hash[key] << value
        return  answer_hash.values   
