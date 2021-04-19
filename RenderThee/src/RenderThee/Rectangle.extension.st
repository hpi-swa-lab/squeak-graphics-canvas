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

{
	#category : #'*RenderThee-Demo',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
Rectangle >> randomPoint [

	^ (origin x to: corner x) atRandom @ (origin y to: corner y) atRandom
]
