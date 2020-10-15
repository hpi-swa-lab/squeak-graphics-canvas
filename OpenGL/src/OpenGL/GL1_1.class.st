Class {
	#name : #'GL1_1',
	#superclass : #'GL1_0',
	#category : #'OpenGL-Versions'
}

{ #category : #version }
GL1_1 class >> majorVersion [

	^ 1
]

{ #category : #version }
GL1_1 class >> minorVersion [

	^ 1
]

{ #category : #commands }
GL1_1 >> glAreTexturesResident: n with: textures with: residences [

	<apicall: GLboolean 'glAreTexturesResident' (GLsizei GLuint* GLboolean*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glArrayElement: i [

	<apicall: void 'glArrayElement' (GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glBindTexture: target with: texture [

	<apicall: void 'glBindTexture' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glColorPointer: size with: type with: stride with: pointer [

	<apicall: void 'glColorPointer' (GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glCopyTexImage1D: target with: level with: internalformat with: x with: y with: width with: border [

	<apicall: void 'glCopyTexImage1D' (GLenum GLint GLenum GLint GLint GLsizei GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glCopyTexImage2D: target with: level with: internalformat with: x with: y with: width with: height with: border [

	<apicall: void 'glCopyTexImage2D' (GLenum GLint GLenum GLint GLint GLsizei GLsizei GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glCopyTexSubImage1D: target with: level with: xoffset with: x with: y with: width [

	<apicall: void 'glCopyTexSubImage1D' (GLenum GLint GLint GLint GLint GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glCopyTexSubImage2D: target with: level with: xoffset with: yoffset with: x with: y with: width with: height [

	<apicall: void 'glCopyTexSubImage2D' (GLenum GLint GLint GLint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glDeleteTextures: n with: textures [

	<apicall: void 'glDeleteTextures' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glDisableClientState: array [

	<apicall: void 'glDisableClientState' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glDrawArrays: mode with: first with: count [

	<apicall: void 'glDrawArrays' (GLenum GLint GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glDrawElements: mode with: count with: type with: indices [

	<apicall: void 'glDrawElements' (GLenum GLsizei GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glEdgeFlagPointer: stride with: pointer [

	<apicall: void 'glEdgeFlagPointer' (GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glEnableClientState: array [

	<apicall: void 'glEnableClientState' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glGenTextures: n with: textures [

	<apicall: void 'glGenTextures' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glGetPointerv: pname with: params [

	<apicall: void 'glGetPointerv' (GLenum void**)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glIndexPointer: type with: stride with: pointer [

	<apicall: void 'glIndexPointer' (GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glIndexub: c [

	<apicall: void 'glIndexub' (GLubyte)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glIndexubv: c [

	<apicall: void 'glIndexubv' (GLubyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glInterleavedArrays: format with: stride with: pointer [

	<apicall: void 'glInterleavedArrays' (GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glIsTexture: texture [

	<apicall: GLboolean 'glIsTexture' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glNormalPointer: type with: stride with: pointer [

	<apicall: void 'glNormalPointer' (GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glPolygonOffset: factor with: units [

	<apicall: void 'glPolygonOffset' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glPopClientAttrib [

	<apicall: void 'glPopClientAttrib' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glPrioritizeTextures: n with: textures with: priorities [

	<apicall: void 'glPrioritizeTextures' (GLsizei GLuint* GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glPushClientAttrib: mask [

	<apicall: void 'glPushClientAttrib' (GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glTexCoordPointer: size with: type with: stride with: pointer [

	<apicall: void 'glTexCoordPointer' (GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glTexSubImage1D: target with: level with: xoffset with: width with: format with: type with: pixels [

	<apicall: void 'glTexSubImage1D' (GLenum GLint GLint GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glTexSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: type with: pixels [

	<apicall: void 'glTexSubImage2D' (GLenum GLint GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_1 >> glVertexPointer: size with: type with: stride with: pointer [

	<apicall: void 'glVertexPointer' (GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]
