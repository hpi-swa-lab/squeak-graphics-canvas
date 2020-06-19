instance creation
generate: xml api: aString

	^ (self xml: xml)
		generateApi: aString;
		yourself