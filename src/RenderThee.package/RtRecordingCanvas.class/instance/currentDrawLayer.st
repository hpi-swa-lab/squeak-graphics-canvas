accessing
currentDrawLayer

	^ currentDrawLayer ifNil: [currentDrawLayer := RtDrawLayer new]