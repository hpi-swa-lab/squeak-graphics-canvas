Class {
	#name : #RtPixelCountingCanvas,
	#superclass : #RtWrapperCanvas,
	#instVars : [
		'measurements',
		'simulationForm',
		'referenceForm'
	],
	#category : #'RenderThee-Core'
}

{
	#category : #'code generation',
	#'squeak_changestamp' : 'stlu 1/26/2022 13:32'
}
RtPixelCountingCanvas class >> generate [
"
self generate.
"
	self superclass selectorsDo: [:sel |
		(self superclass isSelectorOverride: sel) ifTrue: [
			| signature source |
			signature := (self superclass sourceCodeAt: sel) asString lines first.
			source := '{1}

	self selectorCalled: {2}.
	^ super {1}' format: { signature. sel storeString }.
			self
				compile: source
				classified: (self superclass organization categoryOfElement: sel)]].
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 3/23/2022 18:35'
}
RtPixelCountingCanvas >> count: pixelCount [

	measurements add: {
		thisContext asMessage.
		pixelCount }.
]

{
	#category : #reporting,
	#'squeak_changestamp' : 'stlu 3/24/2022 17:50'
}
RtPixelCountingCanvas >> countPrimitiveTypes [

	| counts |
	counts := Dictionary new.
	measurements do: [:measurement |
		SelectorToTypeTable at: measurement first selector ifPresent: [:type |
			counts
				at: type
				ifPresent: [:count | counts at: type put: count + 1]
				ifAbsentPut: [1]]].
	^ counts
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 3/23/2022 18:34'
}
RtPixelCountingCanvas >> countRectangle: aRectangle [

	measurements add: {
		thisContext asMessage.
		(aRectangle intersect: wrappedCanvas clipRect) area }.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:43'
}
RtPixelCountingCanvas >> drawImage: aForm at: aPoint [

	self countRectangle: (aPoint extent: aForm extent).
	^ super drawImage: aForm at: aPoint
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:43'
}
RtPixelCountingCanvas >> drawImage: aForm at: aPoint sourceRect: sourceRect [

	self countRectangle: (aPoint extent: sourceRect extent).
	^ super drawImage: aForm at: aPoint sourceRect: sourceRect
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:24'
}
RtPixelCountingCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	self count: self simulateChangedPixels.
	^ super drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:24'
}
RtPixelCountingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	self count: self simulateChangedPixels.
	^ super drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:24'
}
RtPixelCountingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	self count: self simulateChangedPixels.
	^ super drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 20:38'
}
RtPixelCountingCanvas >> drawString: s at: pt [

	self countRectangle: (pt extent: (self extentOfString: s range: nil font: nil)).
	^ super drawString: s at: pt
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 20:38'
}
RtPixelCountingCanvas >> drawString: s at: pt font: aFont color: aColor [

	self countRectangle: (pt extent: (self extentOfString: s range: nil font: aFont)).
	^ super drawString: s at: pt font: aFont color: aColor
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 20:37'
}
RtPixelCountingCanvas >> drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor [

	self countRectangle: (pt extent: (self extentOfString: s range: (firstIndex to: lastIndex) font: font)).
	^ super drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/24/2022 10:49'
}
RtPixelCountingCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [ 

	| stringExtent |
	stringExtent := self extentOfString: s range: (firstIndex to: lastIndex) font: fontOrNil.
	self countRectangle: (boundsRect origin extent: (stringExtent min: boundsRect extent)).
	^ super drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c 
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/24/2022 10:59'
}
RtPixelCountingCanvas >> drawString: s in: boundsRect [

	| stringExtent |
	stringExtent := self extentOfString: s range: nil font: nil.
	self countRectangle: (boundsRect origin extent: (stringExtent min: boundsRect extent)).
	^ super drawString: s in: boundsRect
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/24/2022 10:59'
}
RtPixelCountingCanvas >> drawString: s in: boundsRect font: fontOrNil color: c [

	| stringExtent |
	stringExtent := self extentOfString: s range: nil font: fontOrNil.
	self countRectangle: (boundsRect origin extent: (stringExtent min: boundsRect extent)).
	^ super drawString: s in: boundsRect font: fontOrNil color: c
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 3/23/2022 20:38'
}
RtPixelCountingCanvas >> extentOfString: aString range: anIntervalOrNil font: aFontOrNil [

	| font interval |
	font := aFontOrNil ifNil: [TextStyle defaultFont].
	interval := anIntervalOrNil ifNil: [1 to: aString size].
	^ (font widthOfString: aString from: interval start to: interval stop) @ font height
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 18:36'
}
RtPixelCountingCanvas >> fillColor: aColor [

	self count: self extent area.
	^ super fillColor: aColor
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:25'
}
RtPixelCountingCanvas >> fillOval: r color: c [

	self count: self simulateChangedPixels.
	^ super fillOval: r color: c
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:25'
}
RtPixelCountingCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [ 

	self count: self simulateChangedPixels.
	^ super fillOval: r color: c borderWidth: borderWidth borderColor: borderColor 
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:25'
}
RtPixelCountingCanvas >> fillOval: aRectangle fillStyle: aFillStyle [

	self count: self simulateChangedPixels.
	^ super fillOval: aRectangle fillStyle: aFillStyle
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:25'
}
RtPixelCountingCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	self count: self simulateChangedPixels.
	^ super fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:25'
}
RtPixelCountingCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	self count: self simulateChangedPixels.
	^ super fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:23'
}
RtPixelCountingCanvas >> fillRectangle: r color: c [

	self count: self simulateChangedPixels.
	^ super fillRectangle: r color: c
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:23'
}
RtPixelCountingCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	self count: self simulateChangedPixels.
	^ super fillRectangle: aRectangle fillStyle: aFillStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:23'
}
RtPixelCountingCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [ 

	self count: self simulateChangedPixels.
	^ super fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle 
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:23'
}
RtPixelCountingCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle [

	self count: self simulateChangedPixels.
	^ super fillRoundRect: aRectangle radius: radius fillStyle: fillStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:23'
}
RtPixelCountingCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle [

	self count: self simulateChangedPixels.
	^ super fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:23'
}
RtPixelCountingCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	self count: self simulateChangedPixels.
	^ super frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:24'
}
RtPixelCountingCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor [

	self count: self simulateChangedPixels.
	^ super frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:24'
}
RtPixelCountingCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	self count: self simulateChangedPixels.
	^ super frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:24'
}
RtPixelCountingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle [ 

	self count: self simulateChangedPixels.
	^ super frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle 
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:24'
}
RtPixelCountingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [ 

	self count: self simulateChangedPixels.
	^ super frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc 
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:25'
}
RtPixelCountingCanvas >> frameOval: r color: c [

	self count: self simulateChangedPixels.
	^ super frameOval: r color: c
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:25'
}
RtPixelCountingCanvas >> frameOval: r width: w color: c [

	self count: self simulateChangedPixels.
	^ super frameOval: r width: w color: c
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:24'
}
RtPixelCountingCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	self count: self simulateChangedPixels.
	^ super frameRectangle: aRectangle borderStyle: aBorderStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:24'
}
RtPixelCountingCanvas >> frameRectangle: r color: c [

	self count: self simulateChangedPixels.
	^ super frameRectangle: r color: c
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:24'
}
RtPixelCountingCanvas >> frameRectangle: r width: w color: c [

	self count: self simulateChangedPixels.
	^ super frameRectangle: r width: w color: c
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:23'
}
RtPixelCountingCanvas >> frameRoundRect: aRectangle radius: radius borderStyle: borderStyle [

	self count: self simulateChangedPixels.
	^ super frameRoundRect: aRectangle radius: radius borderStyle: borderStyle
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:23'
}
RtPixelCountingCanvas >> frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor [

	self count: self simulateChangedPixels.
	^ super frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:48'
}
RtPixelCountingCanvas >> image: aForm at: aPoint [

	self countRectangle: (aPoint extent: aForm extent).
	^ super image: aForm at: aPoint
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:48'
}
RtPixelCountingCanvas >> image: aForm at: aPoint rule: combinationRule [

	self countRectangle: (aPoint extent: aForm extent).
	^ super image: aForm at: aPoint rule: combinationRule
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:43'
}
RtPixelCountingCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	self countRectangle: (aPoint extent: sourceRect extent).
	^ super image: aForm at: aPoint sourceRect: sourceRect rule: rule
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:44'
}
RtPixelCountingCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha [

	self countRectangle: (aPoint extent: sourceRect extent).
	^ super image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:48'
}
RtPixelCountingCanvas >> imageWithOpaqueWhite: aForm at: aPoint [

	self countRectangle: (aPoint extent: aForm extent).
	^ super imageWithOpaqueWhite: aForm at: aPoint
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/24/2022 17:29'
}
RtPixelCountingCanvas >> initialize [

	super initialize.
	measurements := OrderedCollection new.
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 1/26/2022 13:32'
}
RtPixelCountingCanvas >> line: pt1 to: pt2 brushForm: brush [

	self selectorCalled: #line:to:brushForm:.
	^ super line: pt1 to: pt2 brushForm: brush
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 18:41'
}
RtPixelCountingCanvas >> line: pt1 to: pt2 color: c [

	self count: ((pt1 dist: pt2) + 2) ceiling. "rough estimation"
	^ super line: pt1 to: pt2 color: c
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 18:42'
}
RtPixelCountingCanvas >> line: pt1 to: pt2 width: w color: c [ 

	self count: ((pt1 dist: pt2) + w + w *  w) ceiling. "rough estimation"
	^ super line: pt1 to: pt2 width: w color: c 
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 18:42'
}
RtPixelCountingCanvas >> line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset [

	self count: ((pt1 dist: pt2) + width + width *  width) ceiling. "rough estimation"
	^ super line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 18:42'
}
RtPixelCountingCanvas >> line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 [ 

	self count: ((pt1 dist: pt2) + w1 + w1 *  w1) ceiling. "rough estimation"
	^ super line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/24/2022 17:59'
}
RtPixelCountingCanvas >> measurements [

	^ measurements
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:44'
}
RtPixelCountingCanvas >> paintImage: aForm at: aPoint [

	self countRectangle: (aPoint extent: aForm extent).
	^ super paintImage: aForm at: aPoint
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:44'
}
RtPixelCountingCanvas >> paintImage: aForm at: aPoint sourceRect: sourceRect [

	self countRectangle: (aPoint extent: sourceRect extent).
	^ super paintImage: aForm at: aPoint sourceRect: sourceRect
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/24/2022 17:56'
}
RtPixelCountingCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	| start end pixels |
	start := measurements size + 1.
	self paragraph2: aParagraph bounds: aRectangle color: aColor.
	end := measurements size.
	pixels := 0.
	measurements from: start to: end do: [:measurement |
		self assert: (SelectorToTypeTable at: measurement first selector) = #string.
		pixels := pixels + measurement second].
	measurements removeLast: end - start + 1.
	measurements add: {
		thisContext in: [:ctxt |
			Message selector: ctxt selector arguments: ctxt arguments].
		pixels.
		end - start + 1 }.
]

{
	#category : #reporting,
	#'squeak_changestamp' : 'stlu 3/24/2022 17:50'
}
RtPixelCountingCanvas >> pixelsByPrimitiveType [

	| pixels |
	pixels := Dictionary new.
	measurements do: [:measurement |
		| count |
		count := measurement second.
		SelectorToTypeTable at: measurement first selector ifPresent: [:type |
			pixels
				at: type
				ifPresent: [:t | pixels at: type put: count + t]
				ifAbsentPut: [count]]].
	^ pixels
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:49'
}
RtPixelCountingCanvas >> point: p color: c [

	self count: 1.
	^ super point: p color: c
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 3/24/2022 17:19'
}
RtPixelCountingCanvas >> simulateChangedPixels [

	| msg formCanvas canvas white |
	msg := thisContext asMessage.
	formCanvas := FormCanvas on: simulationForm.
	formCanvas setOrigin: self origin clipRect: self clipRect.
	formCanvas fillColor: (white := Color white).
	canvas := RtOverdrawCanvas on: formCanvas.
	msg sendTo: canvas.
	^ simulationForm countDifferingPixels: referenceForm
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:45'
}
RtPixelCountingCanvas >> stencil: stencilForm at: aPoint color: aColor [

	self countRectangle: (aPoint extent: stencilForm extent).
	^ super stencil: stencilForm at: aPoint color: aColor
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:44'
}
RtPixelCountingCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	self countRectangle: (aPoint extent: sourceRect extent).
	^ super stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor
]

{
	#category : #reporting,
	#'squeak_changestamp' : 'stlu 3/24/2022 18:00'
}
RtPixelCountingCanvas >> stringsInParagraphs [

	^ measurements inject: 0 into: [:sum :each |
		each size = 3
			ifFalse: [sum]
			ifTrue: [sum + each third]]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/23/2022 20:28'
}
RtPixelCountingCanvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock [

	self countRectangle: aClipRect.
	^ super transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/23/2022 20:28'
}
RtPixelCountingCanvas >> transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize [

	self countRectangle: aClipRect.
	^ super transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/23/2022 20:29'
}
RtPixelCountingCanvas >> transformBy: aDisplayTransform during: aBlock [

	self countRectangle: wrappedCanvas clipRect.
	^ super transformBy: aDisplayTransform during: aBlock
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:45'
}
RtPixelCountingCanvas >> translucentImage: aForm at: aPoint [

	self countRectangle: (aPoint extent: aForm extent).
	^ super translucentImage: aForm at: aPoint
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:44'
}
RtPixelCountingCanvas >> translucentImage: aForm at: aPoint sourceRect: sourceRect [ 

	self countRectangle: (aPoint extent: sourceRect extent).
	^ super translucentImage: aForm at: aPoint sourceRect: sourceRect 
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:47'
}
RtPixelCountingCanvas >> warpImage: aForm transform: aTransform [

	self countRectangle: (aTransform localBoundsToGlobal: (0@0 extent: aForm extent)).
	^ super warpImage: aForm transform: aTransform
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:48'
}
RtPixelCountingCanvas >> warpImage: aForm transform: aTransform at: extraOffset [

	self countRectangle: (aTransform localBoundsToGlobal: (0@0 extent: aForm extent)).
	^ super warpImage: aForm transform: aTransform at: extraOffset
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 18:48'
}
RtPixelCountingCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	self countRectangle: (aTransform localBoundsToGlobal: (0@0 extent: aForm extent)).
	^ super warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/24/2022 17:32'
}
RtPixelCountingCanvas >> wrappedCanvas: aCanvas [

	super wrappedCanvas: aCanvas.
	referenceForm := Form extent: self extent depth: self depth.
	referenceForm getCanvas fillColor: Color white.
	simulationForm := referenceForm copy.
]
