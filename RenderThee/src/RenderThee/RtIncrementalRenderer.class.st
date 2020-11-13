Class {
	#name : #RtIncrementalRenderer,
	#superclass : #RtMorphicRenderer,
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #rendering,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtIncrementalRenderer >> drawWorld: aWorld submorphs: submorphs invalidAreas: rectList on: aCanvas [ 
	"Redraw the damaged areas of the given canvas and clear the damage list. Return a collection of the areas that
were redrawn."

	| sortedRectList n morphs rects validList |
	"sort by areas to draw largest portions first"
	sortedRectList := rectList asArray sort: [:r1 :r2 | r1 area > r2 area].
	n := submorphs size.
	morphs := OrderedCollection new: n * 2.
	rects := OrderedCollection new: n * 2.
	validList := OrderedCollection new: n * 2.

	"This is added in case we are drawing to a form that is to be used as a texture, and we want the background to be translucent."
	aWorld color isTranslucent ifTrue: [
		sortedRectList do: [:r | aCanvas form fill: r fillColor: aWorld color]].

	sortedRectList do: [:dirtyRect |
		dirtyRect allAreasOutsideList: validList do: [:r |
			| mm rectToFill remnants i | 
			"Experimental top-down drawing --
			Traverses top to bottom, stopping if the entire area is filled.
			If only a single rectangle remains, then continue with the reduced rectangle."
			rectToFill := r.
			i := 1.
			[rectToFill isNil or: [i > n]] whileFalse: [
				mm := submorphs at: i.
				((mm fullBounds intersects: r) and: [mm visible]) ifTrue: [
					morphs addLast: mm.
					rects addLast: rectToFill.
					remnants := mm areasRemainingToFill: rectToFill.
					remnants size = 1 ifTrue: [rectToFill := remnants first].
					remnants isEmpty ifTrue: [rectToFill := nil]].
				i := i + 1].

			"Now paint from bottom to top, but using the reduced rectangles."
			rectToFill ifNotNil: [
				aCanvas clipBy: rectToFill during: [:c | c drawMorph: aWorld]].
			[morphs isEmpty] whileFalse: [
				rectToFill := rects removeLast.
				aCanvas clipBy: rectToFill during: [:c | c drawMorph: aWorld]].
			morphs reset.
			rects reset.
			validList add: r]].
	^ validList
]

{
	#category : #rendering,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtIncrementalRenderer >> renderFrame [

	imageStore canvasDo: [:canvas |
		self renderOn: canvas]
]

{
	#category : #rendering,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtIncrementalRenderer >> renderOn: aCanvas [

	| allDamage deferredUpdateMode handDamageRects handsToDraw worldDamageRects |
	self checkIfUpdateNeeded ifFalse: [^ self].  "display is already up-to-date"

	deferredUpdateMode := self doDeferredUpdatingFor: morph.

	worldDamageRects := self drawWorld: morph submorphs: morph submorphs invalidAreasOn: self assuredCanvas.  "repair world's damage on canvas"
	handsToDraw := self selectHandsToDrawForDamage: worldDamageRects.
	handDamageRects := handsToDraw collect: [:h | h savePatchFrom: aCanvas].
	allDamage := worldDamageRects, handDamageRects.

	handsToDraw reverseDo: [:h | aCanvas fullDrawMorph: h].  "draw hands onto world canvas"

	"*make this true to flash damaged areas for testing*"
	Preferences debugShowDamage ifTrue: [morph flashRects: allDamage color: Color black].

	aCanvas finish: allDamage.

	"quickly copy altered rects of canvas to Display:"
	deferredUpdateMode
		ifTrue: [self forceDamageToScreen: allDamage]
		ifFalse: [aCanvas showAt: morph viewBox origin invalidRects: allDamage].
	handsToDraw do: [:h | h restoreSavedPatchOn: aCanvas].  "restore world canvas under hands"
	Display deferUpdates: false; forceDisplayUpdate
]
