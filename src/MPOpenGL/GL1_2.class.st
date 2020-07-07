Class {
	#name : #'GL1_2',
	#superclass : #'GL1_1',
	#category : 'MPOpenGL-Versions'
}

{ #category : #commands }
GL1_2 >> glCopyTexSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: x with: y with: width with: height [

	<apicall: void 'glCopyTexSubImage3D' (GLenum GLint GLint GLint GLint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_2 >> glDrawRangeElements: mode with: start with: end with: count with: type with: indices [

	<apicall: void 'glDrawRangeElements' (GLenum GLuint GLuint GLsizei GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_2 >> glTexImage3D: target with: level with: internalformat with: width with: height with: depth with: border with: format with: type with: pixels [

	<apicall: void 'glTexImage3D' (GLenum GLint GLint GLsizei GLsizei GLsizei GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_2 >> glTexSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: pixels [

	<apicall: void 'glTexSubImage3D' (GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #version }
GL1_2 >> majorVersion [

	^ 1
]

{ #category : #version }
GL1_2 >> minorVersion [

	^ 2
]
