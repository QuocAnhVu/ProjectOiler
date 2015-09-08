ceiling = 1000

for a in [1..ceiling / 3]
	for b in [a..ceiling / 2]
		c =  Math.sqrt(a * a + b * b)
		if c % 1 == 0 and a + b + c == ceiling
			console.log 'a: ' + a
			console.log 'b: ' + b
			console.log 'c: ' + c
			console.log 'prod: ' + a * b * c
			break