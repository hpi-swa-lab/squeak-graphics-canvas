features
feature: featureTag

	currentFeatureClass := self generateFeatureClass: featureTag.
	self compileVersionMethods: (featureTag attributeAt: #number).
	
	featureTag elementsDo: [:elem |
		(self isActiveProfile: (elem attributeAt: #profile)) ifTrue: [
			elem tag = #require ifTrue: [self require: elem].
			elem tag = #remove ifTrue: [self remove: elem]]]