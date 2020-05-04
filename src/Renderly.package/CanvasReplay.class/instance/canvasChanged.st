toolbuilder
canvasChanged

	| canvas |
	canvas := FormCanvas extent: 100@100.
	canvas fillColor: Color random.
	self triggerEvent: #canvasChanged: with: canvas form