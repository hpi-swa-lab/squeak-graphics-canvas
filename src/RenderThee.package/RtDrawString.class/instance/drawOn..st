drawing
drawOn: aCanvas

	aCanvas
		drawString: self contents
		from: self from
		to: self to
		in: self bounds
		font: self font
		color: self color