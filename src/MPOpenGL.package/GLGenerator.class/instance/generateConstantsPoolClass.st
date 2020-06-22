constants pool
generateConstantsPoolClass

	| classVarNames className |
	className := (self classNamePrefix , 'Constants') asSymbol.
	classVarNames := String streamContents: [:stream |
		definedEnums sorted
			do: [:enum | stream nextPutAll: enum]
			separatedBy: [stream space]].
	^ SharedPool
		subclass: className
		instanceVariableNames: ''
		classVariableNames: classVarNames
		poolDictionaries: ''
		category: 'MPOpenGL-Constants'