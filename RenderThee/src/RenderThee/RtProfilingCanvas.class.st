Class {
	#name : #RtProfilingCanvas,
	#superclass : #Canvas,
	#instVars : [
		'clipRect',
		'transform',
		'primitiveCounts',
		'colors'
	],
	#category : #'RenderThee-Canvases'
}

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 5/3/2022 17:08'
}
RtProfilingCanvas >> clipBy: aRectangle during: aBlock [

	| previousClipRect |
	(aRectangle containsRect: clipRect) ifTrue: [^ aBlock value: self].
	
	primitiveCounts add: #clip.
	
	previousClipRect := clipRect.
	clipRect := clipRect intersect: aRectangle.
	[^ aBlock value: self] ensure: [
		clipRect := previousClipRect].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/3/2022 17:06'
}
RtProfilingCanvas >> clipRect [

	^ clipRect
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 5/3/2022 16:29'
}
RtProfilingCanvas >> drawImage: aForm at: aPoint sourceRect: sourceRect [

	((aPoint extent: sourceRect extent) intersects: clipRect) ifFalse: [^ self].
	primitiveCounts add: #drawImage.
]

{
	#category : #'drawing-morphs',
	#'squeak_changestamp' : 'stlu 5/3/2022 16:26'
}
RtProfilingCanvas >> drawMorph: aMorph [

	primitiveCounts add: #drawMorph.
	super drawMorph: aMorph.
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 5/3/2022 17:33'
}
RtProfilingCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	vertices size <= 2 ifTrue: [^ self].
	((Rectangle encompassing: vertices) intersects: clipRect) ifFalse: [^ self].
	aColor isTransparent ifFalse: [
		primitiveCounts add: #fillPolygon.
		colors add: aColor].
	(bw > 0 and: [bc isTransparent not]) ifTrue: [
		primitiveCounts add: #framePolygon.
		colors add: bc].
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 5/3/2022 17:35'
}
RtProfilingCanvas >> drawString: aString from: firstIndex to: lastIndex at: aPoint font: fontOrNil color: aColor [

	| font visibleLeft visibleRight x |
	aColor isTransparent ifTrue: [^ self].
	font := fontOrNil ifNil: [TextStyle defaultFont].
	aPoint y >= clipRect bottom ifTrue: [^ self].
	aPoint y + font height <= clipRect top ifTrue: [^ self].
	visibleLeft := clipRect left.
	visibleRight := clipRect right.
	x := visibleLeft.
	x >= visibleRight ifTrue: [^ self].
	primitiveCounts add: #string.
	colors add: aColor.
	firstIndex to: lastIndex do: [:charIndex |
		| char width |
		char := aString at: charIndex.
		width := font widthOf: char.
		(x := x + width) > visibleLeft ifTrue: [
			primitiveCounts add: #char].
		x >= visibleRight ifTrue: [^ self]].
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 5/3/2022 16:50'
}
RtProfilingCanvas >> drawString: aString from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: aColor [

	self clipBy: boundsRect during: [:c |
		self
			drawString: aString
			from: firstIndex
			to: lastIndex
			at: boundsRect origin
			font: fontOrNil
			color: aColor].
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 5/3/2022 17:33'
}
RtProfilingCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [

	(r intersects: clipRect) ifFalse: [^ self].
	c isTransparent ifFalse: [
		primitiveCounts add: #fillOval.
		colors add: c].
	(borderWidth > 0 and: [borderColor isTransparent not]) ifTrue: [
		primitiveCounts add: #frameOval.
		colors add: borderColor].
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/3/2022 17:33'
}
RtProfilingCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle [

	radius isZero ifTrue: [
		^ self fillRectangle: aRectangle fillStyle: fillStyle].
	(aRectangle intersects: clipRect) ifFalse: [^ self].
	fillStyle isTransparent ifTrue: [^ self].
	
	primitiveCounts add: #fillRoundedRectangle.
	colors add: fillStyle asColor.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/3/2022 17:34'
}
RtProfilingCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	(r intersects: clipRect) ifFalse: [^ self].
	fillColor isTransparent ifFalse: [
		primitiveCounts add: #fillRectangle.
		colors add: fillColor].
	(borderWidth > 0 and: [borderColor isTransparent not]) ifTrue: [
		primitiveCounts add: #frameRectangle.
		colors add: borderColor].
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/3/2022 16:46'
}
RtProfilingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [

	self frameRoundRect: aRectangle radius: cornerRadius width: bw color: bc.
	self fillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/3/2022 17:34'
}
RtProfilingCanvas >> frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor [

	radius isZero ifTrue: [
		^ self frameRectangle: aRectangle width: borderWidth color: borderColor].
	(aRectangle intersects: clipRect) ifFalse: [^ self].
	
	borderColor isTransparent ifTrue: [^ self].
	borderWidth > 0 ifFalse: [^ self].
	
	primitiveCounts add: #frameRoundedRectangle.
	colors add: borderColor.
]

{
	#category : #'drawing-morphs',
	#'squeak_changestamp' : 'stlu 5/3/2022 16:27'
}
RtProfilingCanvas >> fullDrawMorph: aMorph [

	primitiveCounts add: #fullDrawMorph.
	super fullDrawMorph: aMorph.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 5/3/2022 16:33'
}
RtProfilingCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	primitiveCounts add: #image , rule.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/3/2022 17:32'
}
RtProfilingCanvas >> initialize [

	super initialize.
	transform := MorphicTransform new.
	clipRect := Rectangle infinite.
	primitiveCounts := Bag new.
	colors := Bag new.
]

{
	#category : #'drawing-lines',
	#'squeak_changestamp' : 'stlu 5/3/2022 17:33'
}
RtProfilingCanvas >> line: pt1 to: pt2 width: w color: c [

	primitiveCounts add: #line.
	colors add: c.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/3/2022 17:06'
}
RtProfilingCanvas >> origin [

	^ (transform localPointToGlobal: 0@0) truncated
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 5/3/2022 16:29'
}
RtProfilingCanvas >> paintImage: aForm at: aPoint sourceRect: sourceRect [

	((aPoint extent: sourceRect extent) intersects: clipRect) ifFalse: [^ self].
	primitiveCounts add: #paintImage.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 5/3/2022 16:25'
}
RtProfilingCanvas >> paragraph: paragraph bounds: bounds color: c [

	primitiveCounts add: #paragraph.
	self paragraph2: paragraph bounds: bounds color: c.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/3/2022 17:18'
}
RtProfilingCanvas >> primitiveCounts [

	^ primitiveCounts
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/3/2022 17:06'
}
RtProfilingCanvas >> transform [

	^ transform
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 5/3/2022 17:18'
}
RtProfilingCanvas >> transformBy: aTransform during: aBlock [

	| transformedClip previousClipRect previousTransform |
	aTransform isIdentity ifTrue: [^ aBlock value: self].
	aTransform isPureTranslation ifTrue: [
		^ self translateBy: (aTransform localPointToGlobal: 0@0) truncated during: aBlock].
	
	primitiveCounts add: #transform.
	transformedClip := (aTransform globalBoundsToLocal: clipRect) expanded.
	
	previousClipRect := clipRect.
	previousTransform := transform.
	transform := transform composedWithLocal: aTransform.
	clipRect := transformedClip.
	
	[^ aBlock value: self] ensure: [
		transform := previousTransform.
		clipRect := previousClipRect].
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 5/3/2022 17:10'
}
RtProfilingCanvas >> translateBy: delta during: aBlock [

	| transformedClip previousClipRect previousTransform |
	delta isZero ifTrue: [^ aBlock value: self].
	
	primitiveCounts add: #translate.
	transformedClip := clipRect translateBy: delta negated.
	
	previousClipRect := clipRect.
	previousTransform := transform.
	transform := transform composedWithLocal: (MorphicTransform offset: delta negated).
	clipRect := transformedClip.
	
	[^ aBlock value: self] ensure: [
		transform := previousTransform.
		clipRect := previousClipRect].
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 5/3/2022 16:29'
}
RtProfilingCanvas >> translucentImage: aForm at: aPoint sourceRect: sourceRect [

	((aPoint extent: sourceRect extent) intersects: clipRect) ifFalse: [^ self].
	primitiveCounts add: #translucentImage.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 5/3/2022 16:33'
}
RtProfilingCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	primitiveCounts add: #warpImage.
]
