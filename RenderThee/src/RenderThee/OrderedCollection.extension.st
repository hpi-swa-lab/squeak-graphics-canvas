Extension { #name : #OrderedCollection }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 4/22/2022 16:13'
}
OrderedCollection >> addressAt: anInteger [

	| index |
	1 <= anInteger ifFalse: [ self errorNoSuchElement ].
	(index := anInteger + firstIndex - 1) <= lastIndex ifFalse: [ self errorNoSuchElement ].
	^ array addressAt: index
]
