Class {
	#name : #GL14,
	#superclass : #GL13,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL14 class >> majorVersion [

	^ 1
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL14 class >> minorVersion [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:51'
}
GL14 class >> versionNumber [

	^ 14
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> BLEND_COLOR [

	<generated>
	^ GL_BLEND_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> BLEND_DST_ALPHA [

	<generated>
	^ GL_BLEND_DST_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> BLEND_DST_RGB [

	<generated>
	^ GL_BLEND_DST_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> BLEND_EQUATION [

	<generated>
	^ GL_BLEND_EQUATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> BLEND_SRC_ALPHA [

	<generated>
	^ GL_BLEND_SRC_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> BLEND_SRC_RGB [

	<generated>
	^ GL_BLEND_SRC_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> COLOR_SUM [

	<generated>
	^ GL_COLOR_SUM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> COMPARE_R_TO_TEXTURE [

	<generated>
	^ GL_COMPARE_R_TO_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> CONSTANT_ALPHA [

	<generated>
	^ GL_CONSTANT_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> CONSTANT_COLOR [

	<generated>
	^ GL_CONSTANT_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> CURRENT_FOG_COORDINATE [

	<generated>
	^ GL_CURRENT_FOG_COORDINATE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> CURRENT_SECONDARY_COLOR [

	<generated>
	^ GL_CURRENT_SECONDARY_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> DECR_WRAP [

	<generated>
	^ GL_DECR_WRAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> DEPTH_COMPONENT16 [

	<generated>
	^ GL_DEPTH_COMPONENT16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> DEPTH_COMPONENT24 [

	<generated>
	^ GL_DEPTH_COMPONENT24
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> DEPTH_COMPONENT32 [

	<generated>
	^ GL_DEPTH_COMPONENT32
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> DEPTH_TEXTURE_MODE [

	<generated>
	^ GL_DEPTH_TEXTURE_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> FOG_COORDINATE [

	<generated>
	^ GL_FOG_COORDINATE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> FOG_COORDINATE_ARRAY [

	<generated>
	^ GL_FOG_COORDINATE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> FOG_COORDINATE_ARRAY_POINTER [

	<generated>
	^ GL_FOG_COORDINATE_ARRAY_POINTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> FOG_COORDINATE_ARRAY_STRIDE [

	<generated>
	^ GL_FOG_COORDINATE_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> FOG_COORDINATE_ARRAY_TYPE [

	<generated>
	^ GL_FOG_COORDINATE_ARRAY_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> FOG_COORDINATE_SOURCE [

	<generated>
	^ GL_FOG_COORDINATE_SOURCE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> FRAGMENT_DEPTH [

	<generated>
	^ GL_FRAGMENT_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> FUNC_ADD [

	<generated>
	^ GL_FUNC_ADD
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> FUNC_REVERSE_SUBTRACT [

	<generated>
	^ GL_FUNC_REVERSE_SUBTRACT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> FUNC_SUBTRACT [

	<generated>
	^ GL_FUNC_SUBTRACT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> GENERATE_MIPMAP [

	<generated>
	^ GL_GENERATE_MIPMAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> GENERATE_MIPMAP_HINT [

	<generated>
	^ GL_GENERATE_MIPMAP_HINT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> INCR_WRAP [

	<generated>
	^ GL_INCR_WRAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> MAX [

	<generated>
	^ GL_MAX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> MAX_TEXTURE_LOD_BIAS [

	<generated>
	^ GL_MAX_TEXTURE_LOD_BIAS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> MIN [

	<generated>
	^ GL_MIN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> MIRRORED_REPEAT [

	<generated>
	^ GL_MIRRORED_REPEAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> ONE_MINUS_CONSTANT_ALPHA [

	<generated>
	^ GL_ONE_MINUS_CONSTANT_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> ONE_MINUS_CONSTANT_COLOR [

	<generated>
	^ GL_ONE_MINUS_CONSTANT_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> POINT_DISTANCE_ATTENUATION [

	<generated>
	^ GL_POINT_DISTANCE_ATTENUATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> POINT_FADE_THRESHOLD_SIZE [

	<generated>
	^ GL_POINT_FADE_THRESHOLD_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> POINT_SIZE_MAX [

	<generated>
	^ GL_POINT_SIZE_MAX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> POINT_SIZE_MIN [

	<generated>
	^ GL_POINT_SIZE_MIN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> SECONDARY_COLOR_ARRAY [

	<generated>
	^ GL_SECONDARY_COLOR_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> SECONDARY_COLOR_ARRAY_POINTER [

	<generated>
	^ GL_SECONDARY_COLOR_ARRAY_POINTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> SECONDARY_COLOR_ARRAY_SIZE [

	<generated>
	^ GL_SECONDARY_COLOR_ARRAY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> SECONDARY_COLOR_ARRAY_STRIDE [

	<generated>
	^ GL_SECONDARY_COLOR_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> SECONDARY_COLOR_ARRAY_TYPE [

	<generated>
	^ GL_SECONDARY_COLOR_ARRAY_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> TEXTURE_COMPARE_FUNC [

	<generated>
	^ GL_TEXTURE_COMPARE_FUNC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> TEXTURE_COMPARE_MODE [

	<generated>
	^ GL_TEXTURE_COMPARE_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> TEXTURE_DEPTH_SIZE [

	<generated>
	^ GL_TEXTURE_DEPTH_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> TEXTURE_FILTER_CONTROL [

	<generated>
	^ GL_TEXTURE_FILTER_CONTROL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> TEXTURE_LOD_BIAS [

	<generated>
	^ GL_TEXTURE_LOD_BIAS
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> blendColor: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glBlendColor' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> blendEquation: mode [

	<generated>
	<apicall: void 'glBlendEquation' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> blendFuncSeparate: sfactorRGB with: dfactorRGB with: sfactorAlpha with: dfactorAlpha [

	<generated>
	<apicall: void 'glBlendFuncSeparate' (GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> fogCoordPointer: type with: stride with: pointer [

	<generated>
	<apicall: void 'glFogCoordPointer' (GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> fogCoordd: coord [

	<generated>
	<apicall: void 'glFogCoordd' (GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> fogCoorddv: coord [

	<generated>
	<apicall: void 'glFogCoorddv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> fogCoordf: coord [

	<generated>
	<apicall: void 'glFogCoordf' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> fogCoordfv: coord [

	<generated>
	<apicall: void 'glFogCoordfv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> multiDrawArrays: mode with: first with: count with: drawcount [

	<generated>
	<apicall: void 'glMultiDrawArrays' (GLenum GLint* GLsizei* GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> multiDrawElements: mode with: count with: type with: indices with: drawcount [

	<generated>
	<apicall: void 'glMultiDrawElements' (GLenum GLsizei* GLenum void** GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> pointParameterf: pname with: param [

	<generated>
	<apicall: void 'glPointParameterf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> pointParameterfv: pname with: params [

	<generated>
	<apicall: void 'glPointParameterfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> pointParameteri: pname with: param [

	<generated>
	<apicall: void 'glPointParameteri' (GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> pointParameteriv: pname with: params [

	<generated>
	<apicall: void 'glPointParameteriv' (GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3b: red with: green with: blue [

	<generated>
	<apicall: void 'glSecondaryColor3b' (GLbyte GLbyte GLbyte)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3bv: v [

	<generated>
	<apicall: void 'glSecondaryColor3bv' (GLbyte*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3d: red with: green with: blue [

	<generated>
	<apicall: void 'glSecondaryColor3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3dv: v [

	<generated>
	<apicall: void 'glSecondaryColor3dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3f: red with: green with: blue [

	<generated>
	<apicall: void 'glSecondaryColor3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3fv: v [

	<generated>
	<apicall: void 'glSecondaryColor3fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3i: red with: green with: blue [

	<generated>
	<apicall: void 'glSecondaryColor3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3iv: v [

	<generated>
	<apicall: void 'glSecondaryColor3iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3s: red with: green with: blue [

	<generated>
	<apicall: void 'glSecondaryColor3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3sv: v [

	<generated>
	<apicall: void 'glSecondaryColor3sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3ub: red with: green with: blue [

	<generated>
	<apicall: void 'glSecondaryColor3ub' (GLubyte GLubyte GLubyte)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3ubv: v [

	<generated>
	<apicall: void 'glSecondaryColor3ubv' (GLubyte*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3ui: red with: green with: blue [

	<generated>
	<apicall: void 'glSecondaryColor3ui' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3uiv: v [

	<generated>
	<apicall: void 'glSecondaryColor3uiv' (GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3us: red with: green with: blue [

	<generated>
	<apicall: void 'glSecondaryColor3us' (GLushort GLushort GLushort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColor3usv: v [

	<generated>
	<apicall: void 'glSecondaryColor3usv' (GLushort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> secondaryColorPointer: size with: type with: stride with: pointer [

	<generated>
	<apicall: void 'glSecondaryColorPointer' (GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos2d: x with: y [

	<generated>
	<apicall: void 'glWindowPos2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos2dv: v [

	<generated>
	<apicall: void 'glWindowPos2dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos2f: x with: y [

	<generated>
	<apicall: void 'glWindowPos2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos2fv: v [

	<generated>
	<apicall: void 'glWindowPos2fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos2i: x with: y [

	<generated>
	<apicall: void 'glWindowPos2i' (GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos2iv: v [

	<generated>
	<apicall: void 'glWindowPos2iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos2s: x with: y [

	<generated>
	<apicall: void 'glWindowPos2s' (GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos2sv: v [

	<generated>
	<apicall: void 'glWindowPos2sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos3d: x with: y with: z [

	<generated>
	<apicall: void 'glWindowPos3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos3dv: v [

	<generated>
	<apicall: void 'glWindowPos3dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos3f: x with: y with: z [

	<generated>
	<apicall: void 'glWindowPos3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos3fv: v [

	<generated>
	<apicall: void 'glWindowPos3fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos3i: x with: y with: z [

	<generated>
	<apicall: void 'glWindowPos3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos3iv: v [

	<generated>
	<apicall: void 'glWindowPos3iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos3s: x with: y with: z [

	<generated>
	<apicall: void 'glWindowPos3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL14 >> windowPos3sv: v [

	<generated>
	<apicall: void 'glWindowPos3sv' (GLshort*)>
	^ self externalCallFailed
]
