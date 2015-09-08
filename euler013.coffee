fs = require 'fs'

fs.readFile './euler13.data.txt', (err,data) ->
	console.error err if err
	result = data.toString()
		.split '\r\n'
		.map (bigNum) -> bigNum.substring 0, 12
		.map (string) -> parseInt string
		.reduce (total, curr) -> total + curr
	console.log Math.floor result / 100