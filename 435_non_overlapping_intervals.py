def eraseOverlapIntervals(self, intervals: List[List[int]]) -> int:  
    intervals = sorted(intervals, key=lambda x: x[0])
    result = 0
    for i in range (len(intervals)-1):
        if intervals[i][1] > intervals[i+1][0]:
            intervals[i+1][1] = min(intervals[i][1],intervals[i+1][1])
            result += 1
    return  result