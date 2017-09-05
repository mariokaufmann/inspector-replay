executing
executeOn: anObject

^ (anObject class compiler compile: 'tmp', String cr, code)
	valueWithReceiver: anObject arguments: Array new