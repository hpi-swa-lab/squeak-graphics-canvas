visiting
rasterizeTexture
	| tex form |
	form := self rasterizeForm.
	tex := GLTexture new.
	tex texImage: form.
	^ tex
