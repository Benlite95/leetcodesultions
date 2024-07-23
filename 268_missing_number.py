def missingNumber(self, nums: List[int]) -> int:
    max_num = max(nums)
    diff = int((max_num**2+max_num)/2 - sum(nums))
    return diff if diff else 0 if min(nums)  else max_num+1