as yet unclassified
findFeaturesApi: api version: version
	^ (registry elements select: [ :elem | elem tag = #feature and: [ api = (elem attributeAt: #api) ] and: [ version asNumber  >= ((elem attributeAt: #number) asNumber ) ] ]).