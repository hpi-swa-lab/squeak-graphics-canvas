Class {
	#name : #RtBenchmarkingCanvas,
	#superclass : #RtWrapperCanvas,
	#instVars : [
		'measurements'
	],
	#category : #'RenderThee-Core'
}

{
	#category : #'code generation',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas class >> generate [
"
self generate.
"
	self superclass selectorsDo: [:sel |
		(self superclass isSelectorOverride: sel) ifTrue: [
			| signature source protocol |
			protocol := self superclass organization categoryOfElement: sel.
			((protocol beginsWith: 'drawing') and: [(protocol endsWith: 'support') not]) ifTrue: [
				signature := (self superclass sourceCodeAt: sel) asString lines first.
				source := '{1}

	^ self bench: [
		super {1}]' format: { signature }.
				self
					compile: source
					classified: protocol]]].
]

{
	#category : #private,
	#'squeak_changestamp' : 'stlu 3/23/2022 15:39'
}
RtBenchmarkingCanvas >> bench: aBlock [

	| msg startTime endTime result gcStart gcEnd |
	msg := thisContext asMessage.
	gcStart := (Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10).
	startTime := Time utcMicrosecondClock.
	result := aBlock value.
	endTime := Time utcMicrosecondClock.
	gcEnd := (Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10).
	measurements add: { msg. endTime - startTime - (gcEnd - gcStart) }.
	^ result
]

{
	#category : #reporting,
	#'squeak_changestamp' : 'stlu 3/23/2022 17:00'
}
RtBenchmarkingCanvas >> countPrimitiveTypes [

	| counts |
	counts := Dictionary new.
	measurements do: [:measurement |
		| msg type |
		msg :=  measurement first.
		type := SelectorToTypeTable at: msg selector.
		counts
			at: type
			ifPresent: [:count | counts at: type put: count + 1]
			ifAbsentPut: [1]].
	^ counts
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> drawImage: aForm at: aPoint [

	^ self bench: [
		super drawImage: aForm at: aPoint]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> drawImage: aForm at: aPoint sourceRect: sourceRect [

	^ self bench: [
		super drawImage: aForm at: aPoint sourceRect: sourceRect]
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	^ self bench: [
		super drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc]
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self bench: [
		super drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle]
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	^ self bench: [
		super drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc]
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> drawString: s at: pt [

	^ self bench: [
		super drawString: s at: pt]
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> drawString: s at: pt font: aFont color: aColor [

	^ self bench: [
		super drawString: s at: pt font: aFont color: aColor]
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor [

	^ self bench: [
		super drawString: s from: firstIndex to: lastIndex at: pt font: font color: aColor]
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [ 

	^ self bench: [
		super drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c ]
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> drawString: s in: boundsRect [

	^ self bench: [
		super drawString: s in: boundsRect]
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> drawString: s in: boundsRect font: fontOrNil color: c [

	^ self bench: [
		super drawString: s in: boundsRect font: fontOrNil color: c]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> fillColor: aColor [

	^ self bench: [
		super fillColor: aColor]
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> fillOval: r color: c [

	^ self bench: [
		super fillOval: r color: c]
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [ 

	^ self bench: [
		super fillOval: r color: c borderWidth: borderWidth borderColor: borderColor ]
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> fillOval: aRectangle fillStyle: aFillStyle [

	^ self bench: [
		super fillOval: aRectangle fillStyle: aFillStyle]
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self bench: [
		super fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle]
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	^ self bench: [
		super fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> fillRectangle: r color: c [

	^ self bench: [
		super fillRectangle: r color: c]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	^ self bench: [
		super fillRectangle: aRectangle fillStyle: aFillStyle]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [ 

	^ self bench: [
		super fillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle ]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle [

	^ self bench: [
		super fillRoundRect: aRectangle radius: radius fillStyle: fillStyle]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle [

	^ self bench: [
		super fillRoundRect: aRectangle radius: radius fillStyle: fillStyle borderStyle: borderStyle]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	^ self bench: [
		super frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor [

	^ self bench: [
		super frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth topLeftColor: topLeftColor bottomRightColor: bottomRightColor]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self bench: [
		super frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle [ 

	^ self bench: [
		super frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderStyle: borderStyle ]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [ 

	^ self bench: [
		super frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc ]
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> frameOval: r color: c [

	^ self bench: [
		super frameOval: r color: c]
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> frameOval: r width: w color: c [

	^ self bench: [
		super frameOval: r width: w color: c]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	^ self bench: [
		super frameRectangle: aRectangle borderStyle: aBorderStyle]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> frameRectangle: r color: c [

	^ self bench: [
		super frameRectangle: r color: c]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> frameRectangle: r width: w color: c [

	^ self bench: [
		super frameRectangle: r width: w color: c]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> frameRoundRect: aRectangle radius: radius borderStyle: borderStyle [

	^ self bench: [
		super frameRoundRect: aRectangle radius: radius borderStyle: borderStyle]
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor [

	^ self bench: [
		super frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor]
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> image: aForm at: aPoint [

	^ self bench: [
		super image: aForm at: aPoint]
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> image: aForm at: aPoint rule: combinationRule [

	^ self bench: [
		super image: aForm at: aPoint rule: combinationRule]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	^ self bench: [
		super image: aForm at: aPoint sourceRect: sourceRect rule: rule]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha [

	^ self bench: [
		super image: aForm at: aPoint sourceRect: sourceRect rule: rule alpha: sourceAlpha]
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> imageWithOpaqueWhite: aForm at: aPoint [

	^ self bench: [
		super imageWithOpaqueWhite: aForm at: aPoint]
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/23/2022 15:11'
}
RtBenchmarkingCanvas >> initialize [

	super initialize.
	measurements := OrderedCollection new.
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> line: pt1 to: pt2 brushForm: brush [

	^ self bench: [
		super line: pt1 to: pt2 brushForm: brush]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> line: pt1 to: pt2 color: c [

	^ self bench: [
		super line: pt1 to: pt2 color: c]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> line: pt1 to: pt2 width: w color: c [ 

	^ self bench: [
		super line: pt1 to: pt2 width: w color: c ]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset [

	^ self bench: [
		super line: pt1 to: pt2 width: width color: color1 dashLength: s1 secondColor: color2 secondDashLength: s2 startingOffset: startingOffset]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 [ 

	^ self bench: [
		super line: pt1 to: pt2 width: w1 color: c1 stepWidth: s1 secondWidth: w2 secondColor: c2 secondStepWidth: s2 ]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> paintImage: aForm at: aPoint [

	^ self bench: [
		super paintImage: aForm at: aPoint]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> paintImage: aForm at: aPoint sourceRect: sourceRect [

	^ self bench: [
		super paintImage: aForm at: aPoint sourceRect: sourceRect]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	^ self bench: [
		super paragraph: aParagraph bounds: aRectangle color: aColor]
]

{
	#category : #'drawing-obsolete',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> point: p color: c [

	^ self bench: [
		super point: p color: c]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> render: anObject [

	^ self bench: [
		super render: anObject]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> stencil: stencilForm at: aPoint color: aColor [

	^ self bench: [
		super stencil: stencilForm at: aPoint color: aColor]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	^ self bench: [
		super stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor]
]

{
	#category : #reporting,
	#'squeak_changestamp' : 'stlu 3/23/2022 17:00'
}
RtBenchmarkingCanvas >> timeByPrimitiveType [

	| times |
	times := Dictionary new.
	measurements do: [:measurement |
		| msg time type |
		msg :=  measurement first.
		time := measurement second.
		type := SelectorToTypeTable at: msg selector.
		times
			at: type
			ifPresent: [:t | times at: type put: time + t]
			ifAbsentPut: [time]].
	^ times
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> translucentImage: aForm at: aPoint [

	^ self bench: [
		super translucentImage: aForm at: aPoint]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> translucentImage: aForm at: aPoint sourceRect: sourceRect [ 

	^ self bench: [
		super translucentImage: aForm at: aPoint sourceRect: sourceRect ]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> warpImage: aForm transform: aTransform [

	^ self bench: [
		super warpImage: aForm transform: aTransform]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> warpImage: aForm transform: aTransform at: extraOffset [

	^ self bench: [
		super warpImage: aForm transform: aTransform at: extraOffset]
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/23/2022 15:27'
}
RtBenchmarkingCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	^ self bench: [
		super warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize]
]
