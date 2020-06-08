private
currentCommand: aNode during: aBlock

	| previousNode |
	previousNode := currentCommand.
	currentCommand := aNode.
	aBlock ensure: [currentCommand := previousNode]