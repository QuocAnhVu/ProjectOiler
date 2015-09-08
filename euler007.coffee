primes = [2]
isPrime = (num) ->
	for prime in primes
		return false if num % prime == 0
	return true

currNum = 1
while primes.length < 10001
	currNum += 2
	if isPrime currNum
		primes.push currNum
		console.log currNum