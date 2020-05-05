toolbuilder
newCanvasMorph

	| morph |
	morph := ThumbnailImageMorph new
				layoutFrame: LayoutFrame fullFrame;
				yourself.
	self when: #canvasChanged: evaluate: [:form | morph newImage: form].
	^ morph