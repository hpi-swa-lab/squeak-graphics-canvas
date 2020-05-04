toolbuilder
buildWith: builder

	| canvasSpec treeSpec windowSpec |
	canvasSpec := builder pluggablePanelSpec new
		model: self;
		children: #panelChildren;
		yourself.
	
	treeSpec := builder pluggableTreeSpec new
		model: self;
		yourself.
	
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 0.3@1) -> [treeSpec].
		(0.3@0 corner: 1@1) -> [canvasSpec].
	}.
	
	^ builder build: windowSpec