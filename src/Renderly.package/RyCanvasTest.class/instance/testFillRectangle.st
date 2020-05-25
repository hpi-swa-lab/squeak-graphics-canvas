tests - drawing - rectangles
testFillRectangle

	canvas fillRectangle: (0@0 corner: 10@10) color: Color red.
	canvas fillRectangle: (1@1 corner: 6@6) color: Color green.
	canvas fillRectangle: (4@4 corner: 9@7) color: Color blue.
	self assertForm:
'RRRRRRRRRR
RGGGGGRRRR
RGGGGGRRRR
RGGGGGRRRR
RGGGBBBBBR
RGGGBBBBBR
RRRRBBBBBR
RRRRRRRRRR
RRRRRRRRRR
RRRRRRRRRR'