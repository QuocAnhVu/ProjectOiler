divisorCount = (num) ->
	count = 2
	sqrtNum = Math.sqrt num
	if num == sqrtNum * sqrtNum
		count++
	for factor in [2..sqrtNum]
		if num % factor == 0
			count += 2
	return count

triangleNum = 1
counter = 1
while 500 >= divisorCount triangleNum
	counter++
	triangleNum += counter
	console.log counter
	
console.log triangleNum

