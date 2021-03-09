Class {
	#name : #GL13,
	#superclass : #GL12,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL13 class >> majorVersion [

	^ 1
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL13 class >> minorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:50'
}
GL13 class >> versionNumber [

	^ 13
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> ACTIVE_TEXTURE [

	<generated>
	^ GL_ACTIVE_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> ADD_SIGNED [

	<generated>
	^ GL_ADD_SIGNED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> CLAMP_TO_BORDER [

	<generated>
	^ GL_CLAMP_TO_BORDER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> CLIENT_ACTIVE_TEXTURE [

	<generated>
	^ GL_CLIENT_ACTIVE_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> COMBINE [

	<generated>
	^ GL_COMBINE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> COMBINE_ALPHA [

	<generated>
	^ GL_COMBINE_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> COMBINE_RGB [

	<generated>
	^ GL_COMBINE_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> COMPRESSED_ALPHA [

	<generated>
	^ GL_COMPRESSED_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> COMPRESSED_INTENSITY [

	<generated>
	^ GL_COMPRESSED_INTENSITY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> COMPRESSED_LUMINANCE [

	<generated>
	^ GL_COMPRESSED_LUMINANCE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> COMPRESSED_LUMINANCE_ALPHA [

	<generated>
	^ GL_COMPRESSED_LUMINANCE_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> COMPRESSED_RGB [

	<generated>
	^ GL_COMPRESSED_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> COMPRESSED_RGBA [

	<generated>
	^ GL_COMPRESSED_RGBA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> COMPRESSED_TEXTURE_FORMATS [

	<generated>
	^ GL_COMPRESSED_TEXTURE_FORMATS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> CONSTANT [

	<generated>
	^ GL_CONSTANT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> DOT3_RGB [

	<generated>
	^ GL_DOT3_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> DOT3_RGBA [

	<generated>
	^ GL_DOT3_RGBA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> INTERPOLATE [

	<generated>
	^ GL_INTERPOLATE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> MAX_CUBE_MAP_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_CUBE_MAP_TEXTURE_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> MAX_TEXTURE_UNITS [

	<generated>
	^ GL_MAX_TEXTURE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> MULTISAMPLE [

	<generated>
	^ GL_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> MULTISAMPLE_BIT [

	<generated>
	^ GL_MULTISAMPLE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> NORMAL_MAP [

	<generated>
	^ GL_NORMAL_MAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> NUM_COMPRESSED_TEXTURE_FORMATS [

	<generated>
	^ GL_NUM_COMPRESSED_TEXTURE_FORMATS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> OPERAND0_ALPHA [

	<generated>
	^ GL_OPERAND0_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> OPERAND0_RGB [

	<generated>
	^ GL_OPERAND0_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> OPERAND1_ALPHA [

	<generated>
	^ GL_OPERAND1_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> OPERAND1_RGB [

	<generated>
	^ GL_OPERAND1_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> OPERAND2_ALPHA [

	<generated>
	^ GL_OPERAND2_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> OPERAND2_RGB [

	<generated>
	^ GL_OPERAND2_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> PREVIOUS [

	<generated>
	^ GL_PREVIOUS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> PRIMARY_COLOR [

	<generated>
	^ GL_PRIMARY_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> PROXY_TEXTURE_CUBE_MAP [

	<generated>
	^ GL_PROXY_TEXTURE_CUBE_MAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> REFLECTION_MAP [

	<generated>
	^ GL_REFLECTION_MAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> RGB_SCALE [

	<generated>
	^ GL_RGB_SCALE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SAMPLES [

	<generated>
	^ GL_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SAMPLE_ALPHA_TO_COVERAGE [

	<generated>
	^ GL_SAMPLE_ALPHA_TO_COVERAGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SAMPLE_ALPHA_TO_ONE [

	<generated>
	^ GL_SAMPLE_ALPHA_TO_ONE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SAMPLE_BUFFERS [

	<generated>
	^ GL_SAMPLE_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SAMPLE_COVERAGE [

	<generated>
	^ GL_SAMPLE_COVERAGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SAMPLE_COVERAGE_INVERT [

	<generated>
	^ GL_SAMPLE_COVERAGE_INVERT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SAMPLE_COVERAGE_VALUE [

	<generated>
	^ GL_SAMPLE_COVERAGE_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SOURCE0_ALPHA [

	<generated>
	^ GL_SOURCE0_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SOURCE0_RGB [

	<generated>
	^ GL_SOURCE0_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SOURCE1_ALPHA [

	<generated>
	^ GL_SOURCE1_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SOURCE1_RGB [

	<generated>
	^ GL_SOURCE1_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SOURCE2_ALPHA [

	<generated>
	^ GL_SOURCE2_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SOURCE2_RGB [

	<generated>
	^ GL_SOURCE2_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> SUBTRACT [

	<generated>
	^ GL_SUBTRACT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE0 [

	<generated>
	^ GL_TEXTURE0
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE1 [

	<generated>
	^ GL_TEXTURE1
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE10 [

	<generated>
	^ GL_TEXTURE10
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE11 [

	<generated>
	^ GL_TEXTURE11
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE12 [

	<generated>
	^ GL_TEXTURE12
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE13 [

	<generated>
	^ GL_TEXTURE13
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE14 [

	<generated>
	^ GL_TEXTURE14
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE15 [

	<generated>
	^ GL_TEXTURE15
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE16 [

	<generated>
	^ GL_TEXTURE16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE17 [

	<generated>
	^ GL_TEXTURE17
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE18 [

	<generated>
	^ GL_TEXTURE18
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE19 [

	<generated>
	^ GL_TEXTURE19
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE2 [

	<generated>
	^ GL_TEXTURE2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE20 [

	<generated>
	^ GL_TEXTURE20
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE21 [

	<generated>
	^ GL_TEXTURE21
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE22 [

	<generated>
	^ GL_TEXTURE22
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE23 [

	<generated>
	^ GL_TEXTURE23
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE24 [

	<generated>
	^ GL_TEXTURE24
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE25 [

	<generated>
	^ GL_TEXTURE25
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE26 [

	<generated>
	^ GL_TEXTURE26
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE27 [

	<generated>
	^ GL_TEXTURE27
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE28 [

	<generated>
	^ GL_TEXTURE28
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE29 [

	<generated>
	^ GL_TEXTURE29
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE3 [

	<generated>
	^ GL_TEXTURE3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE30 [

	<generated>
	^ GL_TEXTURE30
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE31 [

	<generated>
	^ GL_TEXTURE31
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE4 [

	<generated>
	^ GL_TEXTURE4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE5 [

	<generated>
	^ GL_TEXTURE5
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE6 [

	<generated>
	^ GL_TEXTURE6
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE7 [

	<generated>
	^ GL_TEXTURE7
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE8 [

	<generated>
	^ GL_TEXTURE8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE9 [

	<generated>
	^ GL_TEXTURE9
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE_BINDING_CUBE_MAP [

	<generated>
	^ GL_TEXTURE_BINDING_CUBE_MAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE_COMPRESSED [

	<generated>
	^ GL_TEXTURE_COMPRESSED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE_COMPRESSED_IMAGE_SIZE [

	<generated>
	^ GL_TEXTURE_COMPRESSED_IMAGE_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE_COMPRESSION_HINT [

	<generated>
	^ GL_TEXTURE_COMPRESSION_HINT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE_CUBE_MAP [

	<generated>
	^ GL_TEXTURE_CUBE_MAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE_CUBE_MAP_NEGATIVE_X [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_NEGATIVE_X
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE_CUBE_MAP_NEGATIVE_Y [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE_CUBE_MAP_NEGATIVE_Z [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE_CUBE_MAP_POSITIVE_X [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_POSITIVE_X
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE_CUBE_MAP_POSITIVE_Y [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_POSITIVE_Y
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TEXTURE_CUBE_MAP_POSITIVE_Z [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_POSITIVE_Z
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TRANSPOSE_COLOR_MATRIX [

	<generated>
	^ GL_TRANSPOSE_COLOR_MATRIX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TRANSPOSE_MODELVIEW_MATRIX [

	<generated>
	^ GL_TRANSPOSE_MODELVIEW_MATRIX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TRANSPOSE_PROJECTION_MATRIX [

	<generated>
	^ GL_TRANSPOSE_PROJECTION_MATRIX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> TRANSPOSE_TEXTURE_MATRIX [

	<generated>
	^ GL_TRANSPOSE_TEXTURE_MATRIX
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> activeTexture: texture [

	<generated>
	<apicall: void 'glActiveTexture' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> clientActiveTexture: texture [

	<generated>
	<apicall: void 'glClientActiveTexture' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> compressedTexImage1D: target with: level with: internalformat with: width with: border with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTexImage1D' (GLenum GLint GLenum GLsizei GLint GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> compressedTexImage2D: target with: level with: internalformat with: width with: height with: border with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTexImage2D' (GLenum GLint GLenum GLsizei GLsizei GLint GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> compressedTexImage3D: target with: level with: internalformat with: width with: height with: depth with: border with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTexImage3D' (GLenum GLint GLenum GLsizei GLsizei GLsizei GLint GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> compressedTexSubImage1D: target with: level with: xoffset with: width with: format with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTexSubImage1D' (GLenum GLint GLint GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> compressedTexSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTexSubImage2D' (GLenum GLint GLint GLint GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> compressedTexSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTexSubImage3D' (GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> getCompressedTexImage: target with: level with: img [

	<generated>
	<apicall: void 'glGetCompressedTexImage' (GLenum GLint void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> loadTransposeMatrixd: m [

	<generated>
	<apicall: void 'glLoadTransposeMatrixd' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> loadTransposeMatrixf: m [

	<generated>
	<apicall: void 'glLoadTransposeMatrixf' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multTransposeMatrixd: m [

	<generated>
	<apicall: void 'glMultTransposeMatrixd' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multTransposeMatrixf: m [

	<generated>
	<apicall: void 'glMultTransposeMatrixf' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord1d: target with: s [

	<generated>
	<apicall: void 'glMultiTexCoord1d' (GLenum GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord1dv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord1dv' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord1f: target with: s [

	<generated>
	<apicall: void 'glMultiTexCoord1f' (GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord1fv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord1fv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord1i: target with: s [

	<generated>
	<apicall: void 'glMultiTexCoord1i' (GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord1iv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord1iv' (GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord1s: target with: s [

	<generated>
	<apicall: void 'glMultiTexCoord1s' (GLenum GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord1sv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord1sv' (GLenum GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord2d: target with: s with: t [

	<generated>
	<apicall: void 'glMultiTexCoord2d' (GLenum GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord2dv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord2dv' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord2f: target with: s with: t [

	<generated>
	<apicall: void 'glMultiTexCoord2f' (GLenum GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord2fv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord2fv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord2i: target with: s with: t [

	<generated>
	<apicall: void 'glMultiTexCoord2i' (GLenum GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord2iv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord2iv' (GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord2s: target with: s with: t [

	<generated>
	<apicall: void 'glMultiTexCoord2s' (GLenum GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord2sv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord2sv' (GLenum GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord3d: target with: s with: t with: r [

	<generated>
	<apicall: void 'glMultiTexCoord3d' (GLenum GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord3dv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord3dv' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord3f: target with: s with: t with: r [

	<generated>
	<apicall: void 'glMultiTexCoord3f' (GLenum GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord3fv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord3fv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord3i: target with: s with: t with: r [

	<generated>
	<apicall: void 'glMultiTexCoord3i' (GLenum GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord3iv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord3iv' (GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord3s: target with: s with: t with: r [

	<generated>
	<apicall: void 'glMultiTexCoord3s' (GLenum GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord3sv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord3sv' (GLenum GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord4d: target with: s with: t with: r with: q [

	<generated>
	<apicall: void 'glMultiTexCoord4d' (GLenum GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord4dv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord4dv' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord4f: target with: s with: t with: r with: q [

	<generated>
	<apicall: void 'glMultiTexCoord4f' (GLenum GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord4fv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord4fv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord4i: target with: s with: t with: r with: q [

	<generated>
	<apicall: void 'glMultiTexCoord4i' (GLenum GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord4iv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord4iv' (GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord4s: target with: s with: t with: r with: q [

	<generated>
	<apicall: void 'glMultiTexCoord4s' (GLenum GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> multiTexCoord4sv: target with: v [

	<generated>
	<apicall: void 'glMultiTexCoord4sv' (GLenum GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL13 >> sampleCoverage: value with: invert [

	<generated>
	<apicall: void 'glSampleCoverage' (GLfloat GLboolean)>
	^ self externalCallFailed
]
