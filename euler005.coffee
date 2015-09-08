'use strict'
# Finds the lowest number which is a multiple of all numbers from 1 to upperLimit
upperLimit = 20

isFactor = (factor, num) ->
	return num % factor == 0

primeFactorsOf = (num) ->
	primeFactors = []
	x = 2
	while num != 1
		if isFactor x, num
			primeFactors.push x
			num /= x
			x = 2
		else 
			x++
	return primeFactors

adjListToAdjMatrix = (adjList) ->
	adjMtx = (0 for [0..upperLimit])
	for num in adjList
		adjMtx[num]++
	return adjMtx

isSubset = (subset, superset) ->
	# console.log subset
	# console.log superset
	for i in [1..upperLimit]
		if subset[i] > superset[i]
			return false
	return  true

unionOf = (mtxA, mtxB) ->
	sumMtx = [0]
	for i in [1..upperLimit]
		sumMtx[i] = if mtxA[i] > mtxB[i] then mtxA[i] else mtxB[i]

	return sumMtx

contains = (num, arr) ->
	for i in arr
		return true if num == i
	return false

factorsMtx = (0 for [0..upperLimit])
for num in [upperLimit..2]
	if factorsMtx[num] == 0 #num is not a factor
		numFactorsMatrix = adjListToAdjMatrix primeFactorsOf num
		if !isSubset numFactorsMatrix, factorsMtx
			factorsMtx = unionOf numFactorsMatrix, factorsMtx
			
console.log factorsMtx
result = 1
for i in [2..20]
	while factorsMtx[i] > 0
		result *= i
		factorsMtx[i]--


console.log result

