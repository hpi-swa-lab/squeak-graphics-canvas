rendering
renderLayer: aLayer
<<<<<<< HEAD
	| visitor |
	visitor := RtOpenGLVisitor new: self.
	visitor rootMatrix: (Matrix4x4 withOffset: -1 @ -1 @ 0) * (Matrix4x4 withScale: (2.0 / aLayer extent x) @ (2.0 / aLayer extent y) @ 1.0);
			drawCallback: [:transform :texture |
				program
					uniform: mvpUniform
					value: transform.
				texture bind.
				vbo draw: GL_TRIANGLE_STRIP].
			
	aLayer children do: [ :child | child visit: visitor ].
=======

	self renderLayer: aLayer flipVertical: false
>>>>>>> 9e6ed030aa93d5f4a551b836b4626df8fe78739d
