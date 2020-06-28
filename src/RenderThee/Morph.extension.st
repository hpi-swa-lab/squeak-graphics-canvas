Extension { #name : #Morph }

{ #category : #'*RenderThee' }
Morph >> groupLayer [

	^ self valueOfProperty: #groupLayer
]

{ #category : #'*RenderThee' }
Morph >> groupLayer: aGroupLayer [

	^ self
		setProperty: #groupLayer
		toValue: aGroupLayer
]

{ #category : #'*RenderThee-override' }
Morph >> invalidRect: damageRect [

	self markNeedsRedraw.
	^self invalidRect: damageRect from: self
]

{ #category : #'*RenderThee-override' }
Morph >> invalidRect: aRectangle from: aMorph [
	| damageRect |
	self visible ifFalse: [ ^self ].
	aRectangle hasPositiveExtent ifFalse: [ ^self ].
	damageRect := aRectangle.
	aMorph == self ifFalse:[
		"Clip to receiver's clipping bounds if the damage came from a child"
		self clipSubmorphs 
			ifTrue:[damageRect := aRectangle intersect: self clippingBounds]].
	owner ifNotNil: [owner invalidRect: damageRect from: self].
]

{ #category : #'*RenderThee' }
Morph >> isRepaintBoundary [

	^ false
]

{ #category : #'*RenderThee' }
Morph >> markNeedsRedraw [

	"assumption (for now): own repaint boundary == own texture"
	self isRepaintBoundary
		ifTrue: [ActiveWorld morphsToRedraw add: self]
		ifFalse: [self owner ifNotNil: [:o | o markNeedsRedraw]]
]

{ #category : #'*RenderThee' }
Morph >> morphsToRedraw [

	^ (self valueOfProperty: #morphsToRedraw) ifNil: [
		self morphsToRedraw: IdentitySet new]
]

{ #category : #'*RenderThee' }
Morph >> morphsToRedraw: aSet [

	self
		setProperty: #morphsToRedraw
		toValue: aSet.
	^ aSet
]

{ #category : #'*RenderThee' }
Morph >> updateLayer [

	self assert: self isRepaintBoundary.
	
	self groupLayer ifNotNil: [:layer | | rc |
		layer parent ifNil: [^ self].
		layer clear.
		layer bounds: (self bounds translateBy: layer parent bounds origin negated).
		
		rc := RtRecordingCanvas layer: layer.
		rc origin: self position.
		rc fullDraw: self.
		rc endDrawLayer.
		
		layer invalidateCache]
]

{ #category : #'*RenderThee' }
Morph >> updateLayerTree [
	"we have:
	- morphs to redraw
	- nun-current layer tree
	
	we want:
	- current layer tree"
	
	self morphsToRedraw do: [ :morph | morph updateLayer ].
	self morphsToRedraw: nil.
]
