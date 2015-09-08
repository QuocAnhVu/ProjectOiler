maxTrianglePath = module.exports = (err, data) ->
	console.err err if err
	triangle = data.toString()
		.split '\r\n' 
		.reverse()
		.map (row) -> 
			row.split ' ' 
				.map (str) -> parseInt str
	while triangle.length > 1
		currRow = triangle.shift()
		nextRow = triangle[0]
		for i in [0..nextRow.length - 1]
			pathA = nextRow[i] + currRow[i] 
			pathB = nextRow[i] + currRow[i+1]
			nextRow[i] = Math.max pathA, pathB
	console.log max = triangle[0][0]

fs = require 'fs'
fs.readFile './euler18.data.txt', maxTrianglePath
