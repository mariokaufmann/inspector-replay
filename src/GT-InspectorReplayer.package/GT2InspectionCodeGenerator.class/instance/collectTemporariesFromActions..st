accessing
collectTemporariesFromActions: aCollection
	^ aCollection inject: OrderedCollection new into: [ :list :each | list addAll: each body temporaries ]