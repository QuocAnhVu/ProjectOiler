isPalindrome = (num) -> 
	str = num.toString()
	return str == str.split('').reverse().join('');

maxOf = (arr) ->
	max = 0;
	for num in arr
		max = num if num > max
	return max

palindromes = []

for i in [999..100]
	for j in [999..100]
		palindromes.push i * j if isPalindrome i * j
		
console.log maxOf palindromes