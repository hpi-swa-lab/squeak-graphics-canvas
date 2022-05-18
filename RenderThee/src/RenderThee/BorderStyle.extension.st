Extension { #name : #BorderStyle }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 5/13/2022 16:35'
}
BorderStyle >> isTransparent [

	self width > 0 ifFalse: [^ true].
	^ self color isTransparent
]
