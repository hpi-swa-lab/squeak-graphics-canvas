Class {
	#name : #ShPrimitiveHeader,
	#superclass : #Object,
	#instVars : [
		'bounds',
		'colorIndex',
		'radius'
	],
	#category : #'ShadingLanguage-Mockup'
}

{
	#category : #declaration,
	#'squeak_changestamp' : 'stlu 8/9/2021 15:22'
}
ShPrimitiveHeader >> declareMembers [

	bounds type: ShRectangle.
	colorIndex int.
	radius float.
]
