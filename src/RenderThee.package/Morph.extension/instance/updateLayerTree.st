*RenderThee
updateLayerTree
	"we have:
	- morphs to redraw
	- nun-current layer tree
	
	we want:
	- current layer tree"
	
	self morphsToRedraw do: [ :morph | morph updateLayer ].
	self morphsToRedraw: nil.