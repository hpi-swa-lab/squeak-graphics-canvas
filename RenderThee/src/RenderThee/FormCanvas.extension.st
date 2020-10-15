Extension { #name : #FormCanvas }

{ #category : #'*RenderThee-LayerTree' }
FormCanvas >> imageStoreClass [

	^ RtFormStore
]

{ #category : #'*RenderThee-LayerTree' }
FormCanvas >> paintImageStore: anImageStore sourceRect: aRectangle [

	self
		translucentImage: anImageStore form
		at: 0@0
		sourceRect: aRectangle
]

{ #category : #'*RenderThee-override' }
FormCanvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize [
	"Note: This method has been originally copied from TransformationMorph."
	| innerRect patchRect sourceQuad warp start subCanvas |
	aDisplayTransform isPureTranslation ifTrue: [
		^ self
			translateBy: (aDisplayTransform localPointToGlobal: 0@0) truncated
			clippingTo: aClipRect
			during: aBlock].
	"Prepare an appropriate warp from patch to innerRect"
	innerRect := aClipRect.
	patchRect := (aDisplayTransform globalBoundsToLocal: innerRect) truncated.
	sourceQuad := (aDisplayTransform sourceQuadFor: innerRect)
					collect: [:p | p - patchRect topLeft].
	warp := self warpFrom: sourceQuad toRect: innerRect.
	warp cellSize: cellSize.

	"Render the submorphs visible in the clipping rectangle, as patchForm"
	start := (self depth = 1 and: [self isShadowDrawing not])
		"If this is true B&W, then we need a first pass for erasure."
		ifTrue: [1] ifFalse: [2].
	start to: 2 do:
		[:i | "If i=1 we first make a shadow and erase it for opaque whites in B&W"
		subCanvas := self class extent: patchRect extent depth: self depth.
		i=1	ifTrue: [subCanvas shadowColor: Color black.
					warp combinationRule: Form erase]
			ifFalse: [self isShadowDrawing ifTrue:
					[subCanvas shadowColor: self shadowColor].
				warp combinationRule: (self depth = 32
					ifTrue: [Form blendAlphaScaled]
					ifFalse: [Form paint])].
		subCanvas
			translateBy: patchRect topLeft negated
			during: aBlock.
		warp sourceForm: subCanvas form; warpBits.
		warp sourceForm: nil.  subCanvas := nil "release space for next loop"]

]

{ #category : #'*RenderThee' }
FormCanvas >> transformBy: aDisplayTransform during: aBlock [

	self
		transformBy: aDisplayTransform
		clippingTo: self clipRect
		during: aBlock smoothing: 1
]

{ #category : #'*RenderThee-override' }
FormCanvas >> translateBy: aPoint clippingTo: aRectangle during: aBlock [

	aBlock value: (self copyOffset:aPoint clipRect: aRectangle)
]
