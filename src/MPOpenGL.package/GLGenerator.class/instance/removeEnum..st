features
removeEnum: name

	definedEnums remove: name ifAbsent: [^ self].
	currentFeatureClass
		compile: (self generateDeprecationMethod: name)
		classified: 'constants - deprecated'