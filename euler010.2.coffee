Array.prototype.contains = (k) ->
	for p in this
		return true if k == p
	return false

class PrimeFinder
	primesBelow: (limit) ->
	isPrime: (num) ->

class PrimeFinderIterative extends PrimeFinder
	constructor: () ->
		@primes = [2, 3]
		@highestSearched = 3
	primesBelow: (limit) ->
		while @highestSearched < limit
			console.log @highestSearched
			@highestSearched += 2
			if @_isPrime @highestSearched
				@primes.push @highestSearched
		return @primes
	isPrime: (num) -> 
		if num > @highestSearched
			@primesBelow num
		@primes.contains num
	_isPrime: (num) ->
		for prime in @primes
			return false if num % prime == 0
		return true

class PrimeFinderAtkinsSieve extends PrimeFinder
	constructor: () ->
		@results = [2, 3, 5]
		@sieve = []
		@sieveBase = 5
	primesBelow: (limit) ->
		index = 0
		remainder = (sieveBase + index) % 60
		switch remainder
			when @case1.contains remainder

			when @case2.contains remainder

			when @case3.contains remainder



run = (ceiling, primeFinder) ->
	primes = primeFinder.primesBelow ceiling
	result = primes.reduce (total, curr) -> total + curr
	return result

ceiling = 2000000
console.log run(ceiling, new PrimeFinderAtkinsSieve)