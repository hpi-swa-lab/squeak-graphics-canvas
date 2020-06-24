rendering
renderLayer: aLayer flipVertical: aBoolean
	| visitor |
	visitor := RtOpenGLVisitor new: self.
	visitor rootMatrix: (Matrix4x4 ortho: (aBoolean ifTrue: [0 @ aLayer extent y corner: aLayer extent x @ 0] ifFalse: [0 @ 0 corner: aLayer extent]) near: 0 far: 1)
		;
			drawCallback: [:transform :texture |
				program
					uniform: mvpUniform
					value: transform.
				texture bind.
				vbo draw: GL_TRIANGLE_STRIP].
			
	aLayer children do: [ :child | child visit: visitor ].
