Extension { #name : #Rectangle }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Rectangle class >> infinite [

	^ self
		origin: -1e10 asPoint
		corner: 1e10 asPoint
]
