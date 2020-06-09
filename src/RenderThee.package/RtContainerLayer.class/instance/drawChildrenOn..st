compositing
drawChildrenOn: canvas

	layers do: [:layer | layer drawOn: canvas]