features
requireEnum: name

	| methodSource |
	(definedEnums ifAbsentAdd: name) ifFalse: [^ self].
	methodSource := self generateEnumMethod: (enumTags at: name).
	currentFeatureClass
		compile: methodSource
		classified: 'constants'