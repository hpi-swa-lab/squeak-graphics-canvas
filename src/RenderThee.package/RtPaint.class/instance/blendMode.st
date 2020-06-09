accessing
blendMode
	"A blend mode to apply when a shape is drawn or a layer is composited.
	Possible values:
		#clear			replaces destination with zero: fully transparent
		#src			replaces destination
		#dst			preserves destination
		#srcOver		source over destination
		#dstOver		destination over source
		#srcIn			source trimmed inside destination
		#dstIn			destination trimmed outside source
		#srcOut		source trimmed outside destination
		#dstOut		source trimmed outside source
		#srcATop		source inside destination blended with destination
		#dstATop		destination inside source blended with source
		#xor			each of source and destination trimmed outside the other
		#plus			sum of colors
		#modulate		product of premultiplied colors; darkens destination
		..."
	^ blendMode ifNil: [#srcOver]