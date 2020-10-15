Class {
	#name : #'GL1_0',
	#superclass : #GLVersion,
	#category : #'OpenGL-Versions'
}

{ #category : #version }
GL1_0 class >> majorVersion [

	^ 1
]

{ #category : #version }
GL1_0 class >> minorVersion [

	^ 0
]

{ #category : #commands }
GL1_0 >> glAccum: op with: value [

	<apicall: void 'glAccum' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glAlphaFunc: func with: ref [

	<apicall: void 'glAlphaFunc' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glBegin: mode [

	<apicall: void 'glBegin' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glBitmap: width with: height with: xorig with: yorig with: xmove with: ymove with: bitmap [

	<apicall: void 'glBitmap' (GLsizei GLsizei GLfloat GLfloat GLfloat GLfloat GLubyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glBlendFunc: sfactor with: dfactor [

	<apicall: void 'glBlendFunc' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glCallList: list [

	<apicall: void 'glCallList' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glCallLists: n with: type with: lists [

	<apicall: void 'glCallLists' (GLsizei GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glClear: mask [

	<apicall: void 'glClear' (GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glClearAccum: red with: green with: blue with: alpha [

	<apicall: void 'glClearAccum' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glClearColor: red with: green with: blue with: alpha [

	<apicall: void 'glClearColor' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glClearDepth: depth [

	<apicall: void 'glClearDepth' (GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glClearIndex: c [

	<apicall: void 'glClearIndex' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glClearStencil: s [

	<apicall: void 'glClearStencil' (GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glClipPlane: plane with: equation [

	<apicall: void 'glClipPlane' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3b: red with: green with: blue [

	<apicall: void 'glColor3b' (GLbyte GLbyte GLbyte)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3bv: v [

	<apicall: void 'glColor3bv' (GLbyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3d: red with: green with: blue [

	<apicall: void 'glColor3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3dv: v [

	<apicall: void 'glColor3dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3f: red with: green with: blue [

	<apicall: void 'glColor3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3fv: v [

	<apicall: void 'glColor3fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3i: red with: green with: blue [

	<apicall: void 'glColor3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3iv: v [

	<apicall: void 'glColor3iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3s: red with: green with: blue [

	<apicall: void 'glColor3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3sv: v [

	<apicall: void 'glColor3sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3ub: red with: green with: blue [

	<apicall: void 'glColor3ub' (GLubyte GLubyte GLubyte)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3ubv: v [

	<apicall: void 'glColor3ubv' (GLubyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3ui: red with: green with: blue [

	<apicall: void 'glColor3ui' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3uiv: v [

	<apicall: void 'glColor3uiv' (GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3us: red with: green with: blue [

	<apicall: void 'glColor3us' (GLushort GLushort GLushort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor3usv: v [

	<apicall: void 'glColor3usv' (GLushort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4b: red with: green with: blue with: alpha [

	<apicall: void 'glColor4b' (GLbyte GLbyte GLbyte GLbyte)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4bv: v [

	<apicall: void 'glColor4bv' (GLbyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4d: red with: green with: blue with: alpha [

	<apicall: void 'glColor4d' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4dv: v [

	<apicall: void 'glColor4dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4f: red with: green with: blue with: alpha [

	<apicall: void 'glColor4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4fv: v [

	<apicall: void 'glColor4fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4i: red with: green with: blue with: alpha [

	<apicall: void 'glColor4i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4iv: v [

	<apicall: void 'glColor4iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4s: red with: green with: blue with: alpha [

	<apicall: void 'glColor4s' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4sv: v [

	<apicall: void 'glColor4sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4ub: red with: green with: blue with: alpha [

	<apicall: void 'glColor4ub' (GLubyte GLubyte GLubyte GLubyte)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4ubv: v [

	<apicall: void 'glColor4ubv' (GLubyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4ui: red with: green with: blue with: alpha [

	<apicall: void 'glColor4ui' (GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4uiv: v [

	<apicall: void 'glColor4uiv' (GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4us: red with: green with: blue with: alpha [

	<apicall: void 'glColor4us' (GLushort GLushort GLushort GLushort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColor4usv: v [

	<apicall: void 'glColor4usv' (GLushort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColorMask: red with: green with: blue with: alpha [

	<apicall: void 'glColorMask' (GLboolean GLboolean GLboolean GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glColorMaterial: face with: mode [

	<apicall: void 'glColorMaterial' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glCopyPixels: x with: y with: width with: height with: type [

	<apicall: void 'glCopyPixels' (GLint GLint GLsizei GLsizei GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glCullFace: mode [

	<apicall: void 'glCullFace' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glDeleteLists: list with: range [

	<apicall: void 'glDeleteLists' (GLuint GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glDepthFunc: func [

	<apicall: void 'glDepthFunc' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glDepthMask: flag [

	<apicall: void 'glDepthMask' (GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glDepthRange: n with: f [

	<apicall: void 'glDepthRange' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glDisable: cap [

	<apicall: void 'glDisable' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glDrawBuffer: buf [

	<apicall: void 'glDrawBuffer' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glDrawPixels: width with: height with: format with: type with: pixels [

	<apicall: void 'glDrawPixels' (GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEdgeFlag: flag [

	<apicall: void 'glEdgeFlag' (GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEdgeFlagv: flag [

	<apicall: void 'glEdgeFlagv' (GLboolean*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEnable: cap [

	<apicall: void 'glEnable' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEnd [

	<apicall: void 'glEnd' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEndList [

	<apicall: void 'glEndList' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEvalCoord1d: u [

	<apicall: void 'glEvalCoord1d' (GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEvalCoord1dv: u [

	<apicall: void 'glEvalCoord1dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEvalCoord1f: u [

	<apicall: void 'glEvalCoord1f' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEvalCoord1fv: u [

	<apicall: void 'glEvalCoord1fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEvalCoord2d: u with: v [

	<apicall: void 'glEvalCoord2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEvalCoord2dv: u [

	<apicall: void 'glEvalCoord2dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEvalCoord2f: u with: v [

	<apicall: void 'glEvalCoord2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEvalCoord2fv: u [

	<apicall: void 'glEvalCoord2fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEvalMesh1: mode with: i1 with: i2 [

	<apicall: void 'glEvalMesh1' (GLenum GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEvalMesh2: mode with: i1 with: i2 with: j1 with: j2 [

	<apicall: void 'glEvalMesh2' (GLenum GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEvalPoint1: i [

	<apicall: void 'glEvalPoint1' (GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glEvalPoint2: i with: j [

	<apicall: void 'glEvalPoint2' (GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glFeedbackBuffer: size with: type with: buffer [

	<apicall: void 'glFeedbackBuffer' (GLsizei GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glFinish [

	<apicall: void 'glFinish' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glFlush [

	<apicall: void 'glFlush' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glFogf: pname with: param [

	<apicall: void 'glFogf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glFogfv: pname with: params [

	<apicall: void 'glFogfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glFogi: pname with: param [

	<apicall: void 'glFogi' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glFogiv: pname with: params [

	<apicall: void 'glFogiv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glFrontFace: mode [

	<apicall: void 'glFrontFace' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glFrustum: left with: right with: bottom with: top with: zNear with: zFar [

	<apicall: void 'glFrustum' (GLdouble GLdouble GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGenLists: range [

	<apicall: GLuint 'glGenLists' (GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetBooleanv: pname with: data [

	<apicall: void 'glGetBooleanv' (GLenum GLboolean*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetClipPlane: plane with: equation [

	<apicall: void 'glGetClipPlane' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetDoublev: pname with: data [

	<apicall: void 'glGetDoublev' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetError [

	<apicall: GLenum 'glGetError' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetFloatv: pname with: data [

	<apicall: void 'glGetFloatv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetIntegerv: pname with: data [

	<apicall: void 'glGetIntegerv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetLightfv: light with: pname with: params [

	<apicall: void 'glGetLightfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetLightiv: light with: pname with: params [

	<apicall: void 'glGetLightiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetMapdv: target with: query with: v [

	<apicall: void 'glGetMapdv' (GLenum GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetMapfv: target with: query with: v [

	<apicall: void 'glGetMapfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetMapiv: target with: query with: v [

	<apicall: void 'glGetMapiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetMaterialfv: face with: pname with: params [

	<apicall: void 'glGetMaterialfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetMaterialiv: face with: pname with: params [

	<apicall: void 'glGetMaterialiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetPixelMapfv: map with: values [

	<apicall: void 'glGetPixelMapfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetPixelMapuiv: map with: values [

	<apicall: void 'glGetPixelMapuiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetPixelMapusv: map with: values [

	<apicall: void 'glGetPixelMapusv' (GLenum GLushort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetPolygonStipple: mask [

	<apicall: void 'glGetPolygonStipple' (GLubyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetString: name [

	<apicall: GLubyte* 'glGetString' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetTexEnvfv: target with: pname with: params [

	<apicall: void 'glGetTexEnvfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetTexEnviv: target with: pname with: params [

	<apicall: void 'glGetTexEnviv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetTexGendv: coord with: pname with: params [

	<apicall: void 'glGetTexGendv' (GLenum GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetTexGenfv: coord with: pname with: params [

	<apicall: void 'glGetTexGenfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetTexGeniv: coord with: pname with: params [

	<apicall: void 'glGetTexGeniv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetTexImage: target with: level with: format with: type with: pixels [

	<apicall: void 'glGetTexImage' (GLenum GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetTexLevelParameterfv: target with: level with: pname with: params [

	<apicall: void 'glGetTexLevelParameterfv' (GLenum GLint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetTexLevelParameteriv: target with: level with: pname with: params [

	<apicall: void 'glGetTexLevelParameteriv' (GLenum GLint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetTexParameterfv: target with: pname with: params [

	<apicall: void 'glGetTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glGetTexParameteriv: target with: pname with: params [

	<apicall: void 'glGetTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glHint: target with: mode [

	<apicall: void 'glHint' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glIndexMask: mask [

	<apicall: void 'glIndexMask' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glIndexd: c [

	<apicall: void 'glIndexd' (GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glIndexdv: c [

	<apicall: void 'glIndexdv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glIndexf: c [

	<apicall: void 'glIndexf' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glIndexfv: c [

	<apicall: void 'glIndexfv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glIndexi: c [

	<apicall: void 'glIndexi' (GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glIndexiv: c [

	<apicall: void 'glIndexiv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glIndexs: c [

	<apicall: void 'glIndexs' (GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glIndexsv: c [

	<apicall: void 'glIndexsv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glInitNames [

	<apicall: void 'glInitNames' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glIsEnabled: cap [

	<apicall: GLboolean 'glIsEnabled' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glIsList: list [

	<apicall: GLboolean 'glIsList' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLightModelf: pname with: param [

	<apicall: void 'glLightModelf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLightModelfv: pname with: params [

	<apicall: void 'glLightModelfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLightModeli: pname with: param [

	<apicall: void 'glLightModeli' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLightModeliv: pname with: params [

	<apicall: void 'glLightModeliv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLightf: light with: pname with: param [

	<apicall: void 'glLightf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLightfv: light with: pname with: params [

	<apicall: void 'glLightfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLighti: light with: pname with: param [

	<apicall: void 'glLighti' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLightiv: light with: pname with: params [

	<apicall: void 'glLightiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLineStipple: factor with: pattern [

	<apicall: void 'glLineStipple' (GLint GLushort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLineWidth: width [

	<apicall: void 'glLineWidth' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glListBase: base [

	<apicall: void 'glListBase' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLoadIdentity [

	<apicall: void 'glLoadIdentity' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLoadMatrixd: m [

	<apicall: void 'glLoadMatrixd' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLoadMatrixf: m [

	<apicall: void 'glLoadMatrixf' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLoadName: name [

	<apicall: void 'glLoadName' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glLogicOp: opcode [

	<apicall: void 'glLogicOp' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMap1d: target with: u1 with: u2 with: stride with: order with: points [

	<apicall: void 'glMap1d' (GLenum GLdouble GLdouble GLint GLint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMap1f: target with: u1 with: u2 with: stride with: order with: points [

	<apicall: void 'glMap1f' (GLenum GLfloat GLfloat GLint GLint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMap2d: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	<apicall: void 'glMap2d' (GLenum GLdouble GLdouble GLint GLint GLdouble GLdouble GLint GLint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMap2f: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	<apicall: void 'glMap2f' (GLenum GLfloat GLfloat GLint GLint GLfloat GLfloat GLint GLint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMapGrid1d: un with: u1 with: u2 [

	<apicall: void 'glMapGrid1d' (GLint GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMapGrid1f: un with: u1 with: u2 [

	<apicall: void 'glMapGrid1f' (GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMapGrid2d: un with: u1 with: u2 with: vn with: v1 with: v2 [

	<apicall: void 'glMapGrid2d' (GLint GLdouble GLdouble GLint GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMapGrid2f: un with: u1 with: u2 with: vn with: v1 with: v2 [

	<apicall: void 'glMapGrid2f' (GLint GLfloat GLfloat GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMaterialf: face with: pname with: param [

	<apicall: void 'glMaterialf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMaterialfv: face with: pname with: params [

	<apicall: void 'glMaterialfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMateriali: face with: pname with: param [

	<apicall: void 'glMateriali' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMaterialiv: face with: pname with: params [

	<apicall: void 'glMaterialiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMatrixMode: mode [

	<apicall: void 'glMatrixMode' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMultMatrixd: m [

	<apicall: void 'glMultMatrixd' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glMultMatrixf: m [

	<apicall: void 'glMultMatrixf' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glNewList: list with: mode [

	<apicall: void 'glNewList' (GLuint GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glNormal3b: nx with: ny with: nz [

	<apicall: void 'glNormal3b' (GLbyte GLbyte GLbyte)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glNormal3bv: v [

	<apicall: void 'glNormal3bv' (GLbyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glNormal3d: nx with: ny with: nz [

	<apicall: void 'glNormal3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glNormal3dv: v [

	<apicall: void 'glNormal3dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glNormal3f: nx with: ny with: nz [

	<apicall: void 'glNormal3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glNormal3fv: v [

	<apicall: void 'glNormal3fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glNormal3i: nx with: ny with: nz [

	<apicall: void 'glNormal3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glNormal3iv: v [

	<apicall: void 'glNormal3iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glNormal3s: nx with: ny with: nz [

	<apicall: void 'glNormal3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glNormal3sv: v [

	<apicall: void 'glNormal3sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glOrtho: left with: right with: bottom with: top with: zNear with: zFar [

	<apicall: void 'glOrtho' (GLdouble GLdouble GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPassThrough: token [

	<apicall: void 'glPassThrough' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPixelMapfv: map with: mapsize with: values [

	<apicall: void 'glPixelMapfv' (GLenum GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPixelMapuiv: map with: mapsize with: values [

	<apicall: void 'glPixelMapuiv' (GLenum GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPixelMapusv: map with: mapsize with: values [

	<apicall: void 'glPixelMapusv' (GLenum GLsizei GLushort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPixelStoref: pname with: param [

	<apicall: void 'glPixelStoref' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPixelStorei: pname with: param [

	<apicall: void 'glPixelStorei' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPixelTransferf: pname with: param [

	<apicall: void 'glPixelTransferf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPixelTransferi: pname with: param [

	<apicall: void 'glPixelTransferi' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPixelZoom: xfactor with: yfactor [

	<apicall: void 'glPixelZoom' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPointSize: size [

	<apicall: void 'glPointSize' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPolygonMode: face with: mode [

	<apicall: void 'glPolygonMode' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPolygonStipple: mask [

	<apicall: void 'glPolygonStipple' (GLubyte*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPopAttrib [

	<apicall: void 'glPopAttrib' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPopMatrix [

	<apicall: void 'glPopMatrix' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPopName [

	<apicall: void 'glPopName' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPushAttrib: mask [

	<apicall: void 'glPushAttrib' (GLbitfield)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPushMatrix [

	<apicall: void 'glPushMatrix' ()>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glPushName: name [

	<apicall: void 'glPushName' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos2d: x with: y [

	<apicall: void 'glRasterPos2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos2dv: v [

	<apicall: void 'glRasterPos2dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos2f: x with: y [

	<apicall: void 'glRasterPos2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos2fv: v [

	<apicall: void 'glRasterPos2fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos2i: x with: y [

	<apicall: void 'glRasterPos2i' (GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos2iv: v [

	<apicall: void 'glRasterPos2iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos2s: x with: y [

	<apicall: void 'glRasterPos2s' (GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos2sv: v [

	<apicall: void 'glRasterPos2sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos3d: x with: y with: z [

	<apicall: void 'glRasterPos3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos3dv: v [

	<apicall: void 'glRasterPos3dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos3f: x with: y with: z [

	<apicall: void 'glRasterPos3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos3fv: v [

	<apicall: void 'glRasterPos3fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos3i: x with: y with: z [

	<apicall: void 'glRasterPos3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos3iv: v [

	<apicall: void 'glRasterPos3iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos3s: x with: y with: z [

	<apicall: void 'glRasterPos3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos3sv: v [

	<apicall: void 'glRasterPos3sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos4d: x with: y with: z with: w [

	<apicall: void 'glRasterPos4d' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos4dv: v [

	<apicall: void 'glRasterPos4dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos4f: x with: y with: z with: w [

	<apicall: void 'glRasterPos4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos4fv: v [

	<apicall: void 'glRasterPos4fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos4i: x with: y with: z with: w [

	<apicall: void 'glRasterPos4i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos4iv: v [

	<apicall: void 'glRasterPos4iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos4s: x with: y with: z with: w [

	<apicall: void 'glRasterPos4s' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRasterPos4sv: v [

	<apicall: void 'glRasterPos4sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glReadBuffer: src [

	<apicall: void 'glReadBuffer' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glReadPixels: x with: y with: width with: height with: format with: type with: pixels [

	<apicall: void 'glReadPixels' (GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRectd: x1 with: y1 with: x2 with: y2 [

	<apicall: void 'glRectd' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRectdv: v1 with: v2 [

	<apicall: void 'glRectdv' (GLdouble* GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRectf: x1 with: y1 with: x2 with: y2 [

	<apicall: void 'glRectf' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRectfv: v1 with: v2 [

	<apicall: void 'glRectfv' (GLfloat* GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRecti: x1 with: y1 with: x2 with: y2 [

	<apicall: void 'glRecti' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRectiv: v1 with: v2 [

	<apicall: void 'glRectiv' (GLint* GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRects: x1 with: y1 with: x2 with: y2 [

	<apicall: void 'glRects' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRectsv: v1 with: v2 [

	<apicall: void 'glRectsv' (GLshort* GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRenderMode: mode [

	<apicall: GLint 'glRenderMode' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRotated: angle with: x with: y with: z [

	<apicall: void 'glRotated' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glRotatef: angle with: x with: y with: z [

	<apicall: void 'glRotatef' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glScaled: x with: y with: z [

	<apicall: void 'glScaled' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glScalef: x with: y with: z [

	<apicall: void 'glScalef' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glScissor: x with: y with: width with: height [

	<apicall: void 'glScissor' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glSelectBuffer: size with: buffer [

	<apicall: void 'glSelectBuffer' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glShadeModel: mode [

	<apicall: void 'glShadeModel' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glStencilFunc: func with: ref with: mask [

	<apicall: void 'glStencilFunc' (GLenum GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glStencilMask: mask [

	<apicall: void 'glStencilMask' (GLuint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glStencilOp: fail with: zfail with: zpass [

	<apicall: void 'glStencilOp' (GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord1d: s [

	<apicall: void 'glTexCoord1d' (GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord1dv: v [

	<apicall: void 'glTexCoord1dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord1f: s [

	<apicall: void 'glTexCoord1f' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord1fv: v [

	<apicall: void 'glTexCoord1fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord1i: s [

	<apicall: void 'glTexCoord1i' (GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord1iv: v [

	<apicall: void 'glTexCoord1iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord1s: s [

	<apicall: void 'glTexCoord1s' (GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord1sv: v [

	<apicall: void 'glTexCoord1sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord2d: s with: t [

	<apicall: void 'glTexCoord2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord2dv: v [

	<apicall: void 'glTexCoord2dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord2f: s with: t [

	<apicall: void 'glTexCoord2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord2fv: v [

	<apicall: void 'glTexCoord2fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord2i: s with: t [

	<apicall: void 'glTexCoord2i' (GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord2iv: v [

	<apicall: void 'glTexCoord2iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord2s: s with: t [

	<apicall: void 'glTexCoord2s' (GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord2sv: v [

	<apicall: void 'glTexCoord2sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord3d: s with: t with: r [

	<apicall: void 'glTexCoord3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord3dv: v [

	<apicall: void 'glTexCoord3dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord3f: s with: t with: r [

	<apicall: void 'glTexCoord3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord3fv: v [

	<apicall: void 'glTexCoord3fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord3i: s with: t with: r [

	<apicall: void 'glTexCoord3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord3iv: v [

	<apicall: void 'glTexCoord3iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord3s: s with: t with: r [

	<apicall: void 'glTexCoord3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord3sv: v [

	<apicall: void 'glTexCoord3sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord4d: s with: t with: r with: q [

	<apicall: void 'glTexCoord4d' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord4dv: v [

	<apicall: void 'glTexCoord4dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord4f: s with: t with: r with: q [

	<apicall: void 'glTexCoord4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord4fv: v [

	<apicall: void 'glTexCoord4fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord4i: s with: t with: r with: q [

	<apicall: void 'glTexCoord4i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord4iv: v [

	<apicall: void 'glTexCoord4iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord4s: s with: t with: r with: q [

	<apicall: void 'glTexCoord4s' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexCoord4sv: v [

	<apicall: void 'glTexCoord4sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexEnvf: target with: pname with: param [

	<apicall: void 'glTexEnvf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexEnvfv: target with: pname with: params [

	<apicall: void 'glTexEnvfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexEnvi: target with: pname with: param [

	<apicall: void 'glTexEnvi' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexEnviv: target with: pname with: params [

	<apicall: void 'glTexEnviv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexGend: coord with: pname with: param [

	<apicall: void 'glTexGend' (GLenum GLenum GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexGendv: coord with: pname with: params [

	<apicall: void 'glTexGendv' (GLenum GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexGenf: coord with: pname with: param [

	<apicall: void 'glTexGenf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexGenfv: coord with: pname with: params [

	<apicall: void 'glTexGenfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexGeni: coord with: pname with: param [

	<apicall: void 'glTexGeni' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexGeniv: coord with: pname with: params [

	<apicall: void 'glTexGeniv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexImage1D: target with: level with: internalformat with: width with: border with: format with: type with: pixels [

	<apicall: void 'glTexImage1D' (GLenum GLint GLint GLsizei GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexImage2D: target with: level with: internalformat with: width with: height with: border with: format with: type with: pixels [

	<apicall: void 'glTexImage2D' (GLenum GLint GLint GLsizei GLsizei GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexParameterf: target with: pname with: param [

	<apicall: void 'glTexParameterf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexParameterfv: target with: pname with: params [

	<apicall: void 'glTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexParameteri: target with: pname with: param [

	<apicall: void 'glTexParameteri' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTexParameteriv: target with: pname with: params [

	<apicall: void 'glTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTranslated: x with: y with: z [

	<apicall: void 'glTranslated' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glTranslatef: x with: y with: z [

	<apicall: void 'glTranslatef' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex2d: x with: y [

	<apicall: void 'glVertex2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex2dv: v [

	<apicall: void 'glVertex2dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex2f: x with: y [

	<apicall: void 'glVertex2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex2fv: v [

	<apicall: void 'glVertex2fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex2i: x with: y [

	<apicall: void 'glVertex2i' (GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex2iv: v [

	<apicall: void 'glVertex2iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex2s: x with: y [

	<apicall: void 'glVertex2s' (GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex2sv: v [

	<apicall: void 'glVertex2sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex3d: x with: y with: z [

	<apicall: void 'glVertex3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex3dv: v [

	<apicall: void 'glVertex3dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex3f: x with: y with: z [

	<apicall: void 'glVertex3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex3fv: v [

	<apicall: void 'glVertex3fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex3i: x with: y with: z [

	<apicall: void 'glVertex3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex3iv: v [

	<apicall: void 'glVertex3iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex3s: x with: y with: z [

	<apicall: void 'glVertex3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex3sv: v [

	<apicall: void 'glVertex3sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex4d: x with: y with: z with: w [

	<apicall: void 'glVertex4d' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex4dv: v [

	<apicall: void 'glVertex4dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex4f: x with: y with: z with: w [

	<apicall: void 'glVertex4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex4fv: v [

	<apicall: void 'glVertex4fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex4i: x with: y with: z with: w [

	<apicall: void 'glVertex4i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex4iv: v [

	<apicall: void 'glVertex4iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex4s: x with: y with: z with: w [

	<apicall: void 'glVertex4s' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glVertex4sv: v [

	<apicall: void 'glVertex4sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_0 >> glViewport: x with: y with: width with: height [

	<apicall: void 'glViewport' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]
