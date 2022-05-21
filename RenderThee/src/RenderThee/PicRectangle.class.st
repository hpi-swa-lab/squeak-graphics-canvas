Class {
	#name : #PicRectangle,
	#superclass : #Object,
	#instVars : [
		'left',
		'top',
		'right',
		'bottom'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 5/18/2022 16:03'
}
PicRectangle class >> encompassing: listOfPoints [

	^ self encompass: listOfPoints
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 5/20/2022 14:38'
}
PicRectangle class >> left: leftNum right: rightNum top: topNum bottom: botNum [

	^ self basicNew setLeft: leftNum top: topNum right: rightNum bottom: botNum
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 5/20/2022 14:38'
}
PicRectangle class >> left: leftNum top: topNum right: rightNum bottom: botNum [

	^ self basicNew setLeft: leftNum top: topNum right: rightNum bottom: botNum
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 5/20/2022 14:38'
}
PicRectangle class >> origin: originPoint corner: cornerPoint [ 

	^ self basicNew
		setLeft: originPoint x
		top: originPoint y
		right: cornerPoint x
		bottom: cornerPoint y
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 5/20/2022 14:38'
}
PicRectangle class >> origin: originPoint extent: extentPoint [ 

	^ self basicNew
		setLeft: originPoint x
		top: originPoint y
		right: originPoint x + extentPoint x
		bottom: originPoint y + extentPoint y
]

{
	#category : #comparing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:09'
}
PicRectangle >> = aRectangle [ 
	"Answer true if the receiver's species, origin and corner match aRectangle's."
	self species = aRectangle species ifFalse: [^ false].
	left = aRectangle left ifFalse: [^ false].
	top = aRectangle top ifFalse: [^ false].
	right = aRectangle right ifFalse: [^ false].
	bottom = aRectangle bottom ifFalse: [^ false].
	^ true
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:08'
}
PicRectangle >> aboveCenter [
	"Answer the point slightly above the center of the receiver."
	^ self topLeft + self bottomRight // (2@3)
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> adjustTo: newRect along: side [ 
	"Return a copy adjusted to fit a neighbor that has changed size."
	side = #left ifTrue: [^ self withRight: newRect left].
	side = #right ifTrue: [^ self withLeft: newRect right].
	side = #top ifTrue: [^ self withBottom: newRect top].
	side = #bottom ifTrue: [^ self withTop: newRect bottom].
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> align: aPoint1 with: aPoint2 [ 
	"Answer a Rectangle that is a translated by aPoint2 - aPoint1."

	^self translateBy: aPoint2 - aPoint1
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> allAreasOutsideList: aCollection do: aBlock [
	"Enumerate aBlock with all areas of the receiver not overlapping 
	any rectangle in the given collection"
	^self allAreasOutsideList: aCollection startingAt: 1 do: aBlock
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> allAreasOutsideList: aCollection startingAt: startIndex do: aBlock [
	"Enumerate aBlock with all areas of the receiver not overlapping 
	any rectangle in the given collection"
	| yOrigin yCorner aRectangle index rr |
	index := startIndex.

	"Find the next intersecting rectangle from aCollection"
	[index <= aCollection size ifFalse:[^aBlock value: self].
	aRectangle := aCollection at: index.
	origin <= aRectangle corner and: [aRectangle origin <= corner]] 
		whileFalse:[index := index + 1].

	"aRectangle is intersecting; process it"
	aRectangle origin y > origin y 
		ifTrue: [rr := origin corner: corner x @ (yOrigin := aRectangle origin y).
				rr allAreasOutsideList: aCollection startingAt: index+1 do: aBlock]
		ifFalse: [yOrigin := origin y].
	aRectangle corner y < corner y
		ifTrue: [rr := origin x @ (yCorner := aRectangle corner y) corner: corner.
				rr allAreasOutsideList: aCollection startingAt: index+1 do: aBlock]
		ifFalse: [yCorner := corner y].
	aRectangle origin x > origin x 
		ifTrue: [rr := origin x @ yOrigin corner: aRectangle origin x @ yCorner.
				rr allAreasOutsideList: aCollection startingAt: index+1 do: aBlock].
	aRectangle corner x < corner x 
		ifTrue: [rr := aRectangle corner x @ yOrigin corner: corner x @ yCorner.
				rr allAreasOutsideList: aCollection startingAt: index+1 do: aBlock].
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> amountToTranslateWithin: aRectangle [
	"Answer a Point, delta, such that self + delta is forced within aRectangle."
	"Altered so as to prefer to keep self topLeft inside when all of self
	cannot be made to fit 7/27/96 di"
	| dx dy |
	dx := 0.  dy := 0.
	self right > aRectangle right ifTrue: [dx := aRectangle right - self right].
	self bottom > aRectangle bottom ifTrue: [dy := aRectangle bottom - self bottom].
	(self left + dx) < aRectangle left ifTrue: [dx := aRectangle left - self left].
	(self top + dy) < aRectangle top ifTrue: [dy := aRectangle top - self top].
	^ dx@dy
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> area [
	"Answer the receiver's area, the product of width and height."
	| w |
	(w := self width) <= 0 ifTrue: [^ 0].
	^ w * self height max: 0
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> areasOutside: aRectangle [
	"Answer an Array of Rectangles comprising the parts of the receiver not 
	intersecting aRectangle."

	| areas yOrigin yCorner |
	"Make sure the intersection is non-empty"
     (self intersects: aRectangle)
		ifFalse: [^Array with: self].
	areas := OrderedCollection new.
	aRectangle origin y > origin y
		ifTrue: [areas addLast: (origin corner: corner x @ (yOrigin := aRectangle origin y))]
		ifFalse: [yOrigin := origin y].
	aRectangle corner y < corner y
		ifTrue: [areas addLast: (origin x @ (yCorner := aRectangle corner y) corner: corner)]
		ifFalse: [yCorner := corner y].
	aRectangle origin x > origin x 
		ifTrue: [areas addLast: (origin x @ yOrigin corner: aRectangle origin x @ yCorner)].
	aRectangle corner x < corner x 
		ifTrue: [areas addLast: (aRectangle corner x @ yOrigin corner: corner x @ yCorner)].
	^areas
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> bordersOn: her along: herSide [ 
	(herSide = #right and: [self left = her right])
	| (herSide = #left and: [self right = her left])
		ifTrue:
		[^ (self top max: her top) < (self bottom min: her bottom)].
	(herSide = #bottom and: [self top = her bottom])
	| (herSide = #top and: [self bottom = her top])
		ifTrue:
		[^ (self left max: her left) < (self right min: her right)].
	^ false
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:40'
}
PicRectangle >> bottom [

	^ bottom
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:40'
}
PicRectangle >> bottom: anObject [

	bottom := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:07'
}
PicRectangle >> bottomCenter [
	"Answer the point at the center of the bottom horizontal line of the receiver."
	^ self horizontalCenter @ bottom
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> bottomHalf [
	^self withTop: self center y
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:07'
}
PicRectangle >> bottomLeft [
	"Answer the point at the left edge of the bottom horizontal line of the receiver."
	^ left @ bottom
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> bottomLeftQuadrant [
	^self leftCenter corner: self bottomCenter
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:06'
}
PicRectangle >> bottomRight [
	"Answer the point at the right edge of the bottom horizontal line of the receiver."
	^ right @ bottom
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> bottomRightQuadrant [
	^self center corner: self bottomRight
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:06'
}
PicRectangle >> boundingBox [

	^ self
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:52'
}
PicRectangle >> ceiling [
	"Answer the integer rectange to the bottom right of receiver."
	^ self shallowCopy setCeiling
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:06'
}
PicRectangle >> center [
	"Answer the point at the center of the receiver."
	^ self horizontalCenter @ self verticalCenter
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> centeredBeneath: aRectangle [
	 "Move the reciever so that its top center point coincides with the bottom center point of aRectangle.  5/20/96 sw:"

	^ self align: self topCenter with: aRectangle bottomCenter
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:46'
}
PicRectangle >> compressTo: grid [
	"Answer a Rectangle whose origin and corner are rounded to grid x and grid y.
	Rounding is done by upper value on origin and lower value on corner so that
	rounded rectangle is inside self."
	^ self shallowCopy setCompressTo: grid
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:46'
}
PicRectangle >> compressed [
	"Answer a Rectangle whose origin and corner are rounded to integers.
	Rounding is done by upper value on origin and lower value on corner so that
	rounded rectangle is inside self."
	^ self shallowCopy setCompressed
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:40'
}
PicRectangle >> containsPoint: aPoint [ 
	"Answer whether aPoint is within the receiver."
	| x y |
	x := aPoint x.
	y := aPoint y.
	
	left > x ifTrue: [^ false].
	top > y ifTrue: [^ false].
	right < x ifTrue: [^ false].
	bottom < y ifTrue: [^ false].
	^ true
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:40'
}
PicRectangle >> containsRect: aRect [
	"Answer whether aRect is within the receiver (OK to coincide)."
	left <= aRect left ifFalse: [^ false].
	top <= aRect top ifFalse: [^ false].
	right >= aRect right ifFalse: [^ false].
	bottom >= aRect bottom ifFalse: [^ false].
	^ false
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:06'
}
PicRectangle >> corner [
	"Answer the point at the bottom right corner of the receiver."
	^ right @ bottom
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> corners [
	"Return an array of corner points in the order of a quadrilateral spec for WarpBlt."

	^ Array
		with: self topLeft
		with: self bottomLeft
		with: self bottomRight
		with: self topRight

]

{
	#category : #FMP,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> deltaToEnsureInOrCentered: r extra: aNumber [

	| dX dY halfXDiff halfYDiff |
	dX := dY := 0.
	halfXDiff := (r width - self width * aNumber) truncated.
	halfYDiff := (r height - self height  * aNumber) truncated.
	self left < r left
		ifTrue: [dX := self left - r left - halfXDiff]
		ifFalse: [self right > r right ifTrue: [dX := self right - r right + halfXDiff]].
	self top < r top
		ifTrue: [dY := self top - r top - halfYDiff]
		ifFalse: [self bottom > r bottom ifTrue: [dY := self bottom - r bottom + halfYDiff]].
	^dX @ dY

]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/18/2022 16:02'
}
PicRectangle >> encompass: listOfPoints [

	| firstPoint |
	firstPoint := listOfPoints first.
	left := right := firstPoint x.
	top := bottom := firstPoint y.
	
	2 to: listOfPoints size do: [:index || p x y |
		p := listOfPoints at: index.
		x := p x.
		y := p y.
		left < x ifFalse: [left := x].
		right > x ifFalse: [right := x].
		top < y ifFalse: [top := y].
		bottom > y ifFalse: [bottom := y]].
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> expandBy: delta [ 
	"Answer a Rectangle that is outset from the receiver by delta. delta is a 
	Rectangle, Point, or scalar."

	(delta isRectangle)
		ifTrue: [^Rectangle 
					origin: origin - delta origin 
					corner: corner + delta corner]
		ifFalse: [^Rectangle 
					origin: origin - delta 
					corner: corner + delta]
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:48'
}
PicRectangle >> expandTo: grid [
	"Answer a Rectangle whose origin and corner are rounded to grid x and grid y.
	Rounding is done by upper value on origin and lower value on corner so that
	self is inside rounded rectangle."
	^ self shallowCopy setExpandTo: grid
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:47'
}
PicRectangle >> expanded [
	"Answer a Rectangle whose origin and corner are rounded to integers.
	Rounding is done by upper value on origin and lower value on corner so that
	self is inside rounded rectangle."
	^ self shallowCopy setExpanded
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> extendBy: delta [ 
	"Answer a Rectangle with the same origin as the receiver, but whose corner is offset by delta. delta is a 
	Rectangle, Point, or scalar."

	(delta isRectangle)
		ifTrue: [^Rectangle 
					origin: origin
					corner: corner + delta corner]
		ifFalse: [^Rectangle 
					origin: origin
					corner: corner + delta]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:05'
}
PicRectangle >> extent [
	"Answer a point with the receiver's width @ the receiver's height."
	^ (right - left) @ (bottom - top)
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> flipBy: direction centerAt: aPoint [ 
	"Return a copy flipped #vertical or #horizontal, about aPoint."
	| futureOrigin futureCorner |
	direction == #horizontal
		ifTrue:
			[futureOrigin := self topRight.
			futureCorner := self bottomLeft]
		ifFalse: [direction == #vertical
			ifTrue:
				[futureOrigin := self bottomLeft.
				futureCorner := self topRight]
			ifFalse: [self error: 'unrecognizable direction']].
	^ (futureOrigin flipBy: direction centerAt: aPoint)
		corner: (futureCorner flipBy: direction centerAt: aPoint)
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:49'
}
PicRectangle >> floor [
	"Answer the integer rectange to the topleft of receiver."
	^ self shallowCopy setFloor
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> forPoint: aPoint closestSideDistLen: sideDistLenBlock [
	"Evaluate the block with my side (symbol) closest to aPoint,
		the approx distance of aPoint from that side, and
		the length of the side (or 0 if aPoint is beyond the side)"
	| side |
	side := self sideNearestTo: aPoint.
	side == #right ifTrue:
		[^ sideDistLenBlock value: side value: (self right - aPoint x) abs
			value: ((aPoint y between: self top and: self bottom)
						ifTrue: [self height] ifFalse: [0])].
	side == #left ifTrue:
		[^ sideDistLenBlock value: side value: (self left - aPoint x) abs
			value: ((aPoint y between: self top and: self bottom)
						ifTrue: [self height] ifFalse: [0])].
	side == #bottom ifTrue:
		[^ sideDistLenBlock value: side value: (self bottom - aPoint y) abs
			value: ((aPoint x between: self left and: self right)
						ifTrue: [self width] ifFalse: [0])].
	side == #top ifTrue:
		[^ sideDistLenBlock value: side value: (self top - aPoint y) abs
			value: ((aPoint x between: self left and: self right)
						ifTrue: [self width] ifFalse: [0])].
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:48'
}
PicRectangle >> hasPositiveExtent [

	left < right ifFalse: [^ false].
	top < bottom ifFalse: [^ false].
	^ true
]

{
	#category : #comparing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:40'
}
PicRectangle >> hash [

	^ (left hash hashMultiply + top hash) hashMultiply
		bitXor: (right hash hashMultiply + bottom hash) hashMultiply
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:55'
}
PicRectangle >> height [

	^ bottom - top
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:02'
}
PicRectangle >> horizontalCenter [
	"Answer the x value at the center of the receiver."
	^ left + right / 2
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> innerCorners [
	"Return an array of inner corner points,
	ie, the most extreme pixels included,
	in the order of a quadrilateral spec for WarpBlt"
	| r1 |
	r1 := self topLeft corner: self bottomRight - (1@1).
	^ Array with: r1 topLeft with: r1 bottomLeft with: r1 bottomRight with: r1 topRight
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:17'
}
PicRectangle >> insetBy: delta [ 
	"Answer a Rectangle that is inset from the receiver by delta. delta is a Rectangle, Point, or scalar."
	^ self shallowCopy setInsetBy: delta
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> insetOriginBy: originDeltaPoint cornerBy: cornerDeltaPoint [ 
	"Answer a Rectangle that is inset from the receiver by a given amount in 
	the origin and corner."

	^Rectangle
		origin: origin + originDeltaPoint
		corner: corner - cornerDeltaPoint
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:43'
}
PicRectangle >> intersect: aRectangle [
	"Answer a Rectangle that is the area in which the receiver overlaps with aRectangle."
	^ self shallowCopy setIntersect: aRectangle
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:53'
}
PicRectangle >> intersects: aRectangle [ 
	"Answer whether aRectangle intersects the receiver anywhere."
	right <= aRectangle left ifTrue: [^ false].
	bottom <= aRectangle top ifTrue: [^ false].
	left >= aRectangle right ifTrue: [^ false].
	top >= aRectangle bottom ifTrue: [^ false].
	^ true
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/18/2022 17:04'
}
PicRectangle >> isIntegerRectangle [
	"Answer true if all component of receiver are integral."
	left isInteger ifFalse: [^ false].
	top isInteger ifFalse: [^ false].
	right isInteger ifFalse: [^ false].
	bottom isInteger ifFalse: [^ false].
	^ true
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:53'
}
PicRectangle >> isRectangle [

	^ true
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:53'
}
PicRectangle >> isTall [

	^ self height > self width
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:53'
}
PicRectangle >> isWide [

	^ self width > self height
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:54'
}
PicRectangle >> isZero [

	left isZero ifFalse: [^ false].
	top isZero ifFalse: [^ false].
	right isZero ifFalse: [^ false].
	bottom isZero ifFalse: [^ false].
	^ true
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:40'
}
PicRectangle >> left [

	^ left
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:40'
}
PicRectangle >> left: anObject [

	left := anObject.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:41'
}
PicRectangle >> left: leftNum top: topNum right: rightNum bottom: botNum [

	left := leftNum.
	top := topNum.
	right := rightNum.
	bottom := botNum.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:04'
}
PicRectangle >> leftCenter [
	"Answer the point at the center of the receiver's left vertical line."
	^ left @ self verticalCenter
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> leftHalf [
	^self withRight: self center x
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> merge: aRectangle [ 
	"Answer a Rectangle that contains both the receiver and aRectangle."

	^Rectangle 
		origin: (origin min: aRectangle origin)
		corner: (corner max: aRectangle corner)
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> newRectButtonPressedDo: newRectBlock [ 
	"Track the outline of a new rectangle until mouse button 
	changes. newFrameBlock produces each new rectangle from the 
	previous. Only tracks while mouse is down."
	| rect newRect buttonNow delay |
	delay := Delay forMilliseconds: 10.
	buttonNow := Sensor anyButtonPressed.
	rect := self.
	Display
		border: rect
		width: 2
		rule: Form reverse
		fillColor: Color gray.
	[buttonNow]
		whileTrue: [delay wait.
			buttonNow := Sensor anyButtonPressed.
			newRect := newRectBlock value: rect.
			newRect = rect
				ifFalse: [Display
						border: rect
						width: 2
						rule: Form reverse
						fillColor: Color gray.
					Display
						border: newRect
						width: 2
						rule: Form reverse
						fillColor: Color gray.
					rect := newRect]].
	Display
		border: rect
		width: 2
		rule: Form reverse
		fillColor: Color gray.
	Project current pointerMoved. 
	Sensor processEvent: Sensor createMouseEvent.
	^ rect
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> newRectFrom: newRectBlock [
	"Track the outline of a new rectangle until mouse button changes.
	newFrameBlock produces each new rectangle from the previous"
	| rect newRect buttonStart buttonNow delay |
	delay := Delay forMilliseconds: 10.
	buttonStart := buttonNow := Sensor anyButtonPressed.
	rect := self.
	Display border: rect width: 2 rule: Form reverse fillColor: Color gray.
	[buttonNow == buttonStart] whileTrue: 
		[delay wait.
		buttonNow := Sensor anyButtonPressed.
		newRect := newRectBlock value: rect.
		newRect = rect ifFalse:
			[Display border: rect width: 2 rule: Form reverse fillColor: Color gray.
			Display border: newRect width: 2 rule: Form reverse fillColor: Color gray.
			rect := newRect]].
	Display border: rect width: 2 rule: Form reverse fillColor: Color gray.
	Project current pointerMoved. 
	Sensor processEvent: Sensor createMouseEvent.
	^ rect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:04'
}
PicRectangle >> origin [
	"Answer the point at the top left corner of the receiver."
	^ left @ top
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:16'
}
PicRectangle >> outsetBy: delta [
	"Answer a Rectangle that is outset from the receiver by delta. delta is a Rectangle, Point, or scalar."
	^ self shallowCopy setOutsetBy: delta
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> pointAtFraction: relativePoint [

	| result |
	result := self origin + (self extent * relativePoint).
	^ self isIntegerRectangle
		ifTrue: [result rounded]
		ifFalse: [result]
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> pointNearestTo: aPoint [
	"Return the point on my border closest to aPoint"
	| side |
	(self containsPoint: aPoint)
		ifTrue:
			[side := self sideNearestTo: aPoint.
			side == #right ifTrue: [^ self right @ aPoint y].
			side == #left ifTrue: [^ self left @ aPoint y].
			side == #bottom ifTrue: [^ aPoint x @ self bottom].
			side == #top ifTrue: [^ aPoint x @ self top]]
		ifFalse:
			[^ aPoint adhereTo: self]
]

{
	#category : #printing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:12'
}
PicRectangle >> printOn: aStream [ 

	left printOn: aStream.
	aStream nextPut: $@.
	(top isNumber and: [top negative]) ifTrue: [aStream space].
	top printOn: aStream.
	
	aStream nextPutAll: ' corner: '.
	
	right printOn: aStream.
	aStream nextPut: $@.
	(bottom isNumber and: [bottom negative]) ifTrue: [aStream space].
	bottom printOn: aStream.
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> quickMerge: aRectangle [ 
	"Answer the receiver if it encloses the given rectangle or the merge of the two rectangles if it doesn't. THis method is an optimization to reduce extra rectangle creations."

	| useRcvr rOrigin rCorner minX maxX minY maxY |
	useRcvr := true.
	rOrigin := aRectangle topLeft.
	rCorner := aRectangle bottomRight.
	minX := rOrigin x < origin x ifTrue: [useRcvr := false. rOrigin x] ifFalse: [origin x].
	maxX := rCorner x > corner x ifTrue: [useRcvr := false. rCorner x] ifFalse: [corner x].
	minY := rOrigin y < origin y ifTrue: [useRcvr := false. rOrigin y] ifFalse: [origin y].
	maxY := rCorner y > corner y ifTrue: [useRcvr := false. rCorner y] ifFalse: [corner y].

	useRcvr
		ifTrue: [^ self]
		ifFalse: [^ Rectangle origin: minX@minY corner: maxX@maxY].

]

{
	#category : #random,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> randomPoint [

	^ self randomPoint: ThreadSafeRandom value
]

{
	#category : #random,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> randomPoint: aGenerator [
	"Answers a random point that lies within the receiver."

	^ self pointAtFraction: aGenerator next @ aGenerator next
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/18/2022 16:08'
}
PicRectangle >> rectangle: aRectangle [
	"Initializes the receiver to be identical to aRectangle."
	left := aRectangle left.
	top := aRectangle top.
	right := aRectangle right.
	bottom := aRectangle bottom.
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> rectanglesAt: y height: ht [
	(y+ht) > self bottom ifTrue: [^ Array new].
	^ Array with: (origin x @ y corner: corner x @ (y+ht))
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:40'
}
PicRectangle >> right [

	^ right
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:40'
}
PicRectangle >> right: anObject [

	right := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:03'
}
PicRectangle >> rightCenter [
	"Answer the point at the center of the receiver's right vertical line."
	^ right @ self verticalCenter
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> rightHalf [
	^self withLeft: self center x
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> rotateBy: direction centerAt: aPoint [
	"Return a copy rotated #right, #left, or #pi about aPoint"
	| futureOrigin futureCorner |
	direction == #pi
		ifTrue:
			[futureOrigin := self corner.
			futureCorner := self origin]
		ifFalse: [direction == #left
			ifTrue:
				[futureOrigin := self topRight.
				futureCorner := self bottomLeft]
			ifFalse: [direction == #right
				ifTrue:
					[futureOrigin := self bottomLeft.
					futureCorner := self topRight]
				ifFalse: [self error: 'unrecognizable direction']]].
	^ (futureOrigin rotateBy: direction centerAt: aPoint)
		corner: (futureCorner rotateBy: direction centerAt: aPoint)
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:50'
}
PicRectangle >> roundTo: grid [
	"Answer a Rectangle whose origin and corner are rounded to grid x and grid y."
	^ self shallowCopy setRoundTo: grid
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:49'
}
PicRectangle >> rounded [

	^ self shallowCopy setRounded
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> scaleBy: scale [ 
	"Answer a Rectangle scaled by scale, a Point or a scalar."

	^Rectangle origin: origin * scale corner: corner * scale
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> scaleFrom: rect1 to: rect2 [
	"Produce a rectangle stretched according to the stretch from rect1 to rect2"
	^ (origin scaleFrom: rect1 to: rect2)
		corner: (corner scaleFrom: rect1 to: rect2)
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:44'
}
PicRectangle >> setCeiling [

	left := left ceiling.
	top := top ceiling.
	right := right ceiling.
	bottom := bottom ceiling.
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:46'
}
PicRectangle >> setCompressTo: grid [

	| x y |
	grid isPoint
		ifTrue: [x := grid x. y := grid y]
		ifFalse: [x := y := grid].
	left := left roundUpTo: x.
	top := top roundUpTo: y.
	right := right roundDownTo: x.
	bottom := bottom roundDownTo: y.
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:46'
}
PicRectangle >> setCompressed [

	left := left ceiling.
	top := top ceiling.
	right := right floor.
	bottom := bottom floor.
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:48'
}
PicRectangle >> setExpandTo: grid [

	| x y |
	grid isPoint
		ifTrue: [x := grid x. y := grid y]
		ifFalse: [x := y := grid].
	left := left roundDownTo: x.
	top := top roundDownTo: y.
	right := right roundUpTo: x.
	bottom := bottom roundUpTo: y.
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:47'
}
PicRectangle >> setExpanded [

	left := left floor.
	top := top floor.
	right := right ceiling.
	bottom := bottom ceiling.
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:45'
}
PicRectangle >> setFloor [

	left := left floor.
	top := top floor.
	right := right floor.
	bottom := bottom floor.
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:15'
}
PicRectangle >> setInsetBy: delta [

	delta isRectangle
		ifTrue: [
			left := left + delta left.
			top := top + delta top.
			right := right - delta right.
			bottom := bottom - delta bottom]
		ifFalse: [| x y |
			delta isPoint
				ifTrue: [x := delta x. y := delta y]
				ifFalse: [x := y := delta].
			left := left + x.
			top := top + y.
			right := right - x.
			bottom := bottom - y].
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:43'
}
PicRectangle >> setIntersect: aRectangle [ 

	left < aRectangle left ifTrue: [left := aRectangle left].
	top < aRectangle top ifTrue: [top := aRectangle top].
	right > aRectangle right ifTrue: [right := aRectangle right].
	bottom > aRectangle bottom ifTrue: [bottom := aRectangle bottom].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/20/2022 14:37'
}
PicRectangle >> setLeft: leftNum top: topNum right: rightNum bottom: botNum [

	left := leftNum.
	top := topNum.
	right := rightNum.
	bottom := botNum.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/18/2022 17:20'
}
PicRectangle >> setOrigin: topLeft corner: bottomRight [

	left := topLeft x.
	top := topLeft y.
	right := bottomRight x.
	bottom := bottomRight y.
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/19/2022 17:16'
}
PicRectangle >> setOutsetBy: delta [

	delta isRectangle
		ifTrue: [
			left := left - delta left.
			top := top - delta top.
			right := right + delta right.
			bottom := bottom + delta bottom]
		ifFalse: [| x y |
			delta isPoint
				ifTrue: [x := delta x. y := delta y]
				ifFalse: [x := y := delta].
			left := left - x.
			top := top - y.
			right := right + x.
			bottom := bottom + y].
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:50'
}
PicRectangle >> setRoundTo: grid [

	| x y |
	grid isPoint
		ifTrue: [x := grid x. y := grid y]
		ifFalse: [x := y := grid].
	left := left roundTo: x.
	top := top roundTo: y.
	right := right roundTo: x.
	bottom := bottom roundTo: y.
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:49'
}
PicRectangle >> setRounded [

	left := left rounded.
	top := top rounded.
	right := right rounded.
	bottom := bottom rounded.
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/19/2022 12:56'
}
PicRectangle >> setTranslateBy: factor [ 

	| x y |
	factor isPoint
		ifTrue: [x := factor x. y := factor y]
		ifFalse: [x := y := factor].
	left := left + x.
	top := top + y.
	right := right + x.
	bottom := bottom + y.
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/20/2022 15:44'
}
PicRectangle >> setTranslateByNegated: factor [ 

	| x y |
	factor isPoint
		ifTrue: [x := factor x. y := factor y]
		ifFalse: [x := y := factor].
	left := left - x.
	top := top - y.
	right := right - x.
	bottom := bottom - y.
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:51'
}
PicRectangle >> setTruncateTo: grid [
	"Answer a Rectangle whose origin and corner are truncated to grid x and grid y."
	| x y |
	grid isPoint
		ifTrue: [x := grid x. y := grid y]
		ifFalse: [x := y := grid].
	left := left truncateTo: x.
	top := top truncateTo: y.
	right := right truncateTo: x.
	bottom := bottom truncateTo: y.
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:50'
}
PicRectangle >> setTruncated [

	left := left truncated.
	top := top truncated.
	right := right truncated.
	bottom := bottom truncated.
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> sideNearestTo: aPoint [
	| distToLeft distToRight distToTop distToBottom closest side |
	distToLeft := aPoint x - self left.
	distToRight := self right - aPoint x.
	distToTop := aPoint y - self top.
	distToBottom := self bottom - aPoint y.
	closest := distToLeft. side := #left.
	distToRight < closest ifTrue: [closest := distToRight. side := #right].
	distToTop < closest ifTrue: [closest := distToTop. side := #top].
	distToBottom < closest ifTrue: [closest := distToBottom. side := #bottom].
	^ side
"
 | r | r := Rectangle fromUser.
Display border: r width: 1.
[Sensor anyButtonPressed] whileFalse:
	[(r sideNearestTo: Sensor cursorPoint) , '      ' displayAt: 0@0]
"
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> squishedWithin: aRectangle [
	"Return an adjustment of the receiver that fits within aRectangle by reducing its size, not by changing its origin.  "

	^ origin corner: (corner min: aRectangle bottomRight)

"(50 @ 50 corner: 160 @ 100) squishedWithin:  (20 @ 10 corner: 90 @ 85)"

]

{
	#category : #printing,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> storeOn: aStream [ 
	"printed form is good for storing too"
	
	aStream nextPut: $(.
	self printOn: aStream.
	aStream nextPut: $).
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> swallow: aRectangle [ 
	"Modify the receiver so that it contains aRectangle."

	origin := origin min: aRectangle origin.
	corner := corner max: aRectangle corner
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:40'
}
PicRectangle >> top [

	^ top
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:40'
}
PicRectangle >> top: anObject [

	top := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:03'
}
PicRectangle >> topCenter [
	"Answer the point at the center of the receiver's top horizontal line."
	^ self horizontalCenter @ top
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> topHalf [
	^self withBottom: self center y
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:00'
}
PicRectangle >> topLeft [
	"Answer the point at the top left corner of the receiver's top horizontal line."
	^ left @ top
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> topLeftQuadrant [
	^self topLeft corner: self center
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 12:59'
}
PicRectangle >> topRight [
	"Answer the point at the top right corner of the receiver's top horizontal line."
	^ right @ top
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> topRightQuadrant [
	^self topCenter corner: self rightCenter
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/19/2022 12:57'
}
PicRectangle >> translateBy: factor [ 
	"Answer a Rectangle translated by factor, a Point or a scalar."
	^ self shallowCopy setTranslateBy: factor
]

{
	#category : #transforming,
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> translatedAndSquishedToBeWithin: aRectangle [
	"Return an adjustment of the receiver that fits within aRectangle by
		- translating it to be within aRectangle if necessary, then
		- reducing its size, if necessary"

	^ (self translatedToBeWithin: aRectangle) squishedWithin: aRectangle
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> translatedToBeWithin: aRectangle [
	"Answer a copy of the receiver that does not extend beyond aRectangle.  7/8/96 sw"

	^ self translateBy: (self amountToTranslateWithin: aRectangle)
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:51'
}
PicRectangle >> truncateTo: grid [
	"Answer a Rectangle whose origin and corner are truncated to grid x and grid y."
	^ self shallowCopy setTruncateTo: grid
]

{
	#category : #'truncation and round off',
	#'squeak_changestamp' : 'stlu 5/19/2022 12:51'
}
PicRectangle >> truncated [
	"Answer a Rectangle whose origin and corner have any fractional parts removed."
	^ self shallowCopy setTruncated
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 13:02'
}
PicRectangle >> verticalCenter [
	"Answer the y value at the center of the receiver."
	^ top + bottom / 2
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2022 15:55'
}
PicRectangle >> width [

	^ right - left
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> withBottom: y [ 
	"Return a copy of me with a different bottom y"
	^ origin x @ origin y corner: corner x @ y
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> withHeight: height [ 
	"Return a copy of me with a different height"
	^ origin corner: corner x @ (origin y + height)
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> withLeft: x [ 
	"Return a copy of me with a different left x"
	^ x @ origin y corner: corner x @ corner y
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> withRight: x [ 
	"Return a copy of me with a different right x"
	^ origin x @ origin y corner: x @ corner y
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> withSide: side setTo: value [  "return a copy with side set to value"
	^ self perform: (#(withLeft: withRight: withTop: withBottom: )
							at: (#(left right top bottom) indexOf: side))
		with: value
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> withSideOrCorner: side setToPoint: newPoint [
	"Return a copy with side set to newPoint"

	^ self withSideOrCorner: side setToPoint: newPoint minExtent: 0@0
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> withSideOrCorner: side setToPoint: newPoint minExtent: minExtent [
	"Return a copy with side set to newPoint"
	^self withSideOrCorner: side setToPoint: newPoint minExtent: minExtent
		limit: ((#(left top) includes: side) ifTrue: [SmallInteger minVal] ifFalse: [SmallInteger maxVal])
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> withSideOrCorner: side setToPoint: newPoint minExtent: minExtent limit: limit [
	"Return a copy with side set to newPoint"
	side = #top ifTrue: [^ self withTop: (newPoint y min: corner y - minExtent y max: limit + minExtent y)].
	side = #bottom ifTrue: [^ self withBottom: (newPoint y min: limit - minExtent y max: origin y + minExtent y)].
	side = #left ifTrue: [^ self withLeft: (newPoint x min: corner x - minExtent x max: limit + minExtent x)].
	side = #right ifTrue: [^ self withRight: (newPoint x min: limit - minExtent x max: origin x + minExtent x)].
	side = #topLeft ifTrue: [^ (newPoint min: corner - minExtent) corner: self bottomRight].
	side = #bottomRight ifTrue: [^ self topLeft corner: (newPoint max: origin + minExtent)].
	side = #bottomLeft ifTrue: [^ self topRight rect: ((newPoint x min: corner x - minExtent x) @ (newPoint y max: origin y + minExtent y))].
	side = #topRight ifTrue: [^ self bottomLeft rect: ((newPoint x max: origin x + minExtent x) @ (newPoint y min: corner y - minExtent y))].
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> withTop: y [ 
	"Return a copy of me with a different top y"
	^ origin x @ y corner: corner x @ corner y
]

{
	#category : #'rectangle functions',
	#'squeak_changestamp' : 'stlu 5/18/2022 14:50'
}
PicRectangle >> withWidth: width [ 
	"Return a copy of me with a different width"
	^ origin corner: (origin x + width) @ corner y
]
