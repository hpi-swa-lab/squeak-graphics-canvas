Class {
	#name : #GLES20,
	#superclass : #GLES2API,
	#category : #'OpenGL-API-GLES2',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLES20 class >> majorVersion [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLES20 class >> minorVersion [

	^ 0
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 16:11'
}
GLES20 class >> versionNumber [

	^ 20
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ACTIVE_ATTRIBUTES [

	<generated>
	^ GL_ACTIVE_ATTRIBUTES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ACTIVE_ATTRIBUTE_MAX_LENGTH [

	<generated>
	^ GL_ACTIVE_ATTRIBUTE_MAX_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ACTIVE_TEXTURE [

	<generated>
	^ GL_ACTIVE_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ACTIVE_UNIFORMS [

	<generated>
	^ GL_ACTIVE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ACTIVE_UNIFORM_MAX_LENGTH [

	<generated>
	^ GL_ACTIVE_UNIFORM_MAX_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ALIASED_LINE_WIDTH_RANGE [

	<generated>
	^ GL_ALIASED_LINE_WIDTH_RANGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ALIASED_POINT_SIZE_RANGE [

	<generated>
	^ GL_ALIASED_POINT_SIZE_RANGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ALPHA [

	<generated>
	^ GL_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ALPHA_BITS [

	<generated>
	^ GL_ALPHA_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ALWAYS [

	<generated>
	^ GL_ALWAYS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ARRAY_BUFFER [

	<generated>
	^ GL_ARRAY_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_ARRAY_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ATTACHED_SHADERS [

	<generated>
	^ GL_ATTACHED_SHADERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BACK [

	<generated>
	^ GL_BACK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BLEND [

	<generated>
	^ GL_BLEND
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BLEND_COLOR [

	<generated>
	^ GL_BLEND_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BLEND_DST_ALPHA [

	<generated>
	^ GL_BLEND_DST_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BLEND_DST_RGB [

	<generated>
	^ GL_BLEND_DST_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BLEND_EQUATION [

	<generated>
	^ GL_BLEND_EQUATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BLEND_EQUATION_ALPHA [

	<generated>
	^ GL_BLEND_EQUATION_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BLEND_EQUATION_RGB [

	<generated>
	^ GL_BLEND_EQUATION_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BLEND_SRC_ALPHA [

	<generated>
	^ GL_BLEND_SRC_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BLEND_SRC_RGB [

	<generated>
	^ GL_BLEND_SRC_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BLUE_BITS [

	<generated>
	^ GL_BLUE_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BOOL [

	<generated>
	^ GL_BOOL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BOOL_VEC2 [

	<generated>
	^ GL_BOOL_VEC2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BOOL_VEC3 [

	<generated>
	^ GL_BOOL_VEC3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BOOL_VEC4 [

	<generated>
	^ GL_BOOL_VEC4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BUFFER_SIZE [

	<generated>
	^ GL_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BUFFER_USAGE [

	<generated>
	^ GL_BUFFER_USAGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> BYTE [

	<generated>
	^ GL_BYTE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> CCW [

	<generated>
	^ GL_CCW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> CLAMP_TO_EDGE [

	<generated>
	^ GL_CLAMP_TO_EDGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> COLOR_ATTACHMENT0 [

	<generated>
	^ GL_COLOR_ATTACHMENT0
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> COLOR_BUFFER_BIT [

	<generated>
	^ GL_COLOR_BUFFER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> COLOR_CLEAR_VALUE [

	<generated>
	^ GL_COLOR_CLEAR_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> COLOR_WRITEMASK [

	<generated>
	^ GL_COLOR_WRITEMASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> COMPILE_STATUS [

	<generated>
	^ GL_COMPILE_STATUS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> COMPRESSED_TEXTURE_FORMATS [

	<generated>
	^ GL_COMPRESSED_TEXTURE_FORMATS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> CONSTANT_ALPHA [

	<generated>
	^ GL_CONSTANT_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> CONSTANT_COLOR [

	<generated>
	^ GL_CONSTANT_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> CULL_FACE [

	<generated>
	^ GL_CULL_FACE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> CULL_FACE_MODE [

	<generated>
	^ GL_CULL_FACE_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> CURRENT_PROGRAM [

	<generated>
	^ GL_CURRENT_PROGRAM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> CURRENT_VERTEX_ATTRIB [

	<generated>
	^ GL_CURRENT_VERTEX_ATTRIB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> CW [

	<generated>
	^ GL_CW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DECR [

	<generated>
	^ GL_DECR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DECR_WRAP [

	<generated>
	^ GL_DECR_WRAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DELETE_STATUS [

	<generated>
	^ GL_DELETE_STATUS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DEPTH_ATTACHMENT [

	<generated>
	^ GL_DEPTH_ATTACHMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DEPTH_BITS [

	<generated>
	^ GL_DEPTH_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DEPTH_BUFFER_BIT [

	<generated>
	^ GL_DEPTH_BUFFER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DEPTH_CLEAR_VALUE [

	<generated>
	^ GL_DEPTH_CLEAR_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DEPTH_COMPONENT [

	<generated>
	^ GL_DEPTH_COMPONENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DEPTH_COMPONENT16 [

	<generated>
	^ GL_DEPTH_COMPONENT16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DEPTH_FUNC [

	<generated>
	^ GL_DEPTH_FUNC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DEPTH_RANGE [

	<generated>
	^ GL_DEPTH_RANGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DEPTH_TEST [

	<generated>
	^ GL_DEPTH_TEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DEPTH_WRITEMASK [

	<generated>
	^ GL_DEPTH_WRITEMASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DITHER [

	<generated>
	^ GL_DITHER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DONT_CARE [

	<generated>
	^ GL_DONT_CARE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DST_ALPHA [

	<generated>
	^ GL_DST_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DST_COLOR [

	<generated>
	^ GL_DST_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> DYNAMIC_DRAW [

	<generated>
	^ GL_DYNAMIC_DRAW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ELEMENT_ARRAY_BUFFER [

	<generated>
	^ GL_ELEMENT_ARRAY_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ELEMENT_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_ELEMENT_ARRAY_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> EQUAL [

	<generated>
	^ GL_EQUAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> EXTENSIONS [

	<generated>
	^ GL_EXTENSIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FALSE [

	<generated>
	^ GL_FALSE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FASTEST [

	<generated>
	^ GL_FASTEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FIXED [

	<generated>
	^ GL_FIXED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FLOAT [

	<generated>
	^ GL_FLOAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FLOAT_MAT2 [

	<generated>
	^ GL_FLOAT_MAT2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FLOAT_MAT3 [

	<generated>
	^ GL_FLOAT_MAT3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FLOAT_MAT4 [

	<generated>
	^ GL_FLOAT_MAT4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FLOAT_VEC2 [

	<generated>
	^ GL_FLOAT_VEC2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FLOAT_VEC3 [

	<generated>
	^ GL_FLOAT_VEC3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FLOAT_VEC4 [

	<generated>
	^ GL_FLOAT_VEC4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRAGMENT_SHADER [

	<generated>
	^ GL_FRAGMENT_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRAMEBUFFER [

	<generated>
	^ GL_FRAMEBUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRAMEBUFFER_ATTACHMENT_OBJECT_NAME [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRAMEBUFFER_BINDING [

	<generated>
	^ GL_FRAMEBUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRAMEBUFFER_COMPLETE [

	<generated>
	^ GL_FRAMEBUFFER_COMPLETE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRAMEBUFFER_INCOMPLETE_ATTACHMENT [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRAMEBUFFER_INCOMPLETE_DIMENSIONS [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRAMEBUFFER_UNSUPPORTED [

	<generated>
	^ GL_FRAMEBUFFER_UNSUPPORTED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRONT [

	<generated>
	^ GL_FRONT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRONT_AND_BACK [

	<generated>
	^ GL_FRONT_AND_BACK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FRONT_FACE [

	<generated>
	^ GL_FRONT_FACE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FUNC_ADD [

	<generated>
	^ GL_FUNC_ADD
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FUNC_REVERSE_SUBTRACT [

	<generated>
	^ GL_FUNC_REVERSE_SUBTRACT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> FUNC_SUBTRACT [

	<generated>
	^ GL_FUNC_SUBTRACT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> GENERATE_MIPMAP_HINT [

	<generated>
	^ GL_GENERATE_MIPMAP_HINT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> GEQUAL [

	<generated>
	^ GL_GEQUAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> GREATER [

	<generated>
	^ GL_GREATER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> GREEN_BITS [

	<generated>
	^ GL_GREEN_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> HIGH_FLOAT [

	<generated>
	^ GL_HIGH_FLOAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> HIGH_INT [

	<generated>
	^ GL_HIGH_INT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> IMPLEMENTATION_COLOR_READ_FORMAT [

	<generated>
	^ GL_IMPLEMENTATION_COLOR_READ_FORMAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> IMPLEMENTATION_COLOR_READ_TYPE [

	<generated>
	^ GL_IMPLEMENTATION_COLOR_READ_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> INCR [

	<generated>
	^ GL_INCR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> INCR_WRAP [

	<generated>
	^ GL_INCR_WRAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> INFO_LOG_LENGTH [

	<generated>
	^ GL_INFO_LOG_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> INT [

	<generated>
	^ GL_INT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> INT_VEC2 [

	<generated>
	^ GL_INT_VEC2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> INT_VEC3 [

	<generated>
	^ GL_INT_VEC3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> INT_VEC4 [

	<generated>
	^ GL_INT_VEC4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> INVALID_ENUM [

	<generated>
	^ GL_INVALID_ENUM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> INVALID_FRAMEBUFFER_OPERATION [

	<generated>
	^ GL_INVALID_FRAMEBUFFER_OPERATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> INVALID_OPERATION [

	<generated>
	^ GL_INVALID_OPERATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> INVALID_VALUE [

	<generated>
	^ GL_INVALID_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> INVERT [

	<generated>
	^ GL_INVERT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> KEEP [

	<generated>
	^ GL_KEEP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LEQUAL [

	<generated>
	^ GL_LEQUAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LESS [

	<generated>
	^ GL_LESS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LINEAR [

	<generated>
	^ GL_LINEAR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LINEAR_MIPMAP_LINEAR [

	<generated>
	^ GL_LINEAR_MIPMAP_LINEAR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LINEAR_MIPMAP_NEAREST [

	<generated>
	^ GL_LINEAR_MIPMAP_NEAREST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LINES [

	<generated>
	^ GL_LINES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LINE_LOOP [

	<generated>
	^ GL_LINE_LOOP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LINE_STRIP [

	<generated>
	^ GL_LINE_STRIP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LINE_WIDTH [

	<generated>
	^ GL_LINE_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LINK_STATUS [

	<generated>
	^ GL_LINK_STATUS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LOW_FLOAT [

	<generated>
	^ GL_LOW_FLOAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LOW_INT [

	<generated>
	^ GL_LOW_INT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LUMINANCE [

	<generated>
	^ GL_LUMINANCE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> LUMINANCE_ALPHA [

	<generated>
	^ GL_LUMINANCE_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MAX_COMBINED_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MAX_CUBE_MAP_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_CUBE_MAP_TEXTURE_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MAX_FRAGMENT_UNIFORM_VECTORS [

	<generated>
	^ GL_MAX_FRAGMENT_UNIFORM_VECTORS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MAX_RENDERBUFFER_SIZE [

	<generated>
	^ GL_MAX_RENDERBUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MAX_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_TEXTURE_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MAX_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_TEXTURE_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MAX_VARYING_VECTORS [

	<generated>
	^ GL_MAX_VARYING_VECTORS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MAX_VERTEX_ATTRIBS [

	<generated>
	^ GL_MAX_VERTEX_ATTRIBS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MAX_VERTEX_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MAX_VERTEX_UNIFORM_VECTORS [

	<generated>
	^ GL_MAX_VERTEX_UNIFORM_VECTORS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MAX_VIEWPORT_DIMS [

	<generated>
	^ GL_MAX_VIEWPORT_DIMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MEDIUM_FLOAT [

	<generated>
	^ GL_MEDIUM_FLOAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MEDIUM_INT [

	<generated>
	^ GL_MEDIUM_INT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> MIRRORED_REPEAT [

	<generated>
	^ GL_MIRRORED_REPEAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> NEAREST [

	<generated>
	^ GL_NEAREST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> NEAREST_MIPMAP_LINEAR [

	<generated>
	^ GL_NEAREST_MIPMAP_LINEAR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> NEAREST_MIPMAP_NEAREST [

	<generated>
	^ GL_NEAREST_MIPMAP_NEAREST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> NEVER [

	<generated>
	^ GL_NEVER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> NICEST [

	<generated>
	^ GL_NICEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> NONE [

	<generated>
	^ GL_NONE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> NOTEQUAL [

	<generated>
	^ GL_NOTEQUAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> NO_ERROR [

	<generated>
	^ GL_NO_ERROR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> NUM_COMPRESSED_TEXTURE_FORMATS [

	<generated>
	^ GL_NUM_COMPRESSED_TEXTURE_FORMATS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> NUM_SHADER_BINARY_FORMATS [

	<generated>
	^ GL_NUM_SHADER_BINARY_FORMATS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ONE [

	<generated>
	^ GL_ONE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ONE_MINUS_CONSTANT_ALPHA [

	<generated>
	^ GL_ONE_MINUS_CONSTANT_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ONE_MINUS_CONSTANT_COLOR [

	<generated>
	^ GL_ONE_MINUS_CONSTANT_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ONE_MINUS_DST_ALPHA [

	<generated>
	^ GL_ONE_MINUS_DST_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ONE_MINUS_DST_COLOR [

	<generated>
	^ GL_ONE_MINUS_DST_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ONE_MINUS_SRC_ALPHA [

	<generated>
	^ GL_ONE_MINUS_SRC_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ONE_MINUS_SRC_COLOR [

	<generated>
	^ GL_ONE_MINUS_SRC_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> OUT_OF_MEMORY [

	<generated>
	^ GL_OUT_OF_MEMORY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> PACK_ALIGNMENT [

	<generated>
	^ GL_PACK_ALIGNMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> POINTS [

	<generated>
	^ GL_POINTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> POLYGON_OFFSET_FACTOR [

	<generated>
	^ GL_POLYGON_OFFSET_FACTOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> POLYGON_OFFSET_FILL [

	<generated>
	^ GL_POLYGON_OFFSET_FILL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> POLYGON_OFFSET_UNITS [

	<generated>
	^ GL_POLYGON_OFFSET_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RED_BITS [

	<generated>
	^ GL_RED_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RENDERBUFFER [

	<generated>
	^ GL_RENDERBUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RENDERBUFFER_ALPHA_SIZE [

	<generated>
	^ GL_RENDERBUFFER_ALPHA_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RENDERBUFFER_BINDING [

	<generated>
	^ GL_RENDERBUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RENDERBUFFER_BLUE_SIZE [

	<generated>
	^ GL_RENDERBUFFER_BLUE_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RENDERBUFFER_DEPTH_SIZE [

	<generated>
	^ GL_RENDERBUFFER_DEPTH_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RENDERBUFFER_GREEN_SIZE [

	<generated>
	^ GL_RENDERBUFFER_GREEN_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RENDERBUFFER_HEIGHT [

	<generated>
	^ GL_RENDERBUFFER_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RENDERBUFFER_INTERNAL_FORMAT [

	<generated>
	^ GL_RENDERBUFFER_INTERNAL_FORMAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RENDERBUFFER_RED_SIZE [

	<generated>
	^ GL_RENDERBUFFER_RED_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RENDERBUFFER_STENCIL_SIZE [

	<generated>
	^ GL_RENDERBUFFER_STENCIL_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RENDERBUFFER_WIDTH [

	<generated>
	^ GL_RENDERBUFFER_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RENDERER [

	<generated>
	^ GL_RENDERER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> REPEAT [

	<generated>
	^ GL_REPEAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> REPLACE [

	<generated>
	^ GL_REPLACE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RGB [

	<generated>
	^ GL_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RGB565 [

	<generated>
	^ GL_RGB565
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RGB5_A1 [

	<generated>
	^ GL_RGB5_A1
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RGBA [

	<generated>
	^ GL_RGBA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> RGBA4 [

	<generated>
	^ GL_RGBA4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SAMPLER_2D [

	<generated>
	^ GL_SAMPLER_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SAMPLER_CUBE [

	<generated>
	^ GL_SAMPLER_CUBE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SAMPLES [

	<generated>
	^ GL_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SAMPLE_ALPHA_TO_COVERAGE [

	<generated>
	^ GL_SAMPLE_ALPHA_TO_COVERAGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SAMPLE_BUFFERS [

	<generated>
	^ GL_SAMPLE_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SAMPLE_COVERAGE [

	<generated>
	^ GL_SAMPLE_COVERAGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SAMPLE_COVERAGE_INVERT [

	<generated>
	^ GL_SAMPLE_COVERAGE_INVERT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SAMPLE_COVERAGE_VALUE [

	<generated>
	^ GL_SAMPLE_COVERAGE_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SCISSOR_BOX [

	<generated>
	^ GL_SCISSOR_BOX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SCISSOR_TEST [

	<generated>
	^ GL_SCISSOR_TEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SHADER_BINARY_FORMATS [

	<generated>
	^ GL_SHADER_BINARY_FORMATS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SHADER_COMPILER [

	<generated>
	^ GL_SHADER_COMPILER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SHADER_SOURCE_LENGTH [

	<generated>
	^ GL_SHADER_SOURCE_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SHADER_TYPE [

	<generated>
	^ GL_SHADER_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SHADING_LANGUAGE_VERSION [

	<generated>
	^ GL_SHADING_LANGUAGE_VERSION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SHORT [

	<generated>
	^ GL_SHORT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SRC_ALPHA [

	<generated>
	^ GL_SRC_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SRC_ALPHA_SATURATE [

	<generated>
	^ GL_SRC_ALPHA_SATURATE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SRC_COLOR [

	<generated>
	^ GL_SRC_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STATIC_DRAW [

	<generated>
	^ GL_STATIC_DRAW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_ATTACHMENT [

	<generated>
	^ GL_STENCIL_ATTACHMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_BACK_FAIL [

	<generated>
	^ GL_STENCIL_BACK_FAIL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_BACK_FUNC [

	<generated>
	^ GL_STENCIL_BACK_FUNC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_BACK_PASS_DEPTH_FAIL [

	<generated>
	^ GL_STENCIL_BACK_PASS_DEPTH_FAIL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_BACK_PASS_DEPTH_PASS [

	<generated>
	^ GL_STENCIL_BACK_PASS_DEPTH_PASS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_BACK_REF [

	<generated>
	^ GL_STENCIL_BACK_REF
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_BACK_VALUE_MASK [

	<generated>
	^ GL_STENCIL_BACK_VALUE_MASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_BACK_WRITEMASK [

	<generated>
	^ GL_STENCIL_BACK_WRITEMASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_BITS [

	<generated>
	^ GL_STENCIL_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_BUFFER_BIT [

	<generated>
	^ GL_STENCIL_BUFFER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_CLEAR_VALUE [

	<generated>
	^ GL_STENCIL_CLEAR_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_FAIL [

	<generated>
	^ GL_STENCIL_FAIL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_FUNC [

	<generated>
	^ GL_STENCIL_FUNC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_INDEX8 [

	<generated>
	^ GL_STENCIL_INDEX8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_PASS_DEPTH_FAIL [

	<generated>
	^ GL_STENCIL_PASS_DEPTH_FAIL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_PASS_DEPTH_PASS [

	<generated>
	^ GL_STENCIL_PASS_DEPTH_PASS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_REF [

	<generated>
	^ GL_STENCIL_REF
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_TEST [

	<generated>
	^ GL_STENCIL_TEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_VALUE_MASK [

	<generated>
	^ GL_STENCIL_VALUE_MASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STENCIL_WRITEMASK [

	<generated>
	^ GL_STENCIL_WRITEMASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> STREAM_DRAW [

	<generated>
	^ GL_STREAM_DRAW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> SUBPIXEL_BITS [

	<generated>
	^ GL_SUBPIXEL_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE [

	<generated>
	^ GL_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE0 [

	<generated>
	^ GL_TEXTURE0
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE1 [

	<generated>
	^ GL_TEXTURE1
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE10 [

	<generated>
	^ GL_TEXTURE10
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE11 [

	<generated>
	^ GL_TEXTURE11
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE12 [

	<generated>
	^ GL_TEXTURE12
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE13 [

	<generated>
	^ GL_TEXTURE13
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE14 [

	<generated>
	^ GL_TEXTURE14
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE15 [

	<generated>
	^ GL_TEXTURE15
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE16 [

	<generated>
	^ GL_TEXTURE16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE17 [

	<generated>
	^ GL_TEXTURE17
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE18 [

	<generated>
	^ GL_TEXTURE18
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE19 [

	<generated>
	^ GL_TEXTURE19
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE2 [

	<generated>
	^ GL_TEXTURE2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE20 [

	<generated>
	^ GL_TEXTURE20
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE21 [

	<generated>
	^ GL_TEXTURE21
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE22 [

	<generated>
	^ GL_TEXTURE22
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE23 [

	<generated>
	^ GL_TEXTURE23
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE24 [

	<generated>
	^ GL_TEXTURE24
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE25 [

	<generated>
	^ GL_TEXTURE25
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE26 [

	<generated>
	^ GL_TEXTURE26
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE27 [

	<generated>
	^ GL_TEXTURE27
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE28 [

	<generated>
	^ GL_TEXTURE28
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE29 [

	<generated>
	^ GL_TEXTURE29
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE3 [

	<generated>
	^ GL_TEXTURE3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE30 [

	<generated>
	^ GL_TEXTURE30
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE31 [

	<generated>
	^ GL_TEXTURE31
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE4 [

	<generated>
	^ GL_TEXTURE4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE5 [

	<generated>
	^ GL_TEXTURE5
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE6 [

	<generated>
	^ GL_TEXTURE6
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE7 [

	<generated>
	^ GL_TEXTURE7
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE8 [

	<generated>
	^ GL_TEXTURE8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE9 [

	<generated>
	^ GL_TEXTURE9
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_2D [

	<generated>
	^ GL_TEXTURE_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_BINDING_2D [

	<generated>
	^ GL_TEXTURE_BINDING_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_BINDING_CUBE_MAP [

	<generated>
	^ GL_TEXTURE_BINDING_CUBE_MAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_CUBE_MAP [

	<generated>
	^ GL_TEXTURE_CUBE_MAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_CUBE_MAP_NEGATIVE_X [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_NEGATIVE_X
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_CUBE_MAP_NEGATIVE_Y [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_CUBE_MAP_NEGATIVE_Z [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_CUBE_MAP_POSITIVE_X [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_POSITIVE_X
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_CUBE_MAP_POSITIVE_Y [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_POSITIVE_Y
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_CUBE_MAP_POSITIVE_Z [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_POSITIVE_Z
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_MAG_FILTER [

	<generated>
	^ GL_TEXTURE_MAG_FILTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_MIN_FILTER [

	<generated>
	^ GL_TEXTURE_MIN_FILTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_WRAP_S [

	<generated>
	^ GL_TEXTURE_WRAP_S
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TEXTURE_WRAP_T [

	<generated>
	^ GL_TEXTURE_WRAP_T
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TRIANGLES [

	<generated>
	^ GL_TRIANGLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TRIANGLE_FAN [

	<generated>
	^ GL_TRIANGLE_FAN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TRIANGLE_STRIP [

	<generated>
	^ GL_TRIANGLE_STRIP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> TRUE [

	<generated>
	^ GL_TRUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> UNPACK_ALIGNMENT [

	<generated>
	^ GL_UNPACK_ALIGNMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> UNSIGNED_BYTE [

	<generated>
	^ GL_UNSIGNED_BYTE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> UNSIGNED_INT [

	<generated>
	^ GL_UNSIGNED_INT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> UNSIGNED_SHORT [

	<generated>
	^ GL_UNSIGNED_SHORT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> UNSIGNED_SHORT_4_4_4_4 [

	<generated>
	^ GL_UNSIGNED_SHORT_4_4_4_4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> UNSIGNED_SHORT_5_5_5_1 [

	<generated>
	^ GL_UNSIGNED_SHORT_5_5_5_1
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> UNSIGNED_SHORT_5_6_5 [

	<generated>
	^ GL_UNSIGNED_SHORT_5_6_5
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> VALIDATE_STATUS [

	<generated>
	^ GL_VALIDATE_STATUS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> VENDOR [

	<generated>
	^ GL_VENDOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> VERSION [

	<generated>
	^ GL_VERSION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> VERTEX_ATTRIB_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> VERTEX_ATTRIB_ARRAY_ENABLED [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_ENABLED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> VERTEX_ATTRIB_ARRAY_NORMALIZED [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> VERTEX_ATTRIB_ARRAY_POINTER [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_POINTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> VERTEX_ATTRIB_ARRAY_SIZE [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> VERTEX_ATTRIB_ARRAY_STRIDE [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> VERTEX_ATTRIB_ARRAY_TYPE [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> VERTEX_SHADER [

	<generated>
	^ GL_VERTEX_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> VIEWPORT [

	<generated>
	^ GL_VIEWPORT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> ZERO [

	<generated>
	^ GL_ZERO
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> activeTexture: texture [

	<generated>
	<apicall: void 'glActiveTexture' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> attachShader: program with: shader [

	<generated>
	<apicall: void 'glAttachShader' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> bindAttribLocation: program with: index with: name [

	<generated>
	<apicall: void 'glBindAttribLocation' (GLuint GLuint GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> bindBuffer: target with: buffer [

	<generated>
	<apicall: void 'glBindBuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> bindFramebuffer: target with: framebuffer [

	<generated>
	<apicall: void 'glBindFramebuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> bindRenderbuffer: target with: renderbuffer [

	<generated>
	<apicall: void 'glBindRenderbuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> bindTexture: target with: texture [

	<generated>
	<apicall: void 'glBindTexture' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> blendColor: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glBlendColor' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> blendEquation: mode [

	<generated>
	<apicall: void 'glBlendEquation' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> blendEquationSeparate: modeRGB with: modeAlpha [

	<generated>
	<apicall: void 'glBlendEquationSeparate' (GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> blendFunc: sfactor with: dfactor [

	<generated>
	<apicall: void 'glBlendFunc' (GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> blendFuncSeparate: sfactorRGB with: dfactorRGB with: sfactorAlpha with: dfactorAlpha [

	<generated>
	<apicall: void 'glBlendFuncSeparate' (GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> bufferData: target with: size with: data with: usage [

	<generated>
	<apicall: void 'glBufferData' (GLenum GLsizeiptr void* GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> bufferSubData: target with: offset with: size with: data [

	<generated>
	<apicall: void 'glBufferSubData' (GLenum GLintptr GLsizeiptr void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> checkFramebufferStatus: target [

	<generated>
	<apicall: GLenum 'glCheckFramebufferStatus' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> clear: mask [

	<generated>
	<apicall: void 'glClear' (GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> clearColor: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glClearColor' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> clearDepthf: d [

	<generated>
	<apicall: void 'glClearDepthf' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> clearStencil: s [

	<generated>
	<apicall: void 'glClearStencil' (GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> colorMask: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColorMask' (GLboolean GLboolean GLboolean GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> compileShader: shader [

	<generated>
	<apicall: void 'glCompileShader' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> compressedTexImage2D: target with: level with: internalformat with: width with: height with: border with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTexImage2D' (GLenum GLint GLenum GLsizei GLsizei GLint GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> compressedTexSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTexSubImage2D' (GLenum GLint GLint GLint GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> copyTexImage2D: target with: level with: internalformat with: x with: y with: width with: height with: border [

	<generated>
	<apicall: void 'glCopyTexImage2D' (GLenum GLint GLenum GLint GLint GLsizei GLsizei GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> copyTexSubImage2D: target with: level with: xoffset with: yoffset with: x with: y with: width with: height [

	<generated>
	<apicall: void 'glCopyTexSubImage2D' (GLenum GLint GLint GLint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> createProgram [

	<generated>
	<apicall: GLuint 'glCreateProgram' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> createShader: type [

	<generated>
	<apicall: GLuint 'glCreateShader' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> cullFace: mode [

	<generated>
	<apicall: void 'glCullFace' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> deleteBuffers: n with: buffers [

	<generated>
	<apicall: void 'glDeleteBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> deleteFramebuffers: n with: framebuffers [

	<generated>
	<apicall: void 'glDeleteFramebuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> deleteProgram: program [

	<generated>
	<apicall: void 'glDeleteProgram' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> deleteRenderbuffers: n with: renderbuffers [

	<generated>
	<apicall: void 'glDeleteRenderbuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> deleteShader: shader [

	<generated>
	<apicall: void 'glDeleteShader' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> deleteTextures: n with: textures [

	<generated>
	<apicall: void 'glDeleteTextures' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> depthFunc: func [

	<generated>
	<apicall: void 'glDepthFunc' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> depthMask: flag [

	<generated>
	<apicall: void 'glDepthMask' (GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> depthRangef: n with: f [

	<generated>
	<apicall: void 'glDepthRangef' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> detachShader: program with: shader [

	<generated>
	<apicall: void 'glDetachShader' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> disable: cap [

	<generated>
	<apicall: void 'glDisable' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> disableVertexAttribArray: index [

	<generated>
	<apicall: void 'glDisableVertexAttribArray' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> drawArrays: mode with: first with: count [

	<generated>
	<apicall: void 'glDrawArrays' (GLenum GLint GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> drawElements: mode with: count with: type with: indices [

	<generated>
	<apicall: void 'glDrawElements' (GLenum GLsizei GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> enable: cap [

	<generated>
	<apicall: void 'glEnable' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> enableVertexAttribArray: index [

	<generated>
	<apicall: void 'glEnableVertexAttribArray' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> finish [

	<generated>
	<apicall: void 'glFinish' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> flush [

	<generated>
	<apicall: void 'glFlush' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> framebufferRenderbuffer: target with: attachment with: renderbuffertarget with: renderbuffer [

	<generated>
	<apicall: void 'glFramebufferRenderbuffer' (GLenum GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> framebufferTexture2D: target with: attachment with: textarget with: texture with: level [

	<generated>
	<apicall: void 'glFramebufferTexture2D' (GLenum GLenum GLenum GLuint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> frontFace: mode [

	<generated>
	<apicall: void 'glFrontFace' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> genBuffers: n with: buffers [

	<generated>
	<apicall: void 'glGenBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> genFramebuffers: n with: framebuffers [

	<generated>
	<apicall: void 'glGenFramebuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> genRenderbuffers: n with: renderbuffers [

	<generated>
	<apicall: void 'glGenRenderbuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> genTextures: n with: textures [

	<generated>
	<apicall: void 'glGenTextures' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> generateMipmap: target [

	<generated>
	<apicall: void 'glGenerateMipmap' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getActiveAttrib: program with: index with: bufSize with: length with: size with: type with: name [

	<generated>
	<apicall: void 'glGetActiveAttrib' (GLuint GLuint GLsizei GLsizei* GLint* GLenum* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getActiveUniform: program with: index with: bufSize with: length with: size with: type with: name [

	<generated>
	<apicall: void 'glGetActiveUniform' (GLuint GLuint GLsizei GLsizei* GLint* GLenum* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getAttachedShaders: program with: maxCount with: count with: shaders [

	<generated>
	<apicall: void 'glGetAttachedShaders' (GLuint GLsizei GLsizei* GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getAttribLocation: program with: name [

	<generated>
	<apicall: GLint 'glGetAttribLocation' (GLuint GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getBooleanv: pname with: data [

	<generated>
	<apicall: void 'glGetBooleanv' (GLenum GLboolean*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getBufferParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetBufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getError [

	<generated>
	<apicall: GLenum 'glGetError' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getFloatv: pname with: data [

	<generated>
	<apicall: void 'glGetFloatv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getFramebufferAttachmentParameteriv: target with: attachment with: pname with: params [

	<generated>
	<apicall: void 'glGetFramebufferAttachmentParameteriv' (GLenum GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getIntegerv: pname with: data [

	<generated>
	<apicall: void 'glGetIntegerv' (GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getProgramInfoLog: program with: bufSize with: length with: infoLog [

	<generated>
	<apicall: void 'glGetProgramInfoLog' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getProgramiv: program with: pname with: params [

	<generated>
	<apicall: void 'glGetProgramiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getRenderbufferParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetRenderbufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getShaderInfoLog: shader with: bufSize with: length with: infoLog [

	<generated>
	<apicall: void 'glGetShaderInfoLog' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getShaderPrecisionFormat: shadertype with: precisiontype with: range with: precision [

	<generated>
	<apicall: void 'glGetShaderPrecisionFormat' (GLenum GLenum GLint* GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getShaderSource: shader with: bufSize with: length with: source [

	<generated>
	<apicall: void 'glGetShaderSource' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getShaderiv: shader with: pname with: params [

	<generated>
	<apicall: void 'glGetShaderiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getString: name [

	<generated>
	<apicall: GLubyte* 'glGetString' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getTexParameterfv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getTexParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getUniformLocation: program with: name [

	<generated>
	<apicall: GLint 'glGetUniformLocation' (GLuint GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getUniformfv: program with: location with: params [

	<generated>
	<apicall: void 'glGetUniformfv' (GLuint GLint GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getUniformiv: program with: location with: params [

	<generated>
	<apicall: void 'glGetUniformiv' (GLuint GLint GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getVertexAttribPointerv: index with: pname with: pointer [

	<generated>
	<apicall: void 'glGetVertexAttribPointerv' (GLuint GLenum void**)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getVertexAttribfv: index with: pname with: params [

	<generated>
	<apicall: void 'glGetVertexAttribfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> getVertexAttribiv: index with: pname with: params [

	<generated>
	<apicall: void 'glGetVertexAttribiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> hint: target with: mode [

	<generated>
	<apicall: void 'glHint' (GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> isBuffer: buffer [

	<generated>
	<apicall: GLboolean 'glIsBuffer' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> isEnabled: cap [

	<generated>
	<apicall: GLboolean 'glIsEnabled' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> isFramebuffer: framebuffer [

	<generated>
	<apicall: GLboolean 'glIsFramebuffer' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> isProgram: program [

	<generated>
	<apicall: GLboolean 'glIsProgram' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> isRenderbuffer: renderbuffer [

	<generated>
	<apicall: GLboolean 'glIsRenderbuffer' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> isShader: shader [

	<generated>
	<apicall: GLboolean 'glIsShader' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> isTexture: texture [

	<generated>
	<apicall: GLboolean 'glIsTexture' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> lineWidth: width [

	<generated>
	<apicall: void 'glLineWidth' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> linkProgram: program [

	<generated>
	<apicall: void 'glLinkProgram' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> pixelStorei: pname with: param [

	<generated>
	<apicall: void 'glPixelStorei' (GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> polygonOffset: factor with: units [

	<generated>
	<apicall: void 'glPolygonOffset' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> readPixels: x with: y with: width with: height with: format with: type with: pixels [

	<generated>
	<apicall: void 'glReadPixels' (GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> releaseShaderCompiler [

	<generated>
	<apicall: void 'glReleaseShaderCompiler' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> renderbufferStorage: target with: internalformat with: width with: height [

	<generated>
	<apicall: void 'glRenderbufferStorage' (GLenum GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> sampleCoverage: value with: invert [

	<generated>
	<apicall: void 'glSampleCoverage' (GLfloat GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> scissor: x with: y with: width with: height [

	<generated>
	<apicall: void 'glScissor' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> shaderBinary: count with: shaders with: binaryFormat with: binary with: length [

	<generated>
	<apicall: void 'glShaderBinary' (GLsizei GLuint* GLenum void* GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> shaderSource: shader with: count with: string with: length [

	<generated>
	<apicall: void 'glShaderSource' (GLuint GLsizei GLchar** GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> stencilFunc: func with: ref with: mask [

	<generated>
	<apicall: void 'glStencilFunc' (GLenum GLint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> stencilFuncSeparate: face with: func with: ref with: mask [

	<generated>
	<apicall: void 'glStencilFuncSeparate' (GLenum GLenum GLint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> stencilMask: mask [

	<generated>
	<apicall: void 'glStencilMask' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> stencilMaskSeparate: face with: mask [

	<generated>
	<apicall: void 'glStencilMaskSeparate' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> stencilOp: fail with: zfail with: zpass [

	<generated>
	<apicall: void 'glStencilOp' (GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> stencilOpSeparate: face with: sfail with: dpfail with: dppass [

	<generated>
	<apicall: void 'glStencilOpSeparate' (GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> texImage2D: target with: level with: internalformat with: width with: height with: border with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexImage2D' (GLenum GLint GLint GLsizei GLsizei GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> texParameterf: target with: pname with: param [

	<generated>
	<apicall: void 'glTexParameterf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> texParameterfv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> texParameteri: target with: pname with: param [

	<generated>
	<apicall: void 'glTexParameteri' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> texParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> texSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexSubImage2D' (GLenum GLint GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform1f: location with: v0 [

	<generated>
	<apicall: void 'glUniform1f' (GLint GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform1fv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform1fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform1i: location with: v0 [

	<generated>
	<apicall: void 'glUniform1i' (GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform1iv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform1iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform2f: location with: v0 with: v1 [

	<generated>
	<apicall: void 'glUniform2f' (GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform2fv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform2fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform2i: location with: v0 with: v1 [

	<generated>
	<apicall: void 'glUniform2i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform2iv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform2iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform3f: location with: v0 with: v1 with: v2 [

	<generated>
	<apicall: void 'glUniform3f' (GLint GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform3fv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform3fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform3i: location with: v0 with: v1 with: v2 [

	<generated>
	<apicall: void 'glUniform3i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform3iv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform3iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform4f: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	<apicall: void 'glUniform4f' (GLint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform4fv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform4fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform4i: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	<apicall: void 'glUniform4i' (GLint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniform4iv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform4iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniformMatrix2fv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix2fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniformMatrix3fv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix3fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> uniformMatrix4fv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix4fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> useProgram: program [

	<generated>
	<apicall: void 'glUseProgram' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> validateProgram: program [

	<generated>
	<apicall: void 'glValidateProgram' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> vertexAttrib1f: index with: x [

	<generated>
	<apicall: void 'glVertexAttrib1f' (GLuint GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> vertexAttrib1fv: index with: v [

	<generated>
	<apicall: void 'glVertexAttrib1fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> vertexAttrib2f: index with: x with: y [

	<generated>
	<apicall: void 'glVertexAttrib2f' (GLuint GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> vertexAttrib2fv: index with: v [

	<generated>
	<apicall: void 'glVertexAttrib2fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> vertexAttrib3f: index with: x with: y with: z [

	<generated>
	<apicall: void 'glVertexAttrib3f' (GLuint GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> vertexAttrib3fv: index with: v [

	<generated>
	<apicall: void 'glVertexAttrib3fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> vertexAttrib4f: index with: x with: y with: z with: w [

	<generated>
	<apicall: void 'glVertexAttrib4f' (GLuint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> vertexAttrib4fv: index with: v [

	<generated>
	<apicall: void 'glVertexAttrib4fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> vertexAttribPointer: index with: size with: type with: normalized with: stride with: pointer [

	<generated>
	<apicall: void 'glVertexAttribPointer' (GLuint GLint GLenum GLboolean GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GLES20 >> viewport: x with: y with: width with: height [

	<generated>
	<apicall: void 'glViewport' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]
