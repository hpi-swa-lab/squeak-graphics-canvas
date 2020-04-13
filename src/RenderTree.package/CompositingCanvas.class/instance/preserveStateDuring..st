balloon
preserveStateDuring: aBlock

	| command oldTransform |
	self flag: #todo. " we disregard balloon's color transform (unused in my image) "
	oldTransform := transform.
	
	command := DrawTransform new transformBy: MatrixTransform2x3 identity clippingTo: currentCommand clipRect smoothing: 2.
	currentCommand addCommand: command.
	self currentCommand: command during: [aBlock value: self].
	
	transform := oldTransform.