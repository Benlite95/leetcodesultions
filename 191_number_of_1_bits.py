def hammingWeight(self, n: int) -> int:
    bits = 0
    while(n > 0 ):
        exp = 1
        while(exp <= n/2):
            exp *= 2
        n -= exp
        bits += 1
    return bits   