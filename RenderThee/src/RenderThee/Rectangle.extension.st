Extension { #name : #Rectangle }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 8/26/2021 12:27'
}
Rectangle class >> infinite [

	^ self
		origin: SmallInteger minVal asPoint
		corner: SmallInteger maxVal asPoint
]

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 5/20/2022 14:39'
}
Rectangle >> setLeft: leftNum top: topNum right: rightNum bottom: botNum [

	origin := leftNum@topNum.
	corner := rightNum@botNum.
]
