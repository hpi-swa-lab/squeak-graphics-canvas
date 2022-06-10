Class {
	#name : #RtDrawReferenceMorph,
	#superclass : #Morph,
	#category : #'RenderThee-Examples-Reference'
}

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 9/1/2021 15:37'
}
RtDrawReferenceMorph >> drawOn: aCanvas [

	aCanvas clipBy: self bounds during: [:canvas |
		| stripe stripeHeight stripeTop |
		canvas fillColor: Color red.
		stripeHeight := 20.
		stripe := 1.
		stripeTop := self top.
		[stripeTop < self bottom] whileTrue: [
			canvas
				fillRectangle: ((self left @ stripeTop) corner: self right @ stripeTop + stripeHeight)
				color: (stripe even ifTrue: [Color blue] ifFalse: [Color gray]).
			stripeTop := stripeTop + stripeHeight.
			stripe := stripe + 1]].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/17/2021 14:00'
}
RtDrawReferenceMorph >> initialize [

	super initialize.
	
	self
		color: Color black;
		bounds: RealEstateAgent maximumUsableArea;
		changeProportionalLayout;
		clipSubmorphs: true;
		yourself.
	
	self initializeWithDrawBlocks: self reference
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/16/2021 17:04'
}
RtDrawReferenceMorph >> initializeWithDrawBlocks: aCollection [

	| numRows numColumns cellInset |
	cellInset := 5.
	numRows := aCollection size.
	numColumns := aCollection inject: 0 into: [:max :each | max max: each size].
	aCollection withIndexDo: [:row :y |
		row withIndexDo: [:block :x |
			| frame morph |
			frame := LayoutFrame
				fractions: ((x-1/numColumns)@(y-1/numRows) extent: (1/numColumns)@(1/numRows))
				offsets: (cellInset asPoint corner: cellInset negated asPoint).
			morph := RtPluggableMorph new
						layoutFrame: frame;
						drawBlock: block;
						hResizing: #spaceFill;
						vResizing: #spaceFill;
						yourself.
			self addMorph: morph]]
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/17/2021 09:33'
}
RtDrawReferenceMorph >> reference [

	| borderWidth borderColor fillColor alpha styles rows convexPolygon concavePolygon fillColor2 |
	borderWidth := 5.
	borderColor := Color red.
	fillColor := Color yellow.
	fillColor2 := Color green.
	alpha := 0.5.
	
	styles := {
		{	SimpleBorder width: 0.
			SolidFillStyle color: fillColor}.
		{	SimpleBorder width: borderWidth color: borderColor.
			SolidFillStyle color: Color transparent}.
		{	SimpleBorder width: borderWidth color: borderColor.
			SolidFillStyle color: fillColor}.
		{	SimpleBorder width: borderWidth color: (borderColor alpha: alpha).
			SolidFillStyle color: (fillColor alpha: alpha)}.
		{	BorderStyle inset width: borderWidth; color: borderColor; yourself.
			(GradientFillStyle ramp: {0.0 -> fillColor. 1.0 -> fillColor2})}.
		{	BorderStyle raised width: borderWidth; color: (borderColor alpha: alpha); yourself.
			(GradientFillStyle ramp: {0.0 -> (fillColor alpha: alpha). 1.0 -> fillColor2})}.
		{	BorderStyle complexFramed width: borderWidth; color: borderColor; yourself.
			(GradientFillStyle ramp: {0.0 -> (fillColor alpha: alpha). 1.0 -> (fillColor2 alpha: alpha)}) radial: true; yourself}.
		{	BorderStyle complexFramed width: borderWidth; color: (borderColor alpha: alpha); yourself.
			(GradientFillStyle ramp: {
				0.0 -> fillColor.
				0.25 -> fillColor2.
				0.5 -> (fillColor alpha: alpha).
				0.75 -> fillColor2.
				1.0 -> fillColor})}.
		{	(DashedBorder width: borderWidth color: borderColor) gapLength: 10; yourself.
			BitmapFillStyle fromForm: Form extraWizard}.
	}.
	
	rows := Array new: 5.
	convexPolygon := { 0.0 @ 0.5 . 0.75 @ 0.0 . 1.0 @ 1.0 }.
	concavePolygon := { 0.0 @ 0.0 . 1.0 @ 0.0 . 0.6 @ 0.5 . 1.0 @ 1.0 . 0.0 @ 1.0 . 0.4 @ 0.5 }.
	1 to: rows size do: [:index | rows at: index put: OrderedCollection new].
	styles do: [:style |
		| fs bs |
		bs := style first.
		fs := style second.
		rows first add: [:canvas :bounds |
			fs isOrientedFill ifTrue: [fs origin: bounds topLeft; direction: bounds extent].
			canvas frameAndFillRectangle: bounds fillStyle: fs borderStyle: bs].
		rows second add: [:canvas :bounds |
			fs isOrientedFill ifTrue: [fs origin: bounds topLeft; direction: bounds extent].
			canvas frameAndFillRoundRect: bounds radius: 20 fillStyle: fs borderStyle: bs].
		rows third add: [:canvas :bounds |
			fs isOrientedFill ifTrue: [fs origin: bounds topLeft; direction: bounds extent].
			canvas fillOval: bounds fillStyle: fs borderStyle: bs].
		rows fourth add: [:canvas :bounds |
			fs isOrientedFill ifTrue: [fs origin: bounds topLeft; direction: bounds extent].
			canvas drawPolygon: convexPolygon * bounds extent + bounds topLeft fillStyle: fs borderStyle: bs].
		rows fifth add: [:canvas :bounds |
			fs isOrientedFill ifTrue: [fs origin: bounds topLeft; direction: bounds extent].
			canvas drawPolygon: concavePolygon * bounds extent + bounds topLeft fillStyle: fs borderStyle: bs]].
	
	^ rows
]
