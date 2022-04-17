Extension { #name : #ColorMappingCanvas }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 1/27/2022 16:37'
}
ColorMappingCanvas >> infiniteFillRectangle: aRectangle fillStyle: aFillStyle [

	myCanvas
		infiniteFillRectangle: aRectangle
		fillStyle: (self mapFillStyle: aFillStyle).
]
