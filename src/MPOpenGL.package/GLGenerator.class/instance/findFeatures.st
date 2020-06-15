xml helpers
findFeatures
	^ (registry elements select: [ :elem | elem tag = #feature and: [ (elem attributeAt: #api) asUppercase = api ] ]).