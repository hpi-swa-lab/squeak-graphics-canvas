Class {
	#name : #'GL1_3',
	#superclass : #'GL1_2',
	#category : #'MPOpenGL-Versions'
}

{ #category : #version }
GL1_3 class >> majorVersion [

	^ 1
]

{ #category : #version }
GL1_3 class >> minorVersion [

	^ 3
]

{ #category : #commands }
GL1_3 >> glActiveTexture: texture [

	<apicall: void 'glActiveTexture' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glClientActiveTexture: texture [

	<apicall: void 'glClientActiveTexture' (GLenum)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glCompressedTexImage1D: target with: level with: internalformat with: width with: border with: imageSize with: data [

	<apicall: void 'glCompressedTexImage1D' (GLenum GLint GLenum GLsizei GLint GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glCompressedTexImage2D: target with: level with: internalformat with: width with: height with: border with: imageSize with: data [

	<apicall: void 'glCompressedTexImage2D' (GLenum GLint GLenum GLsizei GLsizei GLint GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glCompressedTexImage3D: target with: level with: internalformat with: width with: height with: depth with: border with: imageSize with: data [

	<apicall: void 'glCompressedTexImage3D' (GLenum GLint GLenum GLsizei GLsizei GLsizei GLint GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glCompressedTexSubImage1D: target with: level with: xoffset with: width with: format with: imageSize with: data [

	<apicall: void 'glCompressedTexSubImage1D' (GLenum GLint GLint GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glCompressedTexSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: imageSize with: data [

	<apicall: void 'glCompressedTexSubImage2D' (GLenum GLint GLint GLint GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glCompressedTexSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: imageSize with: data [

	<apicall: void 'glCompressedTexSubImage3D' (GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glGetCompressedTexImage: target with: level with: img [

	<apicall: void 'glGetCompressedTexImage' (GLenum GLint void*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glLoadTransposeMatrixd: m [

	<apicall: void 'glLoadTransposeMatrixd' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glLoadTransposeMatrixf: m [

	<apicall: void 'glLoadTransposeMatrixf' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultTransposeMatrixd: m [

	<apicall: void 'glMultTransposeMatrixd' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultTransposeMatrixf: m [

	<apicall: void 'glMultTransposeMatrixf' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord1d: target with: s [

	<apicall: void 'glMultiTexCoord1d' (GLenum GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord1dv: target with: v [

	<apicall: void 'glMultiTexCoord1dv' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord1f: target with: s [

	<apicall: void 'glMultiTexCoord1f' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord1fv: target with: v [

	<apicall: void 'glMultiTexCoord1fv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord1i: target with: s [

	<apicall: void 'glMultiTexCoord1i' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord1iv: target with: v [

	<apicall: void 'glMultiTexCoord1iv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord1s: target with: s [

	<apicall: void 'glMultiTexCoord1s' (GLenum GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord1sv: target with: v [

	<apicall: void 'glMultiTexCoord1sv' (GLenum GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord2d: target with: s with: t [

	<apicall: void 'glMultiTexCoord2d' (GLenum GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord2dv: target with: v [

	<apicall: void 'glMultiTexCoord2dv' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord2f: target with: s with: t [

	<apicall: void 'glMultiTexCoord2f' (GLenum GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord2fv: target with: v [

	<apicall: void 'glMultiTexCoord2fv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord2i: target with: s with: t [

	<apicall: void 'glMultiTexCoord2i' (GLenum GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord2iv: target with: v [

	<apicall: void 'glMultiTexCoord2iv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord2s: target with: s with: t [

	<apicall: void 'glMultiTexCoord2s' (GLenum GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord2sv: target with: v [

	<apicall: void 'glMultiTexCoord2sv' (GLenum GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord3d: target with: s with: t with: r [

	<apicall: void 'glMultiTexCoord3d' (GLenum GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord3dv: target with: v [

	<apicall: void 'glMultiTexCoord3dv' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord3f: target with: s with: t with: r [

	<apicall: void 'glMultiTexCoord3f' (GLenum GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord3fv: target with: v [

	<apicall: void 'glMultiTexCoord3fv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord3i: target with: s with: t with: r [

	<apicall: void 'glMultiTexCoord3i' (GLenum GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord3iv: target with: v [

	<apicall: void 'glMultiTexCoord3iv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord3s: target with: s with: t with: r [

	<apicall: void 'glMultiTexCoord3s' (GLenum GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord3sv: target with: v [

	<apicall: void 'glMultiTexCoord3sv' (GLenum GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord4d: target with: s with: t with: r with: q [

	<apicall: void 'glMultiTexCoord4d' (GLenum GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord4dv: target with: v [

	<apicall: void 'glMultiTexCoord4dv' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord4f: target with: s with: t with: r with: q [

	<apicall: void 'glMultiTexCoord4f' (GLenum GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord4fv: target with: v [

	<apicall: void 'glMultiTexCoord4fv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord4i: target with: s with: t with: r with: q [

	<apicall: void 'glMultiTexCoord4i' (GLenum GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord4iv: target with: v [

	<apicall: void 'glMultiTexCoord4iv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord4s: target with: s with: t with: r with: q [

	<apicall: void 'glMultiTexCoord4s' (GLenum GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glMultiTexCoord4sv: target with: v [

	<apicall: void 'glMultiTexCoord4sv' (GLenum GLshort*)>
	^ self externalCallFailed
]

{ #category : #commands }
GL1_3 >> glSampleCoverage: value with: invert [

	<apicall: void 'glSampleCoverage' (GLfloat GLboolean)>
	^ self externalCallFailed
]
