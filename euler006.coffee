ceiling = 100

everything = [1..ceiling].reduce (a, b) -> a + b

totalSum = 0
for root in [1..ceiling]
	totalSum += root * (everything - root)

console.log totalSum