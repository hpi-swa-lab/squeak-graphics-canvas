Class {
	#name : #'GLES22_0',
	#superclass : #GLES2Version,
	#category : #'MPOpenGL-Versions'
}

{ #category : #commands }
GLES22_0 >> glActiveTexture: texture [

	<apicall: void 'glActiveTexture' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glAttachShader: program with: shader [

	<apicall: void 'glAttachShader' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glBindAttribLocation: program with: index with: name [

	<apicall: void 'glBindAttribLocation' (GLuint GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glBindBuffer: target with: buffer [

	<apicall: void 'glBindBuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glBindFramebuffer: target with: framebuffer [

	<apicall: void 'glBindFramebuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glBindRenderbuffer: target with: renderbuffer [

	<apicall: void 'glBindRenderbuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glBindTexture: target with: texture [

	<apicall: void 'glBindTexture' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glBlendColor: red with: green with: blue with: alpha [

	<apicall: void 'glBlendColor' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glBlendEquation: mode [

	<apicall: void 'glBlendEquation' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glBlendEquationSeparate: modeRGB with: modeAlpha [

	<apicall: void 'glBlendEquationSeparate' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glBlendFunc: sfactor with: dfactor [

	<apicall: void 'glBlendFunc' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glBlendFuncSeparate: sfactorRGB with: dfactorRGB with: sfactorAlpha with: dfactorAlpha [

	<apicall: void 'glBlendFuncSeparate' (GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glBufferData: target with: size with: data with: usage [

	<apicall: void 'glBufferData' (GLenum GLsizeiptr void* GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glBufferSubData: target with: offset with: size with: data [

	<apicall: void 'glBufferSubData' (GLenum GLintptr GLsizeiptr void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glCheckFramebufferStatus: target [

	<apicall: GLenum 'glCheckFramebufferStatus' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glClear: mask [

	<apicall: void 'glClear' (GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glClearColor: red with: green with: blue with: alpha [

	<apicall: void 'glClearColor' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glClearDepthf: d [

	<apicall: void 'glClearDepthf' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glClearStencil: s [

	<apicall: void 'glClearStencil' (GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glColorMask: red with: green with: blue with: alpha [

	<apicall: void 'glColorMask' (GLboolean GLboolean GLboolean GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glCompileShader: shader [

	<apicall: void 'glCompileShader' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glCompressedTexImage2D: target with: level with: internalformat with: width with: height with: border with: imageSize with: data [

	<apicall: void 'glCompressedTexImage2D' (GLenum GLint GLenum GLsizei GLsizei GLint GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glCompressedTexSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: imageSize with: data [

	<apicall: void 'glCompressedTexSubImage2D' (GLenum GLint GLint GLint GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glCopyTexImage2D: target with: level with: internalformat with: x with: y with: width with: height with: border [

	<apicall: void 'glCopyTexImage2D' (GLenum GLint GLenum GLint GLint GLsizei GLsizei GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glCopyTexSubImage2D: target with: level with: xoffset with: yoffset with: x with: y with: width with: height [

	<apicall: void 'glCopyTexSubImage2D' (GLenum GLint GLint GLint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glCreateProgram [

	<apicall: GLuint 'glCreateProgram' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glCreateShader: type [

	<apicall: GLuint 'glCreateShader' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glCullFace: mode [

	<apicall: void 'glCullFace' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDeleteBuffers: n with: buffers [

	<apicall: void 'glDeleteBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDeleteFramebuffers: n with: framebuffers [

	<apicall: void 'glDeleteFramebuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDeleteProgram: program [

	<apicall: void 'glDeleteProgram' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDeleteRenderbuffers: n with: renderbuffers [

	<apicall: void 'glDeleteRenderbuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDeleteShader: shader [

	<apicall: void 'glDeleteShader' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDeleteTextures: n with: textures [

	<apicall: void 'glDeleteTextures' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDepthFunc: func [

	<apicall: void 'glDepthFunc' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDepthMask: flag [

	<apicall: void 'glDepthMask' (GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDepthRangef: n with: f [

	<apicall: void 'glDepthRangef' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDetachShader: program with: shader [

	<apicall: void 'glDetachShader' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDisable: cap [

	<apicall: void 'glDisable' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDisableVertexAttribArray: index [

	<apicall: void 'glDisableVertexAttribArray' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDrawArrays: mode with: first with: count [

	<apicall: void 'glDrawArrays' (GLenum GLint GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glDrawElements: mode with: count with: type with: indices [

	<apicall: void 'glDrawElements' (GLenum GLsizei GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glEnable: cap [

	<apicall: void 'glEnable' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glEnableVertexAttribArray: index [

	<apicall: void 'glEnableVertexAttribArray' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glFinish [

	<apicall: void 'glFinish' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glFlush [

	<apicall: void 'glFlush' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glFramebufferRenderbuffer: target with: attachment with: renderbuffertarget with: renderbuffer [

	<apicall: void 'glFramebufferRenderbuffer' (GLenum GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glFramebufferTexture2D: target with: attachment with: textarget with: texture with: level [

	<apicall: void 'glFramebufferTexture2D' (GLenum GLenum GLenum GLuint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glFrontFace: mode [

	<apicall: void 'glFrontFace' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGenBuffers: n with: buffers [

	<apicall: void 'glGenBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGenFramebuffers: n with: framebuffers [

	<apicall: void 'glGenFramebuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGenRenderbuffers: n with: renderbuffers [

	<apicall: void 'glGenRenderbuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGenTextures: n with: textures [

	<apicall: void 'glGenTextures' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGenerateMipmap: target [

	<apicall: void 'glGenerateMipmap' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetActiveAttrib: program with: index with: bufSize with: length with: size with: type with: name [

	<apicall: void 'glGetActiveAttrib' (GLuint GLuint GLsizei GLsizei* GLint* GLenum* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetActiveUniform: program with: index with: bufSize with: length with: size with: type with: name [

	<apicall: void 'glGetActiveUniform' (GLuint GLuint GLsizei GLsizei* GLint* GLenum* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetAttachedShaders: program with: maxCount with: count with: shaders [

	<apicall: void 'glGetAttachedShaders' (GLuint GLsizei GLsizei* GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetAttribLocation: program with: name [

	<apicall: GLint 'glGetAttribLocation' (GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetBooleanv: pname with: data [

	<apicall: void 'glGetBooleanv' (GLenum GLboolean*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetBufferParameteriv: target with: pname with: params [

	<apicall: void 'glGetBufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetError [

	<apicall: GLenum 'glGetError' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetFloatv: pname with: data [

	<apicall: void 'glGetFloatv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetFramebufferAttachmentParameteriv: target with: attachment with: pname with: params [

	<apicall: void 'glGetFramebufferAttachmentParameteriv' (GLenum GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetIntegerv: pname with: data [

	<apicall: void 'glGetIntegerv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetProgramInfoLog: program with: bufSize with: length with: infoLog [

	<apicall: void 'glGetProgramInfoLog' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetProgramiv: program with: pname with: params [

	<apicall: void 'glGetProgramiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetRenderbufferParameteriv: target with: pname with: params [

	<apicall: void 'glGetRenderbufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetShaderInfoLog: shader with: bufSize with: length with: infoLog [

	<apicall: void 'glGetShaderInfoLog' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetShaderPrecisionFormat: shadertype with: precisiontype with: range with: precision [

	<apicall: void 'glGetShaderPrecisionFormat' (GLenum GLenum GLint* GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetShaderSource: shader with: bufSize with: length with: source [

	<apicall: void 'glGetShaderSource' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetShaderiv: shader with: pname with: params [

	<apicall: void 'glGetShaderiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetString: name [

	<apicall: GLubyte* 'glGetString' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetTexParameterfv: target with: pname with: params [

	<apicall: void 'glGetTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetTexParameteriv: target with: pname with: params [

	<apicall: void 'glGetTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetUniformLocation: program with: name [

	<apicall: GLint 'glGetUniformLocation' (GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetUniformfv: program with: location with: params [

	<apicall: void 'glGetUniformfv' (GLuint GLint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetUniformiv: program with: location with: params [

	<apicall: void 'glGetUniformiv' (GLuint GLint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetVertexAttribPointerv: index with: pname with: pointer [

	<apicall: void 'glGetVertexAttribPointerv' (GLuint GLenum void**)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetVertexAttribfv: index with: pname with: params [

	<apicall: void 'glGetVertexAttribfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glGetVertexAttribiv: index with: pname with: params [

	<apicall: void 'glGetVertexAttribiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glHint: target with: mode [

	<apicall: void 'glHint' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glIsBuffer: buffer [

	<apicall: GLboolean 'glIsBuffer' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glIsEnabled: cap [

	<apicall: GLboolean 'glIsEnabled' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glIsFramebuffer: framebuffer [

	<apicall: GLboolean 'glIsFramebuffer' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glIsProgram: program [

	<apicall: GLboolean 'glIsProgram' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glIsRenderbuffer: renderbuffer [

	<apicall: GLboolean 'glIsRenderbuffer' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glIsShader: shader [

	<apicall: GLboolean 'glIsShader' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glIsTexture: texture [

	<apicall: GLboolean 'glIsTexture' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glLineWidth: width [

	<apicall: void 'glLineWidth' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glLinkProgram: program [

	<apicall: void 'glLinkProgram' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glPixelStorei: pname with: param [

	<apicall: void 'glPixelStorei' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glPolygonOffset: factor with: units [

	<apicall: void 'glPolygonOffset' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glReadPixels: x with: y with: width with: height with: format with: type with: pixels [

	<apicall: void 'glReadPixels' (GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glReleaseShaderCompiler [

	<apicall: void 'glReleaseShaderCompiler' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glRenderbufferStorage: target with: internalformat with: width with: height [

	<apicall: void 'glRenderbufferStorage' (GLenum GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glSampleCoverage: value with: invert [

	<apicall: void 'glSampleCoverage' (GLfloat GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glScissor: x with: y with: width with: height [

	<apicall: void 'glScissor' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glShaderBinary: count with: shaders with: binaryformat with: binary with: length [

	<apicall: void 'glShaderBinary' (GLsizei GLuint* GLenum void* GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glShaderSource: shader with: count with: string with: length [

	<apicall: void 'glShaderSource' (GLuint GLsizei GLchar** GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glStencilFunc: func with: ref with: mask [

	<apicall: void 'glStencilFunc' (GLenum GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glStencilFuncSeparate: face with: func with: ref with: mask [

	<apicall: void 'glStencilFuncSeparate' (GLenum GLenum GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glStencilMask: mask [

	<apicall: void 'glStencilMask' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glStencilMaskSeparate: face with: mask [

	<apicall: void 'glStencilMaskSeparate' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glStencilOp: fail with: zfail with: zpass [

	<apicall: void 'glStencilOp' (GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glStencilOpSeparate: face with: sfail with: dpfail with: dppass [

	<apicall: void 'glStencilOpSeparate' (GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glTexImage2D: target with: level with: internalformat with: width with: height with: border with: format with: type with: pixels [

	<apicall: void 'glTexImage2D' (GLenum GLint GLint GLsizei GLsizei GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glTexParameterf: target with: pname with: param [

	<apicall: void 'glTexParameterf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glTexParameterfv: target with: pname with: params [

	<apicall: void 'glTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glTexParameteri: target with: pname with: param [

	<apicall: void 'glTexParameteri' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glTexParameteriv: target with: pname with: params [

	<apicall: void 'glTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glTexSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: type with: pixels [

	<apicall: void 'glTexSubImage2D' (GLenum GLint GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform1f: location with: v0 [

	<apicall: void 'glUniform1f' (GLint GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform1fv: location with: count with: value [

	<apicall: void 'glUniform1fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform1i: location with: v0 [

	<apicall: void 'glUniform1i' (GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform1iv: location with: count with: value [

	<apicall: void 'glUniform1iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform2f: location with: v0 with: v1 [

	<apicall: void 'glUniform2f' (GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform2fv: location with: count with: value [

	<apicall: void 'glUniform2fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform2i: location with: v0 with: v1 [

	<apicall: void 'glUniform2i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform2iv: location with: count with: value [

	<apicall: void 'glUniform2iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform3f: location with: v0 with: v1 with: v2 [

	<apicall: void 'glUniform3f' (GLint GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform3fv: location with: count with: value [

	<apicall: void 'glUniform3fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform3i: location with: v0 with: v1 with: v2 [

	<apicall: void 'glUniform3i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform3iv: location with: count with: value [

	<apicall: void 'glUniform3iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform4f: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glUniform4f' (GLint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform4fv: location with: count with: value [

	<apicall: void 'glUniform4fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform4i: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glUniform4i' (GLint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniform4iv: location with: count with: value [

	<apicall: void 'glUniform4iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniformMatrix2fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix2fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniformMatrix3fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix3fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUniformMatrix4fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix4fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glUseProgram: program [

	<apicall: void 'glUseProgram' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glValidateProgram: program [

	<apicall: void 'glValidateProgram' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glVertexAttrib1f: index with: x [

	<apicall: void 'glVertexAttrib1f' (GLuint GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glVertexAttrib1fv: index with: v [

	<apicall: void 'glVertexAttrib1fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glVertexAttrib2f: index with: x with: y [

	<apicall: void 'glVertexAttrib2f' (GLuint GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glVertexAttrib2fv: index with: v [

	<apicall: void 'glVertexAttrib2fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glVertexAttrib3f: index with: x with: y with: z [

	<apicall: void 'glVertexAttrib3f' (GLuint GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glVertexAttrib3fv: index with: v [

	<apicall: void 'glVertexAttrib3fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glVertexAttrib4f: index with: x with: y with: z with: w [

	<apicall: void 'glVertexAttrib4f' (GLuint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glVertexAttrib4fv: index with: v [

	<apicall: void 'glVertexAttrib4fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glVertexAttribPointer: index with: size with: type with: normalized with: stride with: pointer [

	<apicall: void 'glVertexAttribPointer' (GLuint GLint GLenum GLboolean GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GLES22_0 >> glViewport: x with: y with: width with: height [

	<apicall: void 'glViewport' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #version }
GLES22_0 >> majorVersion [

	^ 2
]

{ #category : #version }
GLES22_0 >> minorVersion [

	^ 0
]
