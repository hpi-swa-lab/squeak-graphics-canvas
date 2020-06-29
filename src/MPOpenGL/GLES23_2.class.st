Class {
	#name : #'GLES23_2',
	#superclass : #'GLES23_1',
	#category : #'MPOpenGL-Versions'
}

{ #category : #commands }
GLES23_2 >> glBlendBarrier [

	<apicall: void 'glBlendBarrier' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glBlendEquationSeparatei: buf with: modeRGB with: modeAlpha [

	<apicall: void 'glBlendEquationSeparatei' (GLuint GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glBlendEquationi: buf with: mode [

	<apicall: void 'glBlendEquationi' (GLuint GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glBlendFuncSeparatei: buf with: srcRGB with: dstRGB with: srcAlpha with: dstAlpha [

	<apicall: void 'glBlendFuncSeparatei' (GLuint GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glBlendFunci: buf with: src with: dst [

	<apicall: void 'glBlendFunci' (GLuint GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glColorMaski: index with: r with: g with: b with: a [

	<apicall: void 'glColorMaski' (GLuint GLboolean GLboolean GLboolean GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glCopyImageSubData: srcName with: srcTarget with: srcLevel with: srcX with: srcY with: srcZ with: dstName with: dstTarget with: dstLevel with: dstX with: dstY with: dstZ with: srcWidth with: srcHeight with: srcDepth [

	<apicall: void 'glCopyImageSubData' (GLuint GLenum GLint GLint GLint GLint GLuint GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glDebugMessageCallback: callback with: userParam [

	<apicall: void 'glDebugMessageCallback' (GLDEBUGPROC void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glDebugMessageControl: source with: type with: severity with: count with: ids with: enabled [

	<apicall: void 'glDebugMessageControl' (GLenum GLenum GLenum GLsizei GLuint* GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glDebugMessageInsert: source with: type with: id with: severity with: length with: buf [

	<apicall: void 'glDebugMessageInsert' (GLenum GLenum GLuint GLenum GLsizei GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glDisablei: target with: index [

	<apicall: void 'glDisablei' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glDrawElementsBaseVertex: mode with: count with: type with: indices with: basevertex [

	<apicall: void 'glDrawElementsBaseVertex' (GLenum GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glDrawElementsInstancedBaseVertex: mode with: count with: type with: indices with: instancecount with: basevertex [

	<apicall: void 'glDrawElementsInstancedBaseVertex' (GLenum GLsizei GLenum void* GLsizei GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glDrawRangeElementsBaseVertex: mode with: start with: end with: count with: type with: indices with: basevertex [

	<apicall: void 'glDrawRangeElementsBaseVertex' (GLenum GLuint GLuint GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glEnablei: target with: index [

	<apicall: void 'glEnablei' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glFramebufferTexture: target with: attachment with: texture with: level [

	<apicall: void 'glFramebufferTexture' (GLenum GLenum GLuint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glGetDebugMessageLog: count with: bufSize with: sources with: types with: ids with: severities with: lengths with: messageLog [

	<apicall: GLuint 'glGetDebugMessageLog' (GLuint GLsizei GLenum* GLenum* GLuint* GLenum* GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glGetGraphicsResetStatus [

	<apicall: GLenum 'glGetGraphicsResetStatus' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glGetObjectLabel: identifier with: name with: bufSize with: length with: label [

	<apicall: void 'glGetObjectLabel' (GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glGetObjectPtrLabel: ptr with: bufSize with: length with: label [

	<apicall: void 'glGetObjectPtrLabel' (void* GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glGetPointerv: pname with: params [

	<apicall: void 'glGetPointerv' (GLenum void**)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glGetSamplerParameterIiv: sampler with: pname with: params [

	<apicall: void 'glGetSamplerParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glGetSamplerParameterIuiv: sampler with: pname with: params [

	<apicall: void 'glGetSamplerParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glGetTexParameterIiv: target with: pname with: params [

	<apicall: void 'glGetTexParameterIiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glGetTexParameterIuiv: target with: pname with: params [

	<apicall: void 'glGetTexParameterIuiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glGetnUniformfv: program with: location with: bufSize with: params [

	<apicall: void 'glGetnUniformfv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glGetnUniformiv: program with: location with: bufSize with: params [

	<apicall: void 'glGetnUniformiv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glGetnUniformuiv: program with: location with: bufSize with: params [

	<apicall: void 'glGetnUniformuiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glIsEnabledi: target with: index [

	<apicall: GLboolean 'glIsEnabledi' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glMinSampleShading: value [

	<apicall: void 'glMinSampleShading' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glObjectLabel: identifier with: name with: length with: label [

	<apicall: void 'glObjectLabel' (GLenum GLuint GLsizei GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glObjectPtrLabel: ptr with: length with: label [

	<apicall: void 'glObjectPtrLabel' (void* GLsizei GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glPatchParameteri: pname with: value [

	<apicall: void 'glPatchParameteri' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glPopDebugGroup [

	<apicall: void 'glPopDebugGroup' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glPrimitiveBoundingBox: minX with: minY with: minZ with: minW with: maxX with: maxY with: maxZ with: maxW [

	<apicall: void 'glPrimitiveBoundingBox' (GLfloat GLfloat GLfloat GLfloat GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glPushDebugGroup: source with: id with: length with: message [

	<apicall: void 'glPushDebugGroup' (GLenum GLuint GLsizei GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glReadnPixels: x with: y with: width with: height with: format with: type with: bufSize with: data [

	<apicall: void 'glReadnPixels' (GLint GLint GLsizei GLsizei GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glSamplerParameterIiv: sampler with: pname with: param [

	<apicall: void 'glSamplerParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glSamplerParameterIuiv: sampler with: pname with: param [

	<apicall: void 'glSamplerParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glTexBuffer: target with: internalformat with: buffer [

	<apicall: void 'glTexBuffer' (GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glTexBufferRange: target with: internalformat with: buffer with: offset with: size [

	<apicall: void 'glTexBufferRange' (GLenum GLenum GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glTexParameterIiv: target with: pname with: params [

	<apicall: void 'glTexParameterIiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glTexParameterIuiv: target with: pname with: params [

	<apicall: void 'glTexParameterIuiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES23_2 >> glTexStorage3DMultisample: target with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<apicall: void 'glTexStorage3DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{ #category : #version }
GLES23_2 >> majorVersion [

	^ 3
]

{ #category : #version }
GLES23_2 >> minorVersion [

	^ 2
]
