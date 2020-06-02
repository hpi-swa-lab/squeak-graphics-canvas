testing
isRepaintBoundary
	"Whether this render object repaints separately from its parent.
	Subclasses can override this method to indicate that instances ought
	to repaint independently. For example, render objects that repaint
	frequently might want to repaint themselves without requiring their parent
	to repaint."
	^ false