Class {
	#name : #'GL3_3',
	#superclass : #'GL3_2',
	#category : #'OpenGL-Versions'
}

{ #category : #version }
GL3_3 class >> majorVersion [

	^ 3
]

{ #category : #version }
GL3_3 class >> minorVersion [

	^ 3
]

{ #category : #commands }
GL3_3 >> glBindFragDataLocationIndexed: program with: colorNumber with: index with: name [

	<apicall: void 'glBindFragDataLocationIndexed' (GLuint GLuint GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glBindSampler: unit with: sampler [

	<apicall: void 'glBindSampler' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glDeleteSamplers: count with: samplers [

	<apicall: void 'glDeleteSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glGenSamplers: count with: samplers [

	<apicall: void 'glGenSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glGetFragDataIndex: program with: name [

	<apicall: GLint 'glGetFragDataIndex' (GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glGetQueryObjecti64v: id with: pname with: params [

	<apicall: void 'glGetQueryObjecti64v' (GLuint GLenum GLint64*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glGetQueryObjectui64v: id with: pname with: params [

	<apicall: void 'glGetQueryObjectui64v' (GLuint GLenum GLuint64*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glGetSamplerParameterIiv: sampler with: pname with: params [

	<apicall: void 'glGetSamplerParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glGetSamplerParameterIuiv: sampler with: pname with: params [

	<apicall: void 'glGetSamplerParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glGetSamplerParameterfv: sampler with: pname with: params [

	<apicall: void 'glGetSamplerParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glGetSamplerParameteriv: sampler with: pname with: params [

	<apicall: void 'glGetSamplerParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glIsSampler: sampler [

	<apicall: GLboolean 'glIsSampler' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glQueryCounter: id with: target [

	<apicall: void 'glQueryCounter' (GLuint GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glSamplerParameterIiv: sampler with: pname with: param [

	<apicall: void 'glSamplerParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glSamplerParameterIuiv: sampler with: pname with: param [

	<apicall: void 'glSamplerParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glSamplerParameterf: sampler with: pname with: param [

	<apicall: void 'glSamplerParameterf' (GLuint GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glSamplerParameterfv: sampler with: pname with: param [

	<apicall: void 'glSamplerParameterfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glSamplerParameteri: sampler with: pname with: param [

	<apicall: void 'glSamplerParameteri' (GLuint GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glSamplerParameteriv: sampler with: pname with: param [

	<apicall: void 'glSamplerParameteriv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glVertexAttribDivisor: index with: divisor [

	<apicall: void 'glVertexAttribDivisor' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glVertexAttribP1ui: index with: type with: normalized with: value [

	<apicall: void 'glVertexAttribP1ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glVertexAttribP1uiv: index with: type with: normalized with: value [

	<apicall: void 'glVertexAttribP1uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glVertexAttribP2ui: index with: type with: normalized with: value [

	<apicall: void 'glVertexAttribP2ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glVertexAttribP2uiv: index with: type with: normalized with: value [

	<apicall: void 'glVertexAttribP2uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glVertexAttribP3ui: index with: type with: normalized with: value [

	<apicall: void 'glVertexAttribP3ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glVertexAttribP3uiv: index with: type with: normalized with: value [

	<apicall: void 'glVertexAttribP3uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glVertexAttribP4ui: index with: type with: normalized with: value [

	<apicall: void 'glVertexAttribP4ui' (GLuint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_3 >> glVertexAttribP4uiv: index with: type with: normalized with: value [

	<apicall: void 'glVertexAttribP4uiv' (GLuint GLenum GLboolean GLuint*)>
	^ self externalCallFailed
]
