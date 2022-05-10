Extension { #name : #OrderedCollection }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 4/21/2022 10:29'
}
OrderedCollection >> addFirst: obj1 with: obj2 with: obj3 with: obj4 [
	"Add obj1, obj2, obj3 and obj4 to the beginning of the receiver (in that order)."
	firstIndex - 4 < 1 ifTrue: [ self makeRoomAtFirst ].
	array
		at: (firstIndex := firstIndex - 4) put: obj1;
		at: firstIndex + 1 put: obj2;
		at: firstIndex + 2 put: obj3;
		at: firstIndex + 3 put: obj4.
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 4/18/2022 18:05'
}
OrderedCollection >> addLast: obj1 with: obj2 with: obj3 with: obj4 [
	"Add obj1, obj2, obj3 and obj4 to the end of the receiver (in that order)."
	array size < (lastIndex + 4) ifTrue: [ self makeRoomAtLast ].
	array
		at: lastIndex + 1 put: obj1;
		at: lastIndex + 2 put: obj2;
		at: lastIndex + 3 put: obj3;
		at: (lastIndex := lastIndex + 4) put: obj4.
]

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
