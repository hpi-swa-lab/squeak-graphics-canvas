drawing
drawChildrenOn: canvas

	children do: [:layer | layer drawOn: canvas]