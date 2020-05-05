accessing
addCommand: aCommand

	self commands add: aCommand.
	aCommand isLayer ifTrue: [
		aCommand origin: self origin + aCommand offset].