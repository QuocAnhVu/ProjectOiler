collatzLength = (num) ->
	length = 1
	while num > 1
		length++
		if num % 2 == 0
			num = num / 2
		else # if num % 2 == 1
			num = num * 3 + 1
	return length

limit = 1000000 - 1
maxLength = 0
maxCollatz = 0

[1..limit].reduce (max, curr) -> 
	console.log Math.floor(curr / limit * 10000) / 100 + '%'
	currLength = collatzLength curr
	if maxLength <= currLength
		maxLength = currLength
		maxCollatz = curr
console.log maxLength
console.log maxCollatz