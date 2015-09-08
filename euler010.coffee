ceiling = 2000000
primes = [2]
isPrime = (num) ->
	for prime in primes
		return false if num % prime == 0
	return true

currNum = 1
while currNum < ceiling
	currNum += 2
	if isPrime currNum
		primes.push currNum
		console.log currNum

result = primes.reduce (total, curr) -> total + curr
console.log result