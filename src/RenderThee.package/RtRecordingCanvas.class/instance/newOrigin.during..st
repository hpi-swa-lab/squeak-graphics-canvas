private
newOrigin: newOrigin during: aBlock

	| previousOrigin |
	previousOrigin := self origin.
	self origin: newOrigin.
	aBlock value: self.
	self origin: previousOrigin