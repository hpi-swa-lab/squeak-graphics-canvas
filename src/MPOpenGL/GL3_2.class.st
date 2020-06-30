Class {
	#name : #'GL3_2',
	#superclass : #'GL3_1',
	#category : 'MPOpenGL-Versions'
}

{ #category : #'commands - deprecated' }
GL3_2 >> glAccum: op with: value [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glAlphaFunc: func with: ref [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glAreTexturesResident: n with: textures with: residences [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glArrayElement: i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glBegin: mode [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glBitmap: width with: height with: xorig with: yorig with: xmove with: ymove with: bitmap [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glCallList: list [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glCallLists: n with: type with: lists [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glClearAccum: red with: green with: blue with: alpha [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glClearIndex: c [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glClientActiveTexture: texture [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glClientWaitSync: sync with: flags with: timeout [

	<apicall: GLenum 'glClientWaitSync' (GLsync GLbitfield GLuint64)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glClipPlane: plane with: equation [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3b: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3bv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3d: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3f: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3i: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3s: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3ub: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3ubv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3ui: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3uiv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3us: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3usv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4b: red with: green with: blue with: alpha [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4bv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4d: red with: green with: blue with: alpha [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4f: red with: green with: blue with: alpha [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4i: red with: green with: blue with: alpha [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4s: red with: green with: blue with: alpha [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4ub: red with: green with: blue with: alpha [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4ubv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4ui: red with: green with: blue with: alpha [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4uiv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4us: red with: green with: blue with: alpha [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4usv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColorMaterial: face with: mode [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColorPointer: size with: type with: stride with: pointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glCopyPixels: x with: y with: width with: height with: type [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glDeleteLists: list with: range [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glDeleteSync: sync [

	<apicall: void 'glDeleteSync' (GLsync)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glDisableClientState: array [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glDrawElementsBaseVertex: mode with: count with: type with: indices with: basevertex [

	<apicall: void 'glDrawElementsBaseVertex' (GLenum GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_2 >> glDrawElementsInstancedBaseVertex: mode with: count with: type with: indices with: instancecount with: basevertex [

	<apicall: void 'glDrawElementsInstancedBaseVertex' (GLenum GLsizei GLenum void* GLsizei GLint)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glDrawPixels: width with: height with: format with: type with: pixels [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glDrawRangeElementsBaseVertex: mode with: start with: end with: count with: type with: indices with: basevertex [

	<apicall: void 'glDrawRangeElementsBaseVertex' (GLenum GLuint GLuint GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEdgeFlag: flag [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEdgeFlagPointer: stride with: pointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEdgeFlagv: flag [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEnableClientState: array [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEnd [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEndList [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord1d: u [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord1dv: u [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord1f: u [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord1fv: u [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord2d: u with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord2dv: u [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord2f: u with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord2fv: u [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalMesh1: mode with: i1 with: i2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalMesh2: mode with: i1 with: i2 with: j1 with: j2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalPoint1: i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalPoint2: i with: j [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFeedbackBuffer: size with: type with: buffer [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glFenceSync: condition with: flags [

	<apicall: GLsync 'glFenceSync' (GLenum GLbitfield)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogCoordPointer: type with: stride with: pointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogCoordd: coord [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogCoorddv: coord [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogCoordf: coord [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogCoordfv: coord [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogf: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogfv: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogi: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogiv: pname with: params [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glFramebufferTexture: target with: attachment with: texture with: level [

	<apicall: void 'glFramebufferTexture' (GLenum GLenum GLuint GLint)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFrustum: left with: right with: bottom with: top with: zNear with: zFar [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGenLists: range [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glGetBufferParameteri64v: target with: pname with: params [

	<apicall: void 'glGetBufferParameteri64v' (GLenum GLenum GLint64*)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetClipPlane: plane with: equation [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glGetInteger64i_v: target with: index with: data [

	<apicall: void 'glGetInteger64i_v' (GLenum GLuint GLint64*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_2 >> glGetInteger64v: pname with: data [

	<apicall: void 'glGetInteger64v' (GLenum GLint64*)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetLightfv: light with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetLightiv: light with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetMapdv: target with: query with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetMapfv: target with: query with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetMapiv: target with: query with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetMaterialfv: face with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetMaterialiv: face with: pname with: params [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glGetMultisamplefv: pname with: index with: val [

	<apicall: void 'glGetMultisamplefv' (GLenum GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetPixelMapfv: map with: values [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetPixelMapuiv: map with: values [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetPixelMapusv: map with: values [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetPointerv: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetPolygonStipple: mask [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glGetSynciv: sync with: pname with: count with: length with: values [

	<apicall: void 'glGetSynciv' (GLsync GLenum GLsizei GLsizei* GLint*)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetTexEnvfv: target with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetTexEnviv: target with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetTexGendv: coord with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetTexGenfv: coord with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetTexGeniv: coord with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexMask: mask [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexPointer: type with: stride with: pointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexd: c [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexdv: c [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexf: c [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexfv: c [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexi: c [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexiv: c [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexs: c [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexsv: c [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexub: c [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexubv: c [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glInitNames [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glInterleavedArrays: format with: stride with: pointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIsList: list [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glIsSync: sync [

	<apicall: GLboolean 'glIsSync' (GLsync)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightModelf: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightModelfv: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightModeli: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightModeliv: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightf: light with: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightfv: light with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLighti: light with: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightiv: light with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLineStipple: factor with: pattern [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glListBase: base [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLoadIdentity [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLoadMatrixd: m [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLoadMatrixf: m [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLoadName: name [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLoadTransposeMatrixd: m [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLoadTransposeMatrixf: m [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMap1d: target with: u1 with: u2 with: stride with: order with: points [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMap1f: target with: u1 with: u2 with: stride with: order with: points [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMap2d: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMap2f: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMapGrid1d: un with: u1 with: u2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMapGrid1f: un with: u1 with: u2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMapGrid2d: un with: u1 with: u2 with: vn with: v1 with: v2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMapGrid2f: un with: u1 with: u2 with: vn with: v1 with: v2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMaterialf: face with: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMaterialfv: face with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMateriali: face with: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMaterialiv: face with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMatrixMode: mode [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultMatrixd: m [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultMatrixf: m [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultTransposeMatrixd: m [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultTransposeMatrixf: m [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glMultiDrawElementsBaseVertex: mode with: count with: type with: indices with: drawcount with: basevertex [

	<apicall: void 'glMultiDrawElementsBaseVertex' (GLenum GLsizei* GLenum void** GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1d: target with: s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1dv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1f: target with: s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1fv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1i: target with: s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1iv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1s: target with: s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1sv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2d: target with: s with: t [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2dv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2f: target with: s with: t [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2fv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2i: target with: s with: t [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2iv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2s: target with: s with: t [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2sv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3d: target with: s with: t with: r [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3dv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3f: target with: s with: t with: r [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3fv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3i: target with: s with: t with: r [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3iv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3s: target with: s with: t with: r [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3sv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4d: target with: s with: t with: r with: q [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4dv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4f: target with: s with: t with: r with: q [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4fv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4i: target with: s with: t with: r with: q [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4iv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4s: target with: s with: t with: r with: q [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4sv: target with: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNewList: list with: mode [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3b: nx with: ny with: nz [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3bv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3d: nx with: ny with: nz [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3f: nx with: ny with: nz [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3i: nx with: ny with: nz [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3s: nx with: ny with: nz [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormalPointer: type with: stride with: pointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glOrtho: left with: right with: bottom with: top with: zNear with: zFar [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPassThrough: token [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPixelMapfv: map with: mapsize with: values [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPixelMapuiv: map with: mapsize with: values [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPixelMapusv: map with: mapsize with: values [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPixelTransferf: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPixelTransferi: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPixelZoom: xfactor with: yfactor [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPolygonStipple: mask [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPopAttrib [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPopClientAttrib [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPopMatrix [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPopName [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPrioritizeTextures: n with: textures with: priorities [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glProvokingVertex: mode [

	<apicall: void 'glProvokingVertex' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPushAttrib: mask [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPushClientAttrib: mask [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPushMatrix [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPushName: name [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2d: x with: y [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2f: x with: y [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2i: x with: y [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2s: x with: y [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3d: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3f: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3i: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3s: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4d: x with: y with: z with: w [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4f: x with: y with: z with: w [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4i: x with: y with: z with: w [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4s: x with: y with: z with: w [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRectd: x1 with: y1 with: x2 with: y2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRectdv: v1 with: v2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRectf: x1 with: y1 with: x2 with: y2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRectfv: v1 with: v2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRecti: x1 with: y1 with: x2 with: y2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRectiv: v1 with: v2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRects: x1 with: y1 with: x2 with: y2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRectsv: v1 with: v2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRenderMode: mode [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRotated: angle with: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRotatef: angle with: x with: y with: z [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glSampleMaski: maskNumber with: mask [

	<apicall: void 'glSampleMaski' (GLuint GLbitfield)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glScaled: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glScalef: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3b: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3bv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3d: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3f: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3i: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3s: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3ub: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3ubv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3ui: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3uiv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3us: red with: green with: blue [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3usv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColorPointer: size with: type with: stride with: pointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSelectBuffer: size with: buffer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glShadeModel: mode [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1d: s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1f: s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1i: s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1s: s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2d: s with: t [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2f: s with: t [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2i: s with: t [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2s: s with: t [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3d: s with: t with: r [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3f: s with: t with: r [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3i: s with: t with: r [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3s: s with: t with: r [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4d: s with: t with: r with: q [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4f: s with: t with: r with: q [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4i: s with: t with: r with: q [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4s: s with: t with: r with: q [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoordPointer: size with: type with: stride with: pointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexEnvf: target with: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexEnvfv: target with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexEnvi: target with: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexEnviv: target with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexGend: coord with: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexGendv: coord with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexGenf: coord with: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexGenfv: coord with: pname with: params [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexGeni: coord with: pname with: param [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexGeniv: coord with: pname with: params [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glTexImage2DMultisample: target with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<apicall: void 'glTexImage2DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{ #category : #commands }
GL3_2 >> glTexImage3DMultisample: target with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<apicall: void 'glTexImage3DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTranslated: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTranslatef: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2d: x with: y [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2f: x with: y [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2i: x with: y [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2s: x with: y [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3d: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3f: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3i: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3s: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4d: x with: y with: z with: w [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4f: x with: y with: z with: w [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4i: x with: y with: z with: w [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4s: x with: y with: z with: w [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertexPointer: size with: type with: stride with: pointer [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glWaitSync: sync with: flags with: timeout [

	<apicall: void 'glWaitSync' (GLsync GLbitfield GLuint64)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2d: x with: y [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2f: x with: y [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2i: x with: y [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2s: x with: y [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2sv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3d: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3dv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3f: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3fv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3i: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3iv: v [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3s: x with: y with: z [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3sv: v [

	self shouldNotImplement
]

{ #category : #version }
GL3_2 >> majorVersion [

	^ 3
]

{ #category : #version }
GL3_2 >> minorVersion [

	^ 2
]
