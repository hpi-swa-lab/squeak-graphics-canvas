Class {
	#name : #'GL2_0',
	#superclass : #'GL1_5',
	#category : #'MPOpenGL-Versions'
}

{ #category : #commands }
GL2_0 >> glAttachShader: program with: shader [

	<apicall: void 'glAttachShader' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glBindAttribLocation: program with: index with: name [

	<apicall: void 'glBindAttribLocation' (GLuint GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glBlendEquationSeparate: modeRGB with: modeAlpha [

	<apicall: void 'glBlendEquationSeparate' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glCompileShader: shader [

	<apicall: void 'glCompileShader' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glCreateProgram [

	<apicall: GLuint 'glCreateProgram' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glCreateShader: type [

	<apicall: GLuint 'glCreateShader' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glDeleteProgram: program [

	<apicall: void 'glDeleteProgram' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glDeleteShader: shader [

	<apicall: void 'glDeleteShader' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glDetachShader: program with: shader [

	<apicall: void 'glDetachShader' (GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glDisableVertexAttribArray: index [

	<apicall: void 'glDisableVertexAttribArray' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glDrawBuffers: n with: bufs [

	<apicall: void 'glDrawBuffers' (GLsizei GLenum*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glEnableVertexAttribArray: index [

	<apicall: void 'glEnableVertexAttribArray' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetActiveAttrib: program with: index with: bufSize with: length with: size with: type with: name [

	<apicall: void 'glGetActiveAttrib' (GLuint GLuint GLsizei GLsizei* GLint* GLenum* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetActiveUniform: program with: index with: bufSize with: length with: size with: type with: name [

	<apicall: void 'glGetActiveUniform' (GLuint GLuint GLsizei GLsizei* GLint* GLenum* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetAttachedShaders: program with: maxCount with: count with: shaders [

	<apicall: void 'glGetAttachedShaders' (GLuint GLsizei GLsizei* GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetAttribLocation: program with: name [

	<apicall: GLint 'glGetAttribLocation' (GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetProgramInfoLog: program with: bufSize with: length with: infoLog [

	<apicall: void 'glGetProgramInfoLog' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetProgramiv: program with: pname with: params [

	<apicall: void 'glGetProgramiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetShaderInfoLog: shader with: bufSize with: length with: infoLog [

	<apicall: void 'glGetShaderInfoLog' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetShaderSource: shader with: bufSize with: length with: source [

	<apicall: void 'glGetShaderSource' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetShaderiv: shader with: pname with: params [

	<apicall: void 'glGetShaderiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetUniformLocation: program with: name [

	<apicall: GLint 'glGetUniformLocation' (GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetUniformfv: program with: location with: params [

	<apicall: void 'glGetUniformfv' (GLuint GLint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetUniformiv: program with: location with: params [

	<apicall: void 'glGetUniformiv' (GLuint GLint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetVertexAttribPointerv: index with: pname with: pointer [

	<apicall: void 'glGetVertexAttribPointerv' (GLuint GLenum void**)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetVertexAttribdv: index with: pname with: params [

	<apicall: void 'glGetVertexAttribdv' (GLuint GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetVertexAttribfv: index with: pname with: params [

	<apicall: void 'glGetVertexAttribfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glGetVertexAttribiv: index with: pname with: params [

	<apicall: void 'glGetVertexAttribiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glIsProgram: program [

	<apicall: GLboolean 'glIsProgram' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glIsShader: shader [

	<apicall: GLboolean 'glIsShader' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glLinkProgram: program [

	<apicall: void 'glLinkProgram' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glShaderSource: shader with: count with: string with: length [

	<apicall: void 'glShaderSource' (GLuint GLsizei GLchar** GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glStencilFuncSeparate: face with: func with: ref with: mask [

	<apicall: void 'glStencilFuncSeparate' (GLenum GLenum GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glStencilMaskSeparate: face with: mask [

	<apicall: void 'glStencilMaskSeparate' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glStencilOpSeparate: face with: sfail with: dpfail with: dppass [

	<apicall: void 'glStencilOpSeparate' (GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform1f: location with: v0 [

	<apicall: void 'glUniform1f' (GLint GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform1fv: location with: count with: value [

	<apicall: void 'glUniform1fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform1i: location with: v0 [

	<apicall: void 'glUniform1i' (GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform1iv: location with: count with: value [

	<apicall: void 'glUniform1iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform2f: location with: v0 with: v1 [

	<apicall: void 'glUniform2f' (GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform2fv: location with: count with: value [

	<apicall: void 'glUniform2fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform2i: location with: v0 with: v1 [

	<apicall: void 'glUniform2i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform2iv: location with: count with: value [

	<apicall: void 'glUniform2iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform3f: location with: v0 with: v1 with: v2 [

	<apicall: void 'glUniform3f' (GLint GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform3fv: location with: count with: value [

	<apicall: void 'glUniform3fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform3i: location with: v0 with: v1 with: v2 [

	<apicall: void 'glUniform3i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform3iv: location with: count with: value [

	<apicall: void 'glUniform3iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform4f: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glUniform4f' (GLint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform4fv: location with: count with: value [

	<apicall: void 'glUniform4fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform4i: location with: v0 with: v1 with: v2 with: v3 [

	<apicall: void 'glUniform4i' (GLint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniform4iv: location with: count with: value [

	<apicall: void 'glUniform4iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniformMatrix2fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix2fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniformMatrix3fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix3fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUniformMatrix4fv: location with: count with: transpose with: value [

	<apicall: void 'glUniformMatrix4fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glUseProgram: program [

	<apicall: void 'glUseProgram' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glValidateProgram: program [

	<apicall: void 'glValidateProgram' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib1d: index with: x [

	<apicall: void 'glVertexAttrib1d' (GLuint GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib1dv: index with: v [

	<apicall: void 'glVertexAttrib1dv' (GLuint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib1f: index with: x [

	<apicall: void 'glVertexAttrib1f' (GLuint GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib1fv: index with: v [

	<apicall: void 'glVertexAttrib1fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib1s: index with: x [

	<apicall: void 'glVertexAttrib1s' (GLuint GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib1sv: index with: v [

	<apicall: void 'glVertexAttrib1sv' (GLuint GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib2d: index with: x with: y [

	<apicall: void 'glVertexAttrib2d' (GLuint GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib2dv: index with: v [

	<apicall: void 'glVertexAttrib2dv' (GLuint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib2f: index with: x with: y [

	<apicall: void 'glVertexAttrib2f' (GLuint GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib2fv: index with: v [

	<apicall: void 'glVertexAttrib2fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib2s: index with: x with: y [

	<apicall: void 'glVertexAttrib2s' (GLuint GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib2sv: index with: v [

	<apicall: void 'glVertexAttrib2sv' (GLuint GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib3d: index with: x with: y with: z [

	<apicall: void 'glVertexAttrib3d' (GLuint GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib3dv: index with: v [

	<apicall: void 'glVertexAttrib3dv' (GLuint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib3f: index with: x with: y with: z [

	<apicall: void 'glVertexAttrib3f' (GLuint GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib3fv: index with: v [

	<apicall: void 'glVertexAttrib3fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib3s: index with: x with: y with: z [

	<apicall: void 'glVertexAttrib3s' (GLuint GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib3sv: index with: v [

	<apicall: void 'glVertexAttrib3sv' (GLuint GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4Nbv: index with: v [

	<apicall: void 'glVertexAttrib4Nbv' (GLuint GLbyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4Niv: index with: v [

	<apicall: void 'glVertexAttrib4Niv' (GLuint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4Nsv: index with: v [

	<apicall: void 'glVertexAttrib4Nsv' (GLuint GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4Nub: index with: x with: y with: z with: w [

	<apicall: void 'glVertexAttrib4Nub' (GLuint GLubyte GLubyte GLubyte GLubyte)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4Nubv: index with: v [

	<apicall: void 'glVertexAttrib4Nubv' (GLuint GLubyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4Nuiv: index with: v [

	<apicall: void 'glVertexAttrib4Nuiv' (GLuint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4Nusv: index with: v [

	<apicall: void 'glVertexAttrib4Nusv' (GLuint GLushort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4bv: index with: v [

	<apicall: void 'glVertexAttrib4bv' (GLuint GLbyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4d: index with: x with: y with: z with: w [

	<apicall: void 'glVertexAttrib4d' (GLuint GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4dv: index with: v [

	<apicall: void 'glVertexAttrib4dv' (GLuint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4f: index with: x with: y with: z with: w [

	<apicall: void 'glVertexAttrib4f' (GLuint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4fv: index with: v [

	<apicall: void 'glVertexAttrib4fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4iv: index with: v [

	<apicall: void 'glVertexAttrib4iv' (GLuint GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4s: index with: x with: y with: z with: w [

	<apicall: void 'glVertexAttrib4s' (GLuint GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4sv: index with: v [

	<apicall: void 'glVertexAttrib4sv' (GLuint GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4ubv: index with: v [

	<apicall: void 'glVertexAttrib4ubv' (GLuint GLubyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4uiv: index with: v [

	<apicall: void 'glVertexAttrib4uiv' (GLuint GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttrib4usv: index with: v [

	<apicall: void 'glVertexAttrib4usv' (GLuint GLushort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL2_0 >> glVertexAttribPointer: index with: size with: type with: normalized with: stride with: pointer [

	<apicall: void 'glVertexAttribPointer' (GLuint GLint GLenum GLboolean GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #version }
GL2_0 >> majorVersion [

	^ 2
]

{ #category : #version }
GL2_0 >> minorVersion [

	^ 0
]
