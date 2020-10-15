Class {
	#name : #'GL1_4',
	#superclass : #'GL1_3',
	#category : #'OpenGL-Versions'
}

{ #category : #version }
GL1_4 class >> majorVersion [

	^ 1
]

{ #category : #version }
GL1_4 class >> minorVersion [

	^ 4
]

{ #category : #commands }
GL1_4 >> glBlendColor: red with: green with: blue with: alpha [

	<apicall: void 'glBlendColor' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glBlendEquation: mode [

	<apicall: void 'glBlendEquation' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glBlendFuncSeparate: sfactorRGB with: dfactorRGB with: sfactorAlpha with: dfactorAlpha [

	<apicall: void 'glBlendFuncSeparate' (GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glFogCoordPointer: type with: stride with: pointer [

	<apicall: void 'glFogCoordPointer' (GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glFogCoordd: coord [

	<apicall: void 'glFogCoordd' (GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glFogCoorddv: coord [

	<apicall: void 'glFogCoorddv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glFogCoordf: coord [

	<apicall: void 'glFogCoordf' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glFogCoordfv: coord [

	<apicall: void 'glFogCoordfv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glMultiDrawArrays: mode with: first with: count with: drawcount [

	<apicall: void 'glMultiDrawArrays' (GLenum GLint* GLsizei* GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glMultiDrawElements: mode with: count with: type with: indices with: drawcount [

	<apicall: void 'glMultiDrawElements' (GLenum GLsizei* GLenum void** GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glPointParameterf: pname with: param [

	<apicall: void 'glPointParameterf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glPointParameterfv: pname with: params [

	<apicall: void 'glPointParameterfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glPointParameteri: pname with: param [

	<apicall: void 'glPointParameteri' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glPointParameteriv: pname with: params [

	<apicall: void 'glPointParameteriv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3b: red with: green with: blue [

	<apicall: void 'glSecondaryColor3b' (GLbyte GLbyte GLbyte)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3bv: v [

	<apicall: void 'glSecondaryColor3bv' (GLbyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3d: red with: green with: blue [

	<apicall: void 'glSecondaryColor3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3dv: v [

	<apicall: void 'glSecondaryColor3dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3f: red with: green with: blue [

	<apicall: void 'glSecondaryColor3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3fv: v [

	<apicall: void 'glSecondaryColor3fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3i: red with: green with: blue [

	<apicall: void 'glSecondaryColor3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3iv: v [

	<apicall: void 'glSecondaryColor3iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3s: red with: green with: blue [

	<apicall: void 'glSecondaryColor3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3sv: v [

	<apicall: void 'glSecondaryColor3sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3ub: red with: green with: blue [

	<apicall: void 'glSecondaryColor3ub' (GLubyte GLubyte GLubyte)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3ubv: v [

	<apicall: void 'glSecondaryColor3ubv' (GLubyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3ui: red with: green with: blue [

	<apicall: void 'glSecondaryColor3ui' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3uiv: v [

	<apicall: void 'glSecondaryColor3uiv' (GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3us: red with: green with: blue [

	<apicall: void 'glSecondaryColor3us' (GLushort GLushort GLushort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColor3usv: v [

	<apicall: void 'glSecondaryColor3usv' (GLushort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glSecondaryColorPointer: size with: type with: stride with: pointer [

	<apicall: void 'glSecondaryColorPointer' (GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos2d: x with: y [

	<apicall: void 'glWindowPos2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos2dv: v [

	<apicall: void 'glWindowPos2dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos2f: x with: y [

	<apicall: void 'glWindowPos2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos2fv: v [

	<apicall: void 'glWindowPos2fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos2i: x with: y [

	<apicall: void 'glWindowPos2i' (GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos2iv: v [

	<apicall: void 'glWindowPos2iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos2s: x with: y [

	<apicall: void 'glWindowPos2s' (GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos2sv: v [

	<apicall: void 'glWindowPos2sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos3d: x with: y with: z [

	<apicall: void 'glWindowPos3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos3dv: v [

	<apicall: void 'glWindowPos3dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos3f: x with: y with: z [

	<apicall: void 'glWindowPos3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos3fv: v [

	<apicall: void 'glWindowPos3fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos3i: x with: y with: z [

	<apicall: void 'glWindowPos3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos3iv: v [

	<apicall: void 'glWindowPos3iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos3s: x with: y with: z [

	<apicall: void 'glWindowPos3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_4 >> glWindowPos3sv: v [

	<apicall: void 'glWindowPos3sv' (GLshort*)>
	^ self externalCallFailed
]
