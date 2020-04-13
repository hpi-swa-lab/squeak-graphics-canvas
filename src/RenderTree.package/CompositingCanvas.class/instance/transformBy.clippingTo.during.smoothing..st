drawing-support
transformBy: aMorphicTransform clippingTo: aRectangle during: aBlock smoothing: anInteger

	| command oldTransform |
	oldTransform := transform.
	transform := transform composedWithGlobal: aMorphicTransform.
	
	command := DrawTransform new transformBy: aMorphicTransform clippingTo: aRectangle smoothing: anInteger.
	currentCommand addCommand: command.
	
	self currentCommand: command during: [aBlock value: self].
	transform := oldTransform