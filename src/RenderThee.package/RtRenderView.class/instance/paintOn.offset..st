painting
paintOn: aCanvas offset: aPoint

	child ifNotNil: [aCanvas paintChild: child offset: aPoint]