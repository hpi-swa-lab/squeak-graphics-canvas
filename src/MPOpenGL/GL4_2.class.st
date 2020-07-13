Class {
	#name : #'GL4_2',
	#superclass : #'GL4_1',
	#category : #'MPOpenGL-Versions'
}

{ #category : #commands }
GL4_2 >> glBindImageTexture: unit with: texture with: level with: layered with: layer with: access with: format [

	<apicall: void 'glBindImageTexture' (GLuint GLuint GLint GLboolean GLint GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_2 >> glDrawArraysInstancedBaseInstance: mode with: first with: count with: instancecount with: baseinstance [

	<apicall: void 'glDrawArraysInstancedBaseInstance' (GLenum GLint GLsizei GLsizei GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_2 >> glDrawElementsInstancedBaseInstance: mode with: count with: type with: indices with: instancecount with: baseinstance [

	<apicall: void 'glDrawElementsInstancedBaseInstance' (GLenum GLsizei GLenum void* GLsizei GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_2 >> glDrawElementsInstancedBaseVertexBaseInstance: mode with: count with: type with: indices with: instancecount with: basevertex with: baseinstance [

	<apicall: void 'glDrawElementsInstancedBaseVertexBaseInstance' (GLenum GLsizei GLenum void* GLsizei GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_2 >> glDrawTransformFeedbackInstanced: mode with: id with: instancecount [

	<apicall: void 'glDrawTransformFeedbackInstanced' (GLenum GLuint GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_2 >> glDrawTransformFeedbackStreamInstanced: mode with: id with: stream with: instancecount [

	<apicall: void 'glDrawTransformFeedbackStreamInstanced' (GLenum GLuint GLuint GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_2 >> glGetActiveAtomicCounterBufferiv: program with: bufferIndex with: pname with: params [

	<apicall: void 'glGetActiveAtomicCounterBufferiv' (GLuint GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_2 >> glGetInternalformativ: target with: internalformat with: pname with: count with: params [

	<apicall: void 'glGetInternalformativ' (GLenum GLenum GLenum GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_2 >> glMemoryBarrier: barriers [

	<apicall: void 'glMemoryBarrier' (GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_2 >> glTexStorage1D: target with: levels with: internalformat with: width [

	<apicall: void 'glTexStorage1D' (GLenum GLsizei GLenum GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_2 >> glTexStorage2D: target with: levels with: internalformat with: width with: height [

	<apicall: void 'glTexStorage2D' (GLenum GLsizei GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL4_2 >> glTexStorage3D: target with: levels with: internalformat with: width with: height with: depth [

	<apicall: void 'glTexStorage3D' (GLenum GLsizei GLenum GLsizei GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #version }
GL4_2 >> majorVersion [

	^ 4
]

{ #category : #version }
GL4_2 >> minorVersion [

	^ 2
]
