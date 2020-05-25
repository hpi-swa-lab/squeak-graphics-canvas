accessing
patchRect

	^ patchRect := (self transform globalBoundsToLocal: clipRect) truncated