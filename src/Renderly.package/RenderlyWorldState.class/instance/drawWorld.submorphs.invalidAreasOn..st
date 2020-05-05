update cycle
drawWorld: aWorld submorphs: submorphs invalidAreasOn: aCanvas 
	"Redraw the damaged areas of the given canvas and clear the damage list. Return a collection of the areas that
were redrawn."

	aCanvas fullDrawMorph: aWorld.
	^ { aWorld bounds }