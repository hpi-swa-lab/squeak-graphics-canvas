deprecated
disableTexture: aTexture
	changeTexture ifFalse:[^false].
	self glDisable: aTexture target.
	^ true.