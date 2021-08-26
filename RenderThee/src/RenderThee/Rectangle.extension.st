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
