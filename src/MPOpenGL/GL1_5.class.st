Class {
	#name : #'GL1_5',
	#superclass : #'GL1_4',
	#category : 'MPOpenGL-Versions'
}

{ #category : #commands }
GL1_5 >> glBeginQuery: target with: id [

	<apicall: void 'glBeginQuery' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glBindBuffer: target with: buffer [

	<apicall: void 'glBindBuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glBufferData: target with: size with: data with: usage [

	<apicall: void 'glBufferData' (GLenum GLsizeiptr void* GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glBufferSubData: target with: offset with: size with: data [

	<apicall: void 'glBufferSubData' (GLenum GLintptr GLsizeiptr void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glDeleteBuffers: n with: buffers [

	<apicall: void 'glDeleteBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glDeleteQueries: n with: ids [

	<apicall: void 'glDeleteQueries' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glEndQuery: target [

	<apicall: void 'glEndQuery' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glGenBuffers: n with: buffers [

	<apicall: void 'glGenBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glGenQueries: n with: ids [

	<apicall: void 'glGenQueries' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glGetBufferParameteriv: target with: pname with: params [

	<apicall: void 'glGetBufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glGetBufferPointerv: target with: pname with: params [

	<apicall: void 'glGetBufferPointerv' (GLenum GLenum void**)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glGetBufferSubData: target with: offset with: size with: data [

	<apicall: void 'glGetBufferSubData' (GLenum GLintptr GLsizeiptr void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glGetQueryObjectiv: id with: pname with: params [

	<apicall: void 'glGetQueryObjectiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glGetQueryObjectuiv: id with: pname with: params [

	<apicall: void 'glGetQueryObjectuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glGetQueryiv: target with: pname with: params [

	<apicall: void 'glGetQueryiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glIsBuffer: buffer [

	<apicall: GLboolean 'glIsBuffer' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glIsQuery: id [

	<apicall: GLboolean 'glIsQuery' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glMapBuffer: target with: access [

	<apicall: void* 'glMapBuffer' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_5 >> glUnmapBuffer: target [

	<apicall: GLboolean 'glUnmapBuffer' (GLenum)>
	^ self externalCallFailed
]

{ #category : #version }
GL1_5 >> majorVersion [

	^ 1
]

{ #category : #version }
GL1_5 >> minorVersion [

	^ 5
]
