Class {
	#name : #GL12,
	#superclass : #GL11,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL12 class >> majorVersion [

	^ 1
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL12 class >> minorVersion [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:50'
}
GL12 class >> versionNumber [

	^ 12
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> ALIASED_LINE_WIDTH_RANGE [

	<generated>
	^ GL_ALIASED_LINE_WIDTH_RANGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> ALIASED_POINT_SIZE_RANGE [

	<generated>
	^ GL_ALIASED_POINT_SIZE_RANGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> BGR [

	<generated>
	^ GL_BGR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> BGRA [

	<generated>
	^ GL_BGRA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> CLAMP_TO_EDGE [

	<generated>
	^ GL_CLAMP_TO_EDGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> LIGHT_MODEL_COLOR_CONTROL [

	<generated>
	^ GL_LIGHT_MODEL_COLOR_CONTROL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> MAX_3D_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_3D_TEXTURE_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> MAX_ELEMENTS_INDICES [

	<generated>
	^ GL_MAX_ELEMENTS_INDICES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> MAX_ELEMENTS_VERTICES [

	<generated>
	^ GL_MAX_ELEMENTS_VERTICES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> PACK_IMAGE_HEIGHT [

	<generated>
	^ GL_PACK_IMAGE_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> PACK_SKIP_IMAGES [

	<generated>
	^ GL_PACK_SKIP_IMAGES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> PROXY_TEXTURE_3D [

	<generated>
	^ GL_PROXY_TEXTURE_3D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> RESCALE_NORMAL [

	<generated>
	^ GL_RESCALE_NORMAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> SEPARATE_SPECULAR_COLOR [

	<generated>
	^ GL_SEPARATE_SPECULAR_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> SINGLE_COLOR [

	<generated>
	^ GL_SINGLE_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> SMOOTH_LINE_WIDTH_GRANULARITY [

	<generated>
	^ GL_SMOOTH_LINE_WIDTH_GRANULARITY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> SMOOTH_LINE_WIDTH_RANGE [

	<generated>
	^ GL_SMOOTH_LINE_WIDTH_RANGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> SMOOTH_POINT_SIZE_GRANULARITY [

	<generated>
	^ GL_SMOOTH_POINT_SIZE_GRANULARITY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> SMOOTH_POINT_SIZE_RANGE [

	<generated>
	^ GL_SMOOTH_POINT_SIZE_RANGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> TEXTURE_3D [

	<generated>
	^ GL_TEXTURE_3D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> TEXTURE_BASE_LEVEL [

	<generated>
	^ GL_TEXTURE_BASE_LEVEL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> TEXTURE_BINDING_3D [

	<generated>
	^ GL_TEXTURE_BINDING_3D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> TEXTURE_DEPTH [

	<generated>
	^ GL_TEXTURE_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> TEXTURE_MAX_LEVEL [

	<generated>
	^ GL_TEXTURE_MAX_LEVEL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> TEXTURE_MAX_LOD [

	<generated>
	^ GL_TEXTURE_MAX_LOD
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> TEXTURE_MIN_LOD [

	<generated>
	^ GL_TEXTURE_MIN_LOD
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> TEXTURE_WRAP_R [

	<generated>
	^ GL_TEXTURE_WRAP_R
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNPACK_IMAGE_HEIGHT [

	<generated>
	^ GL_UNPACK_IMAGE_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNPACK_SKIP_IMAGES [

	<generated>
	^ GL_UNPACK_SKIP_IMAGES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNSIGNED_BYTE_2_3_3_REV [

	<generated>
	^ GL_UNSIGNED_BYTE_2_3_3_REV
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNSIGNED_BYTE_3_3_2 [

	<generated>
	^ GL_UNSIGNED_BYTE_3_3_2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNSIGNED_INT_10_10_10_2 [

	<generated>
	^ GL_UNSIGNED_INT_10_10_10_2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNSIGNED_INT_2_10_10_10_REV [

	<generated>
	^ GL_UNSIGNED_INT_2_10_10_10_REV
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNSIGNED_INT_8_8_8_8 [

	<generated>
	^ GL_UNSIGNED_INT_8_8_8_8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNSIGNED_INT_8_8_8_8_REV [

	<generated>
	^ GL_UNSIGNED_INT_8_8_8_8_REV
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNSIGNED_SHORT_1_5_5_5_REV [

	<generated>
	^ GL_UNSIGNED_SHORT_1_5_5_5_REV
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNSIGNED_SHORT_4_4_4_4 [

	<generated>
	^ GL_UNSIGNED_SHORT_4_4_4_4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNSIGNED_SHORT_4_4_4_4_REV [

	<generated>
	^ GL_UNSIGNED_SHORT_4_4_4_4_REV
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNSIGNED_SHORT_5_5_5_1 [

	<generated>
	^ GL_UNSIGNED_SHORT_5_5_5_1
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNSIGNED_SHORT_5_6_5 [

	<generated>
	^ GL_UNSIGNED_SHORT_5_6_5
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> UNSIGNED_SHORT_5_6_5_REV [

	<generated>
	^ GL_UNSIGNED_SHORT_5_6_5_REV
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> copyTexSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: x with: y with: width with: height [

	<generated>
	<apicall: void 'glCopyTexSubImage3D' (GLenum GLint GLint GLint GLint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> drawRangeElements: mode with: start with: end with: count with: type with: indices [

	<generated>
	<apicall: void 'glDrawRangeElements' (GLenum GLuint GLuint GLsizei GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> texImage3D: target with: level with: internalformat with: width with: height with: depth with: border with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexImage3D' (GLenum GLint GLint GLsizei GLsizei GLsizei GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL12 >> texSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexSubImage3D' (GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]
