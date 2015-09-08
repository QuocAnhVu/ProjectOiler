class ObjectA
	scream: () ->
		console.log 'ARGHGARBLRAGH!'

class ObjectB
	constructor: (@objectA) ->
	scream: () ->
		@objectA.scream()

a = new ObjectA()
a.scream()
b = new ObjectB(a)
b.scream()
console.log b