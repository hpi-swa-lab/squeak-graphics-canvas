Class {
	#name : #'GL3_2',
	#superclass : #'GL3_1',
	#category : #'MPOpenGL-Versions'
}

{ #category : #'commands - deprecated' }
GL3_2 >> glAccum [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glAlphaFunc [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glAreTexturesResident [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glArrayElement [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glBegin [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glBitmap [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glCallList [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glCallLists [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glClearAccum [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glClearIndex [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glClientActiveTexture [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glClientWaitSync: sync with: flags with: timeout [

	<apicall: GLenum 'glClientWaitSync' (GLsync GLbitfield GLuint64)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glClipPlane [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3b [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3bv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3ub [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3ubv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3ui [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3uiv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3us [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor3usv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4b [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4bv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4ub [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4ubv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4ui [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4uiv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4us [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColor4usv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColorMaterial [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glColorPointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glCopyPixels [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glDeleteLists [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glDeleteSync: sync [

	<apicall: void 'glDeleteSync' (GLsync)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glDisableClientState [

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
GL3_2 >> glDrawPixels [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glDrawRangeElementsBaseVertex: mode with: start with: end with: count with: type with: indices with: basevertex [

	<apicall: void 'glDrawRangeElementsBaseVertex' (GLenum GLuint GLuint GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEdgeFlag [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEdgeFlagPointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEdgeFlagv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEnableClientState [

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
GL3_2 >> glEvalCoord1d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord1dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord1f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord1fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord2d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord2dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord2f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalCoord2fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalMesh1 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalMesh2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalPoint1 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glEvalPoint2 [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFeedbackBuffer [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glFenceSync: condition with: flags [

	<apicall: GLsync 'glFenceSync' (GLenum GLbitfield)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogCoordPointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogCoordd [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogCoorddv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogCoordf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogCoordfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogi [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFogiv [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glFramebufferTexture: target with: attachment with: texture with: level [

	<apicall: void 'glFramebufferTexture' (GLenum GLenum GLuint GLint)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glFrustum [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGenLists [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glGetBufferParameteri64v: target with: pname with: params [

	<apicall: void 'glGetBufferParameteri64v' (GLenum GLenum GLint64*)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetClipPlane [

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
GL3_2 >> glGetLightfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetLightiv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetMapdv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetMapfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetMapiv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetMaterialfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetMaterialiv [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glGetMultisamplefv: pname with: index with: val [

	<apicall: void 'glGetMultisamplefv' (GLenum GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetPixelMapfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetPixelMapuiv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetPixelMapusv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetPointerv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetPolygonStipple [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glGetSynciv: sync with: pname with: count with: length with: values [

	<apicall: void 'glGetSynciv' (GLsync GLenum GLsizei GLsizei* GLint*)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetTexEnvfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetTexEnviv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetTexGendv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetTexGenfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glGetTexGeniv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexMask [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexPointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexd [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexdv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexi [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexiv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexs [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexsv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexub [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIndexubv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glInitNames [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glInterleavedArrays [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glIsList [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glIsSync: sync [

	<apicall: GLboolean 'glIsSync' (GLsync)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightModelf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightModelfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightModeli [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightModeliv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLighti [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLightiv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLineStipple [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glListBase [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLoadIdentity [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLoadMatrixd [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLoadMatrixf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLoadName [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLoadTransposeMatrixd [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glLoadTransposeMatrixf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMap1d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMap1f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMap2d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMap2f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMapGrid1d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMapGrid1f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMapGrid2d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMapGrid2f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMaterialf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMaterialfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMateriali [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMaterialiv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMatrixMode [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultMatrixd [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultMatrixf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultTransposeMatrixd [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultTransposeMatrixf [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glMultiDrawElementsBaseVertex: mode with: count with: type with: indices with: drawcount with: basevertex [

	<apicall: void 'glMultiDrawElementsBaseVertex' (GLenum GLsizei* GLenum void** GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord1sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord2sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord3sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glMultiTexCoord4sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNewList [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3b [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3bv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormal3sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glNormalPointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glOrtho [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPassThrough [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPixelMapfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPixelMapuiv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPixelMapusv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPixelTransferf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPixelTransferi [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPixelZoom [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPolygonStipple [

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
GL3_2 >> glPrioritizeTextures [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glProvokingVertex: mode [

	<apicall: void 'glProvokingVertex' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPushAttrib [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPushClientAttrib [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPushMatrix [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glPushName [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos2sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos3sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRasterPos4sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRectd [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRectdv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRectf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRectfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRecti [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRectiv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRects [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRectsv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRenderMode [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRotated [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glRotatef [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glSampleMaski: maskNumber with: mask [

	<apicall: void 'glSampleMaski' (GLuint GLbitfield)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glScaled [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glScalef [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3b [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3bv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3ub [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3ubv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3ui [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3uiv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3us [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColor3usv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSecondaryColorPointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glSelectBuffer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glShadeModel [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord1sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord2sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord3sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoord4sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexCoordPointer [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexEnvf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexEnvfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexEnvi [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexEnviv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexGend [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexGendv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexGenf [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexGenfv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexGeni [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTexGeniv [

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
GL3_2 >> glTranslated [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glTranslatef [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex2sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex3sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertex4sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glVertexPointer [

	self shouldNotImplement
]

{ #category : #commands }
GL3_2 >> glWaitSync: sync with: flags with: timeout [

	<apicall: void 'glWaitSync' (GLsync GLbitfield GLuint64)>
	^ self externalCallFailed
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos2sv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3d [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3dv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3f [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3fv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3i [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3iv [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3s [

	self shouldNotImplement
]

{ #category : #'commands - deprecated' }
GL3_2 >> glWindowPos3sv [

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
