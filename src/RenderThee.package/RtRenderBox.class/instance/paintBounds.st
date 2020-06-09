accessing
paintBounds
	"Returns a rectangle that contains all the pixels painted by this box.
	The paint bounds can be larger or smaller than extent.
	The paint bounds are used to size the buffers into which this box paints.
	If the box attempts to paint outside its paint bounds, there might not be
	enough memory allocated to represent the box's visual appearance, which
	can lead to undefined behavior.
	The returned paint bounds are in the local coordinate system of this box."
	^ 0@0 extent: self extent