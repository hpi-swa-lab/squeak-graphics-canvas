accessing
testSelectors

	^(self selectors asArray select: [ :each | 
		((self categoryForSelector: each) startsWith: 'test') and: [ each numArgs isZero ] ]) sort