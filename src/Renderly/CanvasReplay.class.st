Class {
	#name : #CanvasReplay,
	#superclass : #Model,
	#instVars : [
		'rootLayer',
		'canvasMorph'
	],
	#category : 'Renderly-Record'
}

{ #category : #toolbuilder }
CanvasReplay >> buildWith: builder [

	| canvasSpec treeSpec windowSpec |
	canvasSpec := builder pluggablePanelSpec new
		model: self;
		children: #panelChildren;
		yourself.
	
	treeSpec := builder pluggableTreeSpec new
		model: self;
		yourself.
	
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 0.3@1) -> [treeSpec].
		(0.3@0 corner: 1@1) -> [canvasSpec].
	}.
	
	^ builder build: windowSpec
]

{ #category : #toolbuilder }
CanvasReplay >> canvasChanged [

	| canvas |
	canvas := FormCanvas extent: 100@100.
	canvas fillColor: Color random.
	self triggerEvent: #canvasChanged: with: canvas form
]

{ #category : #toolbuilder }
CanvasReplay >> newCanvasMorph [

	| morph |
	morph := ThumbnailImageMorph new
				layoutFrame: LayoutFrame fullFrame;
				yourself.
	self when: #canvasChanged: evaluate: [:form | morph newImage: form].
	^ morph
]

{ #category : #toolbuilder }
CanvasReplay >> panelChildren [

	^ { self newCanvasMorph }
]
