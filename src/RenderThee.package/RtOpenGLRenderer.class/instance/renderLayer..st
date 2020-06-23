rendering
renderLayer: aMorph
	| visitor |
	visitor := RtOpenGLVisitor new
			rootMatrix: (Matrix4x4 withOffset: -1 @ 1 @ 0) * (Matrix4x4 withScale: (2.0 / aMorph width) @ (-2.0 / aMorph height) @ 1.0);
			drawCallback: [:transform :texture |
				program
					uniform: mvpUniform
					value: transform.
				texture bind.
				vbo draw: GL_TRIANGLE_STRIP].
			
	aMorph groupLayer visit: visitor.
