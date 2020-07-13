instance creation
fromHandle: aHandleOrInteger

	^ super fromHandle: (aHandleOrInteger isInteger
		ifTrue: [ExternalAddress fromInteger: aHandleOrInteger]
		ifFalse: [aHandleOrInteger])