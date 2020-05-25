accessing
assertForm: formDescription

	| expected actual |
	actual := self canvasForm.
	expected := self formDescriptionToForm: formDescription.
	self assert: expected depth equals: actual depth.
	self assert: expected extent equals: actual extent.
	self assert: expected bits equals: actual bits