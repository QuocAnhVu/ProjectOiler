import math


def sumDigits(bignum):
    return reduce(lambda total, curr: total + curr, map(int, str(long(bignum))))

print(sumDigits(math.pow(2, 1000)))
