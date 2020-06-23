rendering
renderLayer: aLayer
	| visitor |
	visitor := RtOpenGLVisitor new: self.
	visitor rootMatrix: (Matrix4x4 withOffset: -1 @ 1 @ 0) * (Matrix4x4 withScale: (2.0 / aLayer extent x) @ (-2.0 / aLayer extent y) @ 1.0);
			drawCallback: [:transform :texture |
				program
					uniform: mvpUniform
					value: transform.
				texture bind.
				vbo draw: GL_TRIANGLE_STRIP].
			
	aLayer visit: visitor.
