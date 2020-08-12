Class {
	#name : #'GL4_4',
	#superclass : #'GL4_3',
	#category : #'MPOpenGL-Versions'
}

{ #category : #version }
GL4_4 class >> majorVersion [

	^ 4
]

{ #category : #version }
GL4_4 class >> minorVersion [

	^ 4
]

{ #category : #commands }
GL4_4 >> glBindBuffersBase: target with: first with: count with: buffers [

	<apicall: void 'glBindBuffersBase' (GLenum GLuint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_4 >> glBindBuffersRange: target with: first with: count with: buffers with: offsets with: sizes [

	<apicall: void 'glBindBuffersRange' (GLenum GLuint GLsizei GLuint* GLintptr* GLsizeiptr*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_4 >> glBindImageTextures: first with: count with: textures [

	<apicall: void 'glBindImageTextures' (GLuint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_4 >> glBindSamplers: first with: count with: samplers [

	<apicall: void 'glBindSamplers' (GLuint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_4 >> glBindTextures: first with: count with: textures [

	<apicall: void 'glBindTextures' (GLuint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_4 >> glBindVertexBuffers: first with: count with: buffers with: offsets with: strides [

	<apicall: void 'glBindVertexBuffers' (GLuint GLsizei GLuint* GLintptr* GLsizei*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_4 >> glBufferStorage: target with: size with: data with: flags [

	<apicall: void 'glBufferStorage' (GLenum GLsizeiptr void* GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_4 >> glClearTexImage: texture with: level with: format with: type with: data [

	<apicall: void 'glClearTexImage' (GLuint GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_4 >> glClearTexSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: data [

	<apicall: void 'glClearTexSubImage' (GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]
