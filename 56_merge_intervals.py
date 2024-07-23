def merge(self, intervals):
    intervals = sorted(intervals, key=lambda x: x[0])
    result = []
    for i in range (len(intervals)-1):
        if intervals[i][1] < intervals[i+1][0]:
            result.append(intervals[i])
        else:
            intervals[i+1] =  [min(intervals[i][0],intervals[i+1][0]),max(intervals[i][1],intervals[i+1][1])]
    result.append(intervals[-1])      
    return  result