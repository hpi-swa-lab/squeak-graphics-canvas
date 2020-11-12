Class {
	#name : #'GLSC2_0',
	#superclass : #GLLibrary,
	#category : #'OpenGL-API-GLSC2'
}

{ #category : #accessing }
GLSC2_0 class >> api [

	^ #glsc2
]

{ #category : #accessing }
GLSC2_0 class >> defaultProfile [

	^ #''
]

{ #category : #accessing }
GLSC2_0 class >> majorVersion [

	^ 2
]

{ #category : #accessing }
GLSC2_0 class >> minorVersion [

	^ 0
]

{ #category : #accessing }
GLSC2_0 class >> versionNumber [

	^ 20
]

{ #category : #'constants - required' }
GLSC2_0 >> ACTIVE_TEXTURE [

	<generated>
	^ GL_ACTIVE_TEXTURE
]

{ #category : #'constants - required' }
GLSC2_0 >> ALIASED_LINE_WIDTH_RANGE [

	<generated>
	^ GL_ALIASED_LINE_WIDTH_RANGE
]

{ #category : #'constants - required' }
GLSC2_0 >> ALIASED_POINT_SIZE_RANGE [

	<generated>
	^ GL_ALIASED_POINT_SIZE_RANGE
]

{ #category : #'constants - required' }
GLSC2_0 >> ALPHA_BITS [

	<generated>
	^ GL_ALPHA_BITS
]

{ #category : #'constants - required' }
GLSC2_0 >> ALWAYS [

	<generated>
	^ GL_ALWAYS
]

{ #category : #'constants - required' }
GLSC2_0 >> ARRAY_BUFFER [

	<generated>
	^ GL_ARRAY_BUFFER
]

{ #category : #'constants - required' }
GLSC2_0 >> ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - required' }
GLSC2_0 >> BACK [

	<generated>
	^ GL_BACK
]

{ #category : #'constants - required' }
GLSC2_0 >> BLEND [

	<generated>
	^ GL_BLEND
]

{ #category : #'constants - required' }
GLSC2_0 >> BLEND_COLOR [

	<generated>
	^ GL_BLEND_COLOR
]

{ #category : #'constants - required' }
GLSC2_0 >> BLEND_DST_ALPHA [

	<generated>
	^ GL_BLEND_DST_ALPHA
]

{ #category : #'constants - required' }
GLSC2_0 >> BLEND_DST_RGB [

	<generated>
	^ GL_BLEND_DST_RGB
]

{ #category : #'constants - required' }
GLSC2_0 >> BLEND_EQUATION [

	<generated>
	^ GL_BLEND_EQUATION
]

{ #category : #'constants - required' }
GLSC2_0 >> BLEND_EQUATION_ALPHA [

	<generated>
	^ GL_BLEND_EQUATION_ALPHA
]

{ #category : #'constants - required' }
GLSC2_0 >> BLEND_EQUATION_RGB [

	<generated>
	^ GL_BLEND_EQUATION_RGB
]

{ #category : #'constants - required' }
GLSC2_0 >> BLEND_SRC_ALPHA [

	<generated>
	^ GL_BLEND_SRC_ALPHA
]

{ #category : #'constants - required' }
GLSC2_0 >> BLEND_SRC_RGB [

	<generated>
	^ GL_BLEND_SRC_RGB
]

{ #category : #'constants - required' }
GLSC2_0 >> BLUE_BITS [

	<generated>
	^ GL_BLUE_BITS
]

{ #category : #'constants - required' }
GLSC2_0 >> BUFFER_SIZE [

	<generated>
	^ GL_BUFFER_SIZE
]

{ #category : #'constants - required' }
GLSC2_0 >> BUFFER_USAGE [

	<generated>
	^ GL_BUFFER_USAGE
]

{ #category : #'constants - required' }
GLSC2_0 >> BYTE [

	<generated>
	^ GL_BYTE
]

{ #category : #'constants - required' }
GLSC2_0 >> CCW [

	<generated>
	^ GL_CCW
]

{ #category : #'constants - required' }
GLSC2_0 >> CLAMP_TO_EDGE [

	<generated>
	^ GL_CLAMP_TO_EDGE
]

{ #category : #'constants - required' }
GLSC2_0 >> COLOR_ATTACHMENT0 [

	<generated>
	^ GL_COLOR_ATTACHMENT0
]

{ #category : #'constants - required' }
GLSC2_0 >> COLOR_BUFFER_BIT [

	<generated>
	^ GL_COLOR_BUFFER_BIT
]

{ #category : #'constants - required' }
GLSC2_0 >> COLOR_CLEAR_VALUE [

	<generated>
	^ GL_COLOR_CLEAR_VALUE
]

{ #category : #'constants - required' }
GLSC2_0 >> COLOR_WRITEMASK [

	<generated>
	^ GL_COLOR_WRITEMASK
]

{ #category : #'constants - required' }
GLSC2_0 >> COMPRESSED_TEXTURE_FORMATS [

	<generated>
	^ GL_COMPRESSED_TEXTURE_FORMATS
]

{ #category : #'constants - required' }
GLSC2_0 >> CONSTANT_ALPHA [

	<generated>
	^ GL_CONSTANT_ALPHA
]

{ #category : #'constants - required' }
GLSC2_0 >> CONSTANT_COLOR [

	<generated>
	^ GL_CONSTANT_COLOR
]

{ #category : #'constants - required' }
GLSC2_0 >> CONTEXT_LOST [

	<generated>
	^ GL_CONTEXT_LOST
]

{ #category : #'constants - required' }
GLSC2_0 >> CONTEXT_ROBUST_ACCESS [

	<generated>
	^ GL_CONTEXT_ROBUST_ACCESS
]

{ #category : #'constants - required' }
GLSC2_0 >> CULL_FACE [

	<generated>
	^ GL_CULL_FACE
]

{ #category : #'constants - required' }
GLSC2_0 >> CULL_FACE_MODE [

	<generated>
	^ GL_CULL_FACE_MODE
]

{ #category : #'constants - required' }
GLSC2_0 >> CURRENT_PROGRAM [

	<generated>
	^ GL_CURRENT_PROGRAM
]

{ #category : #'constants - required' }
GLSC2_0 >> CURRENT_VERTEX_ATTRIB [

	<generated>
	^ GL_CURRENT_VERTEX_ATTRIB
]

{ #category : #'constants - required' }
GLSC2_0 >> CW [

	<generated>
	^ GL_CW
]

{ #category : #'constants - required' }
GLSC2_0 >> DECR [

	<generated>
	^ GL_DECR
]

{ #category : #'constants - required' }
GLSC2_0 >> DECR_WRAP [

	<generated>
	^ GL_DECR_WRAP
]

{ #category : #'constants - required' }
GLSC2_0 >> DEPTH_ATTACHMENT [

	<generated>
	^ GL_DEPTH_ATTACHMENT
]

{ #category : #'constants - required' }
GLSC2_0 >> DEPTH_BITS [

	<generated>
	^ GL_DEPTH_BITS
]

{ #category : #'constants - required' }
GLSC2_0 >> DEPTH_BUFFER_BIT [

	<generated>
	^ GL_DEPTH_BUFFER_BIT
]

{ #category : #'constants - required' }
GLSC2_0 >> DEPTH_CLEAR_VALUE [

	<generated>
	^ GL_DEPTH_CLEAR_VALUE
]

{ #category : #'constants - required' }
GLSC2_0 >> DEPTH_COMPONENT16 [

	<generated>
	^ GL_DEPTH_COMPONENT16
]

{ #category : #'constants - required' }
GLSC2_0 >> DEPTH_FUNC [

	<generated>
	^ GL_DEPTH_FUNC
]

{ #category : #'constants - required' }
GLSC2_0 >> DEPTH_RANGE [

	<generated>
	^ GL_DEPTH_RANGE
]

{ #category : #'constants - required' }
GLSC2_0 >> DEPTH_TEST [

	<generated>
	^ GL_DEPTH_TEST
]

{ #category : #'constants - required' }
GLSC2_0 >> DEPTH_WRITEMASK [

	<generated>
	^ GL_DEPTH_WRITEMASK
]

{ #category : #'constants - required' }
GLSC2_0 >> DITHER [

	<generated>
	^ GL_DITHER
]

{ #category : #'constants - required' }
GLSC2_0 >> DONT_CARE [

	<generated>
	^ GL_DONT_CARE
]

{ #category : #'constants - required' }
GLSC2_0 >> DST_ALPHA [

	<generated>
	^ GL_DST_ALPHA
]

{ #category : #'constants - required' }
GLSC2_0 >> DST_COLOR [

	<generated>
	^ GL_DST_COLOR
]

{ #category : #'constants - required' }
GLSC2_0 >> DYNAMIC_DRAW [

	<generated>
	^ GL_DYNAMIC_DRAW
]

{ #category : #'constants - required' }
GLSC2_0 >> ELEMENT_ARRAY_BUFFER [

	<generated>
	^ GL_ELEMENT_ARRAY_BUFFER
]

{ #category : #'constants - required' }
GLSC2_0 >> ELEMENT_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_ELEMENT_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - required' }
GLSC2_0 >> EQUAL [

	<generated>
	^ GL_EQUAL
]

{ #category : #'constants - required' }
GLSC2_0 >> EXTENSIONS [

	<generated>
	^ GL_EXTENSIONS
]

{ #category : #'constants - required' }
GLSC2_0 >> FALSE [

	<generated>
	^ GL_FALSE
]

{ #category : #'constants - required' }
GLSC2_0 >> FASTEST [

	<generated>
	^ GL_FASTEST
]

{ #category : #'constants - required' }
GLSC2_0 >> FLOAT [

	<generated>
	^ GL_FLOAT
]

{ #category : #'constants - required' }
GLSC2_0 >> FRAMEBUFFER [

	<generated>
	^ GL_FRAMEBUFFER
]

{ #category : #'constants - required' }
GLSC2_0 >> FRAMEBUFFER_ATTACHMENT_OBJECT_NAME [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
]

{ #category : #'constants - required' }
GLSC2_0 >> FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
]

{ #category : #'constants - required' }
GLSC2_0 >> FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
]

{ #category : #'constants - required' }
GLSC2_0 >> FRAMEBUFFER_BINDING [

	<generated>
	^ GL_FRAMEBUFFER_BINDING
]

{ #category : #'constants - required' }
GLSC2_0 >> FRAMEBUFFER_COMPLETE [

	<generated>
	^ GL_FRAMEBUFFER_COMPLETE
]

{ #category : #'constants - required' }
GLSC2_0 >> FRAMEBUFFER_INCOMPLETE_ATTACHMENT [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
]

{ #category : #'constants - required' }
GLSC2_0 >> FRAMEBUFFER_INCOMPLETE_DIMENSIONS [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS
]

{ #category : #'constants - required' }
GLSC2_0 >> FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
]

{ #category : #'constants - required' }
GLSC2_0 >> FRAMEBUFFER_UNDEFINED [

	<generated>
	^ GL_FRAMEBUFFER_UNDEFINED
]

{ #category : #'constants - required' }
GLSC2_0 >> FRAMEBUFFER_UNSUPPORTED [

	<generated>
	^ GL_FRAMEBUFFER_UNSUPPORTED
]

{ #category : #'constants - required' }
GLSC2_0 >> FRONT [

	<generated>
	^ GL_FRONT
]

{ #category : #'constants - required' }
GLSC2_0 >> FRONT_AND_BACK [

	<generated>
	^ GL_FRONT_AND_BACK
]

{ #category : #'constants - required' }
GLSC2_0 >> FRONT_FACE [

	<generated>
	^ GL_FRONT_FACE
]

{ #category : #'constants - required' }
GLSC2_0 >> FUNC_ADD [

	<generated>
	^ GL_FUNC_ADD
]

{ #category : #'constants - required' }
GLSC2_0 >> FUNC_REVERSE_SUBTRACT [

	<generated>
	^ GL_FUNC_REVERSE_SUBTRACT
]

{ #category : #'constants - required' }
GLSC2_0 >> FUNC_SUBTRACT [

	<generated>
	^ GL_FUNC_SUBTRACT
]

{ #category : #'constants - required' }
GLSC2_0 >> GENERATE_MIPMAP_HINT [

	<generated>
	^ GL_GENERATE_MIPMAP_HINT
]

{ #category : #'constants - required' }
GLSC2_0 >> GEQUAL [

	<generated>
	^ GL_GEQUAL
]

{ #category : #'constants - required' }
GLSC2_0 >> GREATER [

	<generated>
	^ GL_GREATER
]

{ #category : #'constants - required' }
GLSC2_0 >> GREEN_BITS [

	<generated>
	^ GL_GREEN_BITS
]

{ #category : #'constants - required' }
GLSC2_0 >> GUILTY_CONTEXT_RESET [

	<generated>
	^ GL_GUILTY_CONTEXT_RESET
]

{ #category : #'constants - required' }
GLSC2_0 >> HIGH_FLOAT [

	<generated>
	^ GL_HIGH_FLOAT
]

{ #category : #'constants - required' }
GLSC2_0 >> HIGH_INT [

	<generated>
	^ GL_HIGH_INT
]

{ #category : #'constants - required' }
GLSC2_0 >> IMPLEMENTATION_COLOR_READ_FORMAT [

	<generated>
	^ GL_IMPLEMENTATION_COLOR_READ_FORMAT
]

{ #category : #'constants - required' }
GLSC2_0 >> IMPLEMENTATION_COLOR_READ_TYPE [

	<generated>
	^ GL_IMPLEMENTATION_COLOR_READ_TYPE
]

{ #category : #'constants - required' }
GLSC2_0 >> INCR [

	<generated>
	^ GL_INCR
]

{ #category : #'constants - required' }
GLSC2_0 >> INCR_WRAP [

	<generated>
	^ GL_INCR_WRAP
]

{ #category : #'constants - required' }
GLSC2_0 >> INNOCENT_CONTEXT_RESET [

	<generated>
	^ GL_INNOCENT_CONTEXT_RESET
]

{ #category : #'constants - required' }
GLSC2_0 >> INT [

	<generated>
	^ GL_INT
]

{ #category : #'constants - required' }
GLSC2_0 >> INVALID_ENUM [

	<generated>
	^ GL_INVALID_ENUM
]

{ #category : #'constants - required' }
GLSC2_0 >> INVALID_FRAMEBUFFER_OPERATION [

	<generated>
	^ GL_INVALID_FRAMEBUFFER_OPERATION
]

{ #category : #'constants - required' }
GLSC2_0 >> INVALID_OPERATION [

	<generated>
	^ GL_INVALID_OPERATION
]

{ #category : #'constants - required' }
GLSC2_0 >> INVALID_VALUE [

	<generated>
	^ GL_INVALID_VALUE
]

{ #category : #'constants - required' }
GLSC2_0 >> INVERT [

	<generated>
	^ GL_INVERT
]

{ #category : #'constants - required' }
GLSC2_0 >> KEEP [

	<generated>
	^ GL_KEEP
]

{ #category : #'constants - required' }
GLSC2_0 >> LEQUAL [

	<generated>
	^ GL_LEQUAL
]

{ #category : #'constants - required' }
GLSC2_0 >> LESS [

	<generated>
	^ GL_LESS
]

{ #category : #'constants - required' }
GLSC2_0 >> LINEAR [

	<generated>
	^ GL_LINEAR
]

{ #category : #'constants - required' }
GLSC2_0 >> LINEAR_MIPMAP_LINEAR [

	<generated>
	^ GL_LINEAR_MIPMAP_LINEAR
]

{ #category : #'constants - required' }
GLSC2_0 >> LINEAR_MIPMAP_NEAREST [

	<generated>
	^ GL_LINEAR_MIPMAP_NEAREST
]

{ #category : #'constants - required' }
GLSC2_0 >> LINES [

	<generated>
	^ GL_LINES
]

{ #category : #'constants - required' }
GLSC2_0 >> LINE_LOOP [

	<generated>
	^ GL_LINE_LOOP
]

{ #category : #'constants - required' }
GLSC2_0 >> LINE_STRIP [

	<generated>
	^ GL_LINE_STRIP
]

{ #category : #'constants - required' }
GLSC2_0 >> LINE_WIDTH [

	<generated>
	^ GL_LINE_WIDTH
]

{ #category : #'constants - required' }
GLSC2_0 >> LINK_STATUS [

	<generated>
	^ GL_LINK_STATUS
]

{ #category : #'constants - required' }
GLSC2_0 >> LOSE_CONTEXT_ON_RESET [

	<generated>
	^ GL_LOSE_CONTEXT_ON_RESET
]

{ #category : #'constants - required' }
GLSC2_0 >> LOW_FLOAT [

	<generated>
	^ GL_LOW_FLOAT
]

{ #category : #'constants - required' }
GLSC2_0 >> LOW_INT [

	<generated>
	^ GL_LOW_INT
]

{ #category : #'constants - required' }
GLSC2_0 >> MAX_COMBINED_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
]

{ #category : #'constants - required' }
GLSC2_0 >> MAX_FRAGMENT_UNIFORM_VECTORS [

	<generated>
	^ GL_MAX_FRAGMENT_UNIFORM_VECTORS
]

{ #category : #'constants - required' }
GLSC2_0 >> MAX_RENDERBUFFER_SIZE [

	<generated>
	^ GL_MAX_RENDERBUFFER_SIZE
]

{ #category : #'constants - required' }
GLSC2_0 >> MAX_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_TEXTURE_IMAGE_UNITS
]

{ #category : #'constants - required' }
GLSC2_0 >> MAX_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_TEXTURE_SIZE
]

{ #category : #'constants - required' }
GLSC2_0 >> MAX_VARYING_VECTORS [

	<generated>
	^ GL_MAX_VARYING_VECTORS
]

{ #category : #'constants - required' }
GLSC2_0 >> MAX_VERTEX_ATTRIBS [

	<generated>
	^ GL_MAX_VERTEX_ATTRIBS
]

{ #category : #'constants - required' }
GLSC2_0 >> MAX_VERTEX_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
]

{ #category : #'constants - required' }
GLSC2_0 >> MAX_VERTEX_UNIFORM_VECTORS [

	<generated>
	^ GL_MAX_VERTEX_UNIFORM_VECTORS
]

{ #category : #'constants - required' }
GLSC2_0 >> MAX_VIEWPORT_DIMS [

	<generated>
	^ GL_MAX_VIEWPORT_DIMS
]

{ #category : #'constants - required' }
GLSC2_0 >> MEDIUM_FLOAT [

	<generated>
	^ GL_MEDIUM_FLOAT
]

{ #category : #'constants - required' }
GLSC2_0 >> MEDIUM_INT [

	<generated>
	^ GL_MEDIUM_INT
]

{ #category : #'constants - required' }
GLSC2_0 >> MIRRORED_REPEAT [

	<generated>
	^ GL_MIRRORED_REPEAT
]

{ #category : #'constants - required' }
GLSC2_0 >> NEAREST [

	<generated>
	^ GL_NEAREST
]

{ #category : #'constants - required' }
GLSC2_0 >> NEAREST_MIPMAP_LINEAR [

	<generated>
	^ GL_NEAREST_MIPMAP_LINEAR
]

{ #category : #'constants - required' }
GLSC2_0 >> NEAREST_MIPMAP_NEAREST [

	<generated>
	^ GL_NEAREST_MIPMAP_NEAREST
]

{ #category : #'constants - required' }
GLSC2_0 >> NEVER [

	<generated>
	^ GL_NEVER
]

{ #category : #'constants - required' }
GLSC2_0 >> NICEST [

	<generated>
	^ GL_NICEST
]

{ #category : #'constants - required' }
GLSC2_0 >> NONE [

	<generated>
	^ GL_NONE
]

{ #category : #'constants - required' }
GLSC2_0 >> NOTEQUAL [

	<generated>
	^ GL_NOTEQUAL
]

{ #category : #'constants - required' }
GLSC2_0 >> NO_ERROR [

	<generated>
	^ GL_NO_ERROR
]

{ #category : #'constants - required' }
GLSC2_0 >> NUM_COMPRESSED_TEXTURE_FORMATS [

	<generated>
	^ GL_NUM_COMPRESSED_TEXTURE_FORMATS
]

{ #category : #'constants - required' }
GLSC2_0 >> NUM_PROGRAM_BINARY_FORMATS [

	<generated>
	^ GL_NUM_PROGRAM_BINARY_FORMATS
]

{ #category : #'constants - required' }
GLSC2_0 >> ONE [

	<generated>
	^ GL_ONE
]

{ #category : #'constants - required' }
GLSC2_0 >> ONE_MINUS_CONSTANT_ALPHA [

	<generated>
	^ GL_ONE_MINUS_CONSTANT_ALPHA
]

{ #category : #'constants - required' }
GLSC2_0 >> ONE_MINUS_CONSTANT_COLOR [

	<generated>
	^ GL_ONE_MINUS_CONSTANT_COLOR
]

{ #category : #'constants - required' }
GLSC2_0 >> ONE_MINUS_DST_ALPHA [

	<generated>
	^ GL_ONE_MINUS_DST_ALPHA
]

{ #category : #'constants - required' }
GLSC2_0 >> ONE_MINUS_DST_COLOR [

	<generated>
	^ GL_ONE_MINUS_DST_COLOR
]

{ #category : #'constants - required' }
GLSC2_0 >> ONE_MINUS_SRC_ALPHA [

	<generated>
	^ GL_ONE_MINUS_SRC_ALPHA
]

{ #category : #'constants - required' }
GLSC2_0 >> ONE_MINUS_SRC_COLOR [

	<generated>
	^ GL_ONE_MINUS_SRC_COLOR
]

{ #category : #'constants - required' }
GLSC2_0 >> OUT_OF_MEMORY [

	<generated>
	^ GL_OUT_OF_MEMORY
]

{ #category : #'constants - required' }
GLSC2_0 >> PACK_ALIGNMENT [

	<generated>
	^ GL_PACK_ALIGNMENT
]

{ #category : #'constants - required' }
GLSC2_0 >> POINTS [

	<generated>
	^ GL_POINTS
]

{ #category : #'constants - required' }
GLSC2_0 >> POLYGON_OFFSET_FACTOR [

	<generated>
	^ GL_POLYGON_OFFSET_FACTOR
]

{ #category : #'constants - required' }
GLSC2_0 >> POLYGON_OFFSET_FILL [

	<generated>
	^ GL_POLYGON_OFFSET_FILL
]

{ #category : #'constants - required' }
GLSC2_0 >> POLYGON_OFFSET_UNITS [

	<generated>
	^ GL_POLYGON_OFFSET_UNITS
]

{ #category : #'constants - required' }
GLSC2_0 >> PROGRAM_BINARY_FORMATS [

	<generated>
	^ GL_PROGRAM_BINARY_FORMATS
]

{ #category : #'constants - required' }
GLSC2_0 >> R8 [

	<generated>
	^ GL_R8
]

{ #category : #'constants - required' }
GLSC2_0 >> RED [

	<generated>
	^ GL_RED
]

{ #category : #'constants - required' }
GLSC2_0 >> RED_BITS [

	<generated>
	^ GL_RED_BITS
]

{ #category : #'constants - required' }
GLSC2_0 >> RENDERBUFFER [

	<generated>
	^ GL_RENDERBUFFER
]

{ #category : #'constants - required' }
GLSC2_0 >> RENDERBUFFER_ALPHA_SIZE [

	<generated>
	^ GL_RENDERBUFFER_ALPHA_SIZE
]

{ #category : #'constants - required' }
GLSC2_0 >> RENDERBUFFER_BINDING [

	<generated>
	^ GL_RENDERBUFFER_BINDING
]

{ #category : #'constants - required' }
GLSC2_0 >> RENDERBUFFER_BLUE_SIZE [

	<generated>
	^ GL_RENDERBUFFER_BLUE_SIZE
]

{ #category : #'constants - required' }
GLSC2_0 >> RENDERBUFFER_DEPTH_SIZE [

	<generated>
	^ GL_RENDERBUFFER_DEPTH_SIZE
]

{ #category : #'constants - required' }
GLSC2_0 >> RENDERBUFFER_GREEN_SIZE [

	<generated>
	^ GL_RENDERBUFFER_GREEN_SIZE
]

{ #category : #'constants - required' }
GLSC2_0 >> RENDERBUFFER_HEIGHT [

	<generated>
	^ GL_RENDERBUFFER_HEIGHT
]

{ #category : #'constants - required' }
GLSC2_0 >> RENDERBUFFER_INTERNAL_FORMAT [

	<generated>
	^ GL_RENDERBUFFER_INTERNAL_FORMAT
]

{ #category : #'constants - required' }
GLSC2_0 >> RENDERBUFFER_RED_SIZE [

	<generated>
	^ GL_RENDERBUFFER_RED_SIZE
]

{ #category : #'constants - required' }
GLSC2_0 >> RENDERBUFFER_STENCIL_SIZE [

	<generated>
	^ GL_RENDERBUFFER_STENCIL_SIZE
]

{ #category : #'constants - required' }
GLSC2_0 >> RENDERBUFFER_WIDTH [

	<generated>
	^ GL_RENDERBUFFER_WIDTH
]

{ #category : #'constants - required' }
GLSC2_0 >> RENDERER [

	<generated>
	^ GL_RENDERER
]

{ #category : #'constants - required' }
GLSC2_0 >> REPEAT [

	<generated>
	^ GL_REPEAT
]

{ #category : #'constants - required' }
GLSC2_0 >> REPLACE [

	<generated>
	^ GL_REPLACE
]

{ #category : #'constants - required' }
GLSC2_0 >> RESET_NOTIFICATION_STRATEGY [

	<generated>
	^ GL_RESET_NOTIFICATION_STRATEGY
]

{ #category : #'constants - required' }
GLSC2_0 >> RG [

	<generated>
	^ GL_RG
]

{ #category : #'constants - required' }
GLSC2_0 >> RG8 [

	<generated>
	^ GL_RG8
]

{ #category : #'constants - required' }
GLSC2_0 >> RGB [

	<generated>
	^ GL_RGB
]

{ #category : #'constants - required' }
GLSC2_0 >> RGB565 [

	<generated>
	^ GL_RGB565
]

{ #category : #'constants - required' }
GLSC2_0 >> RGB5_A1 [

	<generated>
	^ GL_RGB5_A1
]

{ #category : #'constants - required' }
GLSC2_0 >> RGB8 [

	<generated>
	^ GL_RGB8
]

{ #category : #'constants - required' }
GLSC2_0 >> RGBA [

	<generated>
	^ GL_RGBA
]

{ #category : #'constants - required' }
GLSC2_0 >> RGBA4 [

	<generated>
	^ GL_RGBA4
]

{ #category : #'constants - required' }
GLSC2_0 >> RGBA8 [

	<generated>
	^ GL_RGBA8
]

{ #category : #'constants - required' }
GLSC2_0 >> SAMPLER_2D [

	<generated>
	^ GL_SAMPLER_2D
]

{ #category : #'constants - required' }
GLSC2_0 >> SAMPLES [

	<generated>
	^ GL_SAMPLES
]

{ #category : #'constants - required' }
GLSC2_0 >> SAMPLE_ALPHA_TO_COVERAGE [

	<generated>
	^ GL_SAMPLE_ALPHA_TO_COVERAGE
]

{ #category : #'constants - required' }
GLSC2_0 >> SAMPLE_BUFFERS [

	<generated>
	^ GL_SAMPLE_BUFFERS
]

{ #category : #'constants - required' }
GLSC2_0 >> SAMPLE_COVERAGE [

	<generated>
	^ GL_SAMPLE_COVERAGE
]

{ #category : #'constants - required' }
GLSC2_0 >> SAMPLE_COVERAGE_INVERT [

	<generated>
	^ GL_SAMPLE_COVERAGE_INVERT
]

{ #category : #'constants - required' }
GLSC2_0 >> SAMPLE_COVERAGE_VALUE [

	<generated>
	^ GL_SAMPLE_COVERAGE_VALUE
]

{ #category : #'constants - required' }
GLSC2_0 >> SCISSOR_BOX [

	<generated>
	^ GL_SCISSOR_BOX
]

{ #category : #'constants - required' }
GLSC2_0 >> SCISSOR_TEST [

	<generated>
	^ GL_SCISSOR_TEST
]

{ #category : #'constants - required' }
GLSC2_0 >> SHADING_LANGUAGE_VERSION [

	<generated>
	^ GL_SHADING_LANGUAGE_VERSION
]

{ #category : #'constants - required' }
GLSC2_0 >> SHORT [

	<generated>
	^ GL_SHORT
]

{ #category : #'constants - required' }
GLSC2_0 >> SRC_ALPHA [

	<generated>
	^ GL_SRC_ALPHA
]

{ #category : #'constants - required' }
GLSC2_0 >> SRC_ALPHA_SATURATE [

	<generated>
	^ GL_SRC_ALPHA_SATURATE
]

{ #category : #'constants - required' }
GLSC2_0 >> SRC_COLOR [

	<generated>
	^ GL_SRC_COLOR
]

{ #category : #'constants - required' }
GLSC2_0 >> STATIC_DRAW [

	<generated>
	^ GL_STATIC_DRAW
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_ATTACHMENT [

	<generated>
	^ GL_STENCIL_ATTACHMENT
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_BACK_FAIL [

	<generated>
	^ GL_STENCIL_BACK_FAIL
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_BACK_FUNC [

	<generated>
	^ GL_STENCIL_BACK_FUNC
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_BACK_PASS_DEPTH_FAIL [

	<generated>
	^ GL_STENCIL_BACK_PASS_DEPTH_FAIL
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_BACK_PASS_DEPTH_PASS [

	<generated>
	^ GL_STENCIL_BACK_PASS_DEPTH_PASS
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_BACK_REF [

	<generated>
	^ GL_STENCIL_BACK_REF
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_BACK_VALUE_MASK [

	<generated>
	^ GL_STENCIL_BACK_VALUE_MASK
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_BACK_WRITEMASK [

	<generated>
	^ GL_STENCIL_BACK_WRITEMASK
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_BITS [

	<generated>
	^ GL_STENCIL_BITS
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_BUFFER_BIT [

	<generated>
	^ GL_STENCIL_BUFFER_BIT
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_CLEAR_VALUE [

	<generated>
	^ GL_STENCIL_CLEAR_VALUE
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_FAIL [

	<generated>
	^ GL_STENCIL_FAIL
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_FUNC [

	<generated>
	^ GL_STENCIL_FUNC
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_INDEX8 [

	<generated>
	^ GL_STENCIL_INDEX8
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_PASS_DEPTH_FAIL [

	<generated>
	^ GL_STENCIL_PASS_DEPTH_FAIL
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_PASS_DEPTH_PASS [

	<generated>
	^ GL_STENCIL_PASS_DEPTH_PASS
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_REF [

	<generated>
	^ GL_STENCIL_REF
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_TEST [

	<generated>
	^ GL_STENCIL_TEST
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_VALUE_MASK [

	<generated>
	^ GL_STENCIL_VALUE_MASK
]

{ #category : #'constants - required' }
GLSC2_0 >> STENCIL_WRITEMASK [

	<generated>
	^ GL_STENCIL_WRITEMASK
]

{ #category : #'constants - required' }
GLSC2_0 >> STREAM_DRAW [

	<generated>
	^ GL_STREAM_DRAW
]

{ #category : #'constants - required' }
GLSC2_0 >> SUBPIXEL_BITS [

	<generated>
	^ GL_SUBPIXEL_BITS
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE [

	<generated>
	^ GL_TEXTURE
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE0 [

	<generated>
	^ GL_TEXTURE0
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE1 [

	<generated>
	^ GL_TEXTURE1
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE10 [

	<generated>
	^ GL_TEXTURE10
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE11 [

	<generated>
	^ GL_TEXTURE11
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE12 [

	<generated>
	^ GL_TEXTURE12
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE13 [

	<generated>
	^ GL_TEXTURE13
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE14 [

	<generated>
	^ GL_TEXTURE14
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE15 [

	<generated>
	^ GL_TEXTURE15
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE16 [

	<generated>
	^ GL_TEXTURE16
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE17 [

	<generated>
	^ GL_TEXTURE17
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE18 [

	<generated>
	^ GL_TEXTURE18
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE19 [

	<generated>
	^ GL_TEXTURE19
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE2 [

	<generated>
	^ GL_TEXTURE2
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE20 [

	<generated>
	^ GL_TEXTURE20
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE21 [

	<generated>
	^ GL_TEXTURE21
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE22 [

	<generated>
	^ GL_TEXTURE22
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE23 [

	<generated>
	^ GL_TEXTURE23
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE24 [

	<generated>
	^ GL_TEXTURE24
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE25 [

	<generated>
	^ GL_TEXTURE25
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE26 [

	<generated>
	^ GL_TEXTURE26
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE27 [

	<generated>
	^ GL_TEXTURE27
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE28 [

	<generated>
	^ GL_TEXTURE28
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE29 [

	<generated>
	^ GL_TEXTURE29
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE3 [

	<generated>
	^ GL_TEXTURE3
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE30 [

	<generated>
	^ GL_TEXTURE30
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE31 [

	<generated>
	^ GL_TEXTURE31
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE4 [

	<generated>
	^ GL_TEXTURE4
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE5 [

	<generated>
	^ GL_TEXTURE5
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE6 [

	<generated>
	^ GL_TEXTURE6
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE7 [

	<generated>
	^ GL_TEXTURE7
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE8 [

	<generated>
	^ GL_TEXTURE8
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE9 [

	<generated>
	^ GL_TEXTURE9
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE_2D [

	<generated>
	^ GL_TEXTURE_2D
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE_BINDING_2D [

	<generated>
	^ GL_TEXTURE_BINDING_2D
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE_IMMUTABLE_FORMAT [

	<generated>
	^ GL_TEXTURE_IMMUTABLE_FORMAT
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE_MAG_FILTER [

	<generated>
	^ GL_TEXTURE_MAG_FILTER
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE_MIN_FILTER [

	<generated>
	^ GL_TEXTURE_MIN_FILTER
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE_WRAP_S [

	<generated>
	^ GL_TEXTURE_WRAP_S
]

{ #category : #'constants - required' }
GLSC2_0 >> TEXTURE_WRAP_T [

	<generated>
	^ GL_TEXTURE_WRAP_T
]

{ #category : #'constants - required' }
GLSC2_0 >> TRIANGLES [

	<generated>
	^ GL_TRIANGLES
]

{ #category : #'constants - required' }
GLSC2_0 >> TRIANGLE_FAN [

	<generated>
	^ GL_TRIANGLE_FAN
]

{ #category : #'constants - required' }
GLSC2_0 >> TRIANGLE_STRIP [

	<generated>
	^ GL_TRIANGLE_STRIP
]

{ #category : #'constants - required' }
GLSC2_0 >> TRUE [

	<generated>
	^ GL_TRUE
]

{ #category : #'constants - required' }
GLSC2_0 >> UNKNOWN_CONTEXT_RESET [

	<generated>
	^ GL_UNKNOWN_CONTEXT_RESET
]

{ #category : #'constants - required' }
GLSC2_0 >> UNPACK_ALIGNMENT [

	<generated>
	^ GL_UNPACK_ALIGNMENT
]

{ #category : #'constants - required' }
GLSC2_0 >> UNSIGNED_BYTE [

	<generated>
	^ GL_UNSIGNED_BYTE
]

{ #category : #'constants - required' }
GLSC2_0 >> UNSIGNED_INT [

	<generated>
	^ GL_UNSIGNED_INT
]

{ #category : #'constants - required' }
GLSC2_0 >> UNSIGNED_SHORT [

	<generated>
	^ GL_UNSIGNED_SHORT
]

{ #category : #'constants - required' }
GLSC2_0 >> UNSIGNED_SHORT_4_4_4_4 [

	<generated>
	^ GL_UNSIGNED_SHORT_4_4_4_4
]

{ #category : #'constants - required' }
GLSC2_0 >> UNSIGNED_SHORT_5_5_5_1 [

	<generated>
	^ GL_UNSIGNED_SHORT_5_5_5_1
]

{ #category : #'constants - required' }
GLSC2_0 >> UNSIGNED_SHORT_5_6_5 [

	<generated>
	^ GL_UNSIGNED_SHORT_5_6_5
]

{ #category : #'constants - required' }
GLSC2_0 >> VENDOR [

	<generated>
	^ GL_VENDOR
]

{ #category : #'constants - required' }
GLSC2_0 >> VERSION [

	<generated>
	^ GL_VERSION
]

{ #category : #'constants - required' }
GLSC2_0 >> VERTEX_ATTRIB_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - required' }
GLSC2_0 >> VERTEX_ATTRIB_ARRAY_ENABLED [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_ENABLED
]

{ #category : #'constants - required' }
GLSC2_0 >> VERTEX_ATTRIB_ARRAY_NORMALIZED [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
]

{ #category : #'constants - required' }
GLSC2_0 >> VERTEX_ATTRIB_ARRAY_POINTER [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_POINTER
]

{ #category : #'constants - required' }
GLSC2_0 >> VERTEX_ATTRIB_ARRAY_SIZE [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_SIZE
]

{ #category : #'constants - required' }
GLSC2_0 >> VERTEX_ATTRIB_ARRAY_STRIDE [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_STRIDE
]

{ #category : #'constants - required' }
GLSC2_0 >> VERTEX_ATTRIB_ARRAY_TYPE [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_TYPE
]

{ #category : #'constants - required' }
GLSC2_0 >> VIEWPORT [

	<generated>
	^ GL_VIEWPORT
]

{ #category : #'constants - required' }
GLSC2_0 >> ZERO [

	<generated>
	^ GL_ZERO
]

{ #category : #'api - required' }
GLSC2_0 >> activeTexture: texture [

	<generated>
	<apicall: void 'glActiveTexture' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> bindBuffer: target with: buffer [

	<generated>
	<apicall: void 'glBindBuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> bindFramebuffer: target with: framebuffer [

	<generated>
	<apicall: void 'glBindFramebuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> bindRenderbuffer: target with: renderbuffer [

	<generated>
	<apicall: void 'glBindRenderbuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> bindTexture: target with: texture [

	<generated>
	<apicall: void 'glBindTexture' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> blendColor: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glBlendColor' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> blendEquation: mode [

	<generated>
	<apicall: void 'glBlendEquation' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> blendEquationSeparate: modeRGB with: modeAlpha [

	<generated>
	<apicall: void 'glBlendEquationSeparate' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> blendFunc: sfactor with: dfactor [

	<generated>
	<apicall: void 'glBlendFunc' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> blendFuncSeparate: sfactorRGB with: dfactorRGB with: sfactorAlpha with: dfactorAlpha [

	<generated>
	<apicall: void 'glBlendFuncSeparate' (GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> bufferData: target with: size with: data with: usage [

	<generated>
	<apicall: void 'glBufferData' (GLenum GLsizeiptr void* GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> bufferSubData: target with: offset with: size with: data [

	<generated>
	<apicall: void 'glBufferSubData' (GLenum GLintptr GLsizeiptr void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> checkFramebufferStatus: target [

	<generated>
	<apicall: GLenum 'glCheckFramebufferStatus' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> clear: mask [

	<generated>
	<apicall: void 'glClear' (GLbitfield)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> clearColor: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glClearColor' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> clearDepthf: d [

	<generated>
	<apicall: void 'glClearDepthf' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> clearStencil: s [

	<generated>
	<apicall: void 'glClearStencil' (GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> colorMask: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColorMask' (GLboolean GLboolean GLboolean GLboolean)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> compressedTexSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTexSubImage2D' (GLenum GLint GLint GLint GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> createProgram [

	<generated>
	<apicall: GLuint 'glCreateProgram' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> cullFace: mode [

	<generated>
	<apicall: void 'glCullFace' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> depthFunc: func [

	<generated>
	<apicall: void 'glDepthFunc' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> depthMask: flag [

	<generated>
	<apicall: void 'glDepthMask' (GLboolean)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> depthRangef: n with: f [

	<generated>
	<apicall: void 'glDepthRangef' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> disable: cap [

	<generated>
	<apicall: void 'glDisable' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> disableVertexAttribArray: index [

	<generated>
	<apicall: void 'glDisableVertexAttribArray' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> drawArrays: mode with: first with: count [

	<generated>
	<apicall: void 'glDrawArrays' (GLenum GLint GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> drawRangeElements: mode with: start with: end with: count with: type with: indices [

	<generated>
	<apicall: void 'glDrawRangeElements' (GLenum GLuint GLuint GLsizei GLenum void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> enable: cap [

	<generated>
	<apicall: void 'glEnable' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> enableVertexAttribArray: index [

	<generated>
	<apicall: void 'glEnableVertexAttribArray' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> finish [

	<generated>
	<apicall: void 'glFinish' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> flush [

	<generated>
	<apicall: void 'glFlush' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> framebufferRenderbuffer: target with: attachment with: renderbuffertarget with: renderbuffer [

	<generated>
	<apicall: void 'glFramebufferRenderbuffer' (GLenum GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> framebufferTexture2D: target with: attachment with: textarget with: texture with: level [

	<generated>
	<apicall: void 'glFramebufferTexture2D' (GLenum GLenum GLenum GLuint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> frontFace: mode [

	<generated>
	<apicall: void 'glFrontFace' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> genBuffers: n with: buffers [

	<generated>
	<apicall: void 'glGenBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> genFramebuffers: n with: framebuffers [

	<generated>
	<apicall: void 'glGenFramebuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> genRenderbuffers: n with: renderbuffers [

	<generated>
	<apicall: void 'glGenRenderbuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> genTextures: n with: textures [

	<generated>
	<apicall: void 'glGenTextures' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> generateMipmap: target [

	<generated>
	<apicall: void 'glGenerateMipmap' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getAttribLocation: program with: name [

	<generated>
	<apicall: GLint 'glGetAttribLocation' (GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getBooleanv: pname with: data [

	<generated>
	<apicall: void 'glGetBooleanv' (GLenum GLboolean*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getBufferParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetBufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getError [

	<generated>
	<apicall: GLenum 'glGetError' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getFloatv: pname with: data [

	<generated>
	<apicall: void 'glGetFloatv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getFramebufferAttachmentParameteriv: target with: attachment with: pname with: params [

	<generated>
	<apicall: void 'glGetFramebufferAttachmentParameteriv' (GLenum GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getGraphicsResetStatus [

	<generated>
	<apicall: GLenum 'glGetGraphicsResetStatus' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getIntegerv: pname with: data [

	<generated>
	<apicall: void 'glGetIntegerv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getProgramiv: program with: pname with: params [

	<generated>
	<apicall: void 'glGetProgramiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getRenderbufferParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetRenderbufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #parameters }
GLSC2_0 >> getShadingLanguageVersion [

	| versionString tokens |
	versionString := self getShadingLanguageVersionString.
	"OpenGL SC GLSL ES <major>.<minor> <vendor-specific information>"
	tokens := versionString findTokens: '. '.
	^ { tokens fifth asInteger . tokens sixth asInteger }
]

{ #category : #'api - required' }
GLSC2_0 >> getString: name [

	<generated>
	<apicall: GLubyte* 'glGetString' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getTexParameterfv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getTexParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getUniformLocation: program with: name [

	<generated>
	<apicall: GLint 'glGetUniformLocation' (GLuint GLchar*)>
	^ self externalCallFailed
]

{ #category : #parameters }
GLSC2_0 >> getVersion [

	| versionString tokens |
	versionString := self getVersionString.
	"OpenGL SC <major>.<minor> <vendor-specific information>"
	tokens := versionString findTokens: '. '.
	^ { tokens third asInteger . tokens fourth asInteger }
]

{ #category : #'api - required' }
GLSC2_0 >> getVertexAttribPointerv: index with: pname with: pointer [

	<generated>
	<apicall: void 'glGetVertexAttribPointerv' (GLuint GLenum void**)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getVertexAttribfv: index with: pname with: params [

	<generated>
	<apicall: void 'glGetVertexAttribfv' (GLuint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getVertexAttribiv: index with: pname with: params [

	<generated>
	<apicall: void 'glGetVertexAttribiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getnUniformfv: program with: location with: bufSize with: params [

	<generated>
	<apicall: void 'glGetnUniformfv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> getnUniformiv: program with: location with: bufSize with: params [

	<generated>
	<apicall: void 'glGetnUniformiv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> hint: target with: mode [

	<generated>
	<apicall: void 'glHint' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> isEnabled: cap [

	<generated>
	<apicall: GLboolean 'glIsEnabled' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> lineWidth: width [

	<generated>
	<apicall: void 'glLineWidth' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> pixelStorei: pname with: param [

	<generated>
	<apicall: void 'glPixelStorei' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> polygonOffset: factor with: units [

	<generated>
	<apicall: void 'glPolygonOffset' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> programBinary: program with: binaryFormat with: binary with: length [

	<generated>
	<apicall: void 'glProgramBinary' (GLuint GLenum void* GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> readnPixels: x with: y with: width with: height with: format with: type with: bufSize with: data [

	<generated>
	<apicall: void 'glReadnPixels' (GLint GLint GLsizei GLsizei GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> renderbufferStorage: target with: internalformat with: width with: height [

	<generated>
	<apicall: void 'glRenderbufferStorage' (GLenum GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> sampleCoverage: value with: invert [

	<generated>
	<apicall: void 'glSampleCoverage' (GLfloat GLboolean)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> scissor: x with: y with: width with: height [

	<generated>
	<apicall: void 'glScissor' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> stencilFunc: func with: ref with: mask [

	<generated>
	<apicall: void 'glStencilFunc' (GLenum GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> stencilFuncSeparate: face with: func with: ref with: mask [

	<generated>
	<apicall: void 'glStencilFuncSeparate' (GLenum GLenum GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> stencilMask: mask [

	<generated>
	<apicall: void 'glStencilMask' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> stencilMaskSeparate: face with: mask [

	<generated>
	<apicall: void 'glStencilMaskSeparate' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> stencilOp: fail with: zfail with: zpass [

	<generated>
	<apicall: void 'glStencilOp' (GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> stencilOpSeparate: face with: sfail with: dpfail with: dppass [

	<generated>
	<apicall: void 'glStencilOpSeparate' (GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> texParameterf: target with: pname with: param [

	<generated>
	<apicall: void 'glTexParameterf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> texParameterfv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> texParameteri: target with: pname with: param [

	<generated>
	<apicall: void 'glTexParameteri' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> texParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> texStorage2D: target with: levels with: internalformat with: width with: height [

	<generated>
	<apicall: void 'glTexStorage2D' (GLenum GLsizei GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> texSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexSubImage2D' (GLenum GLint GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform1f: location with: v0 [

	<generated>
	<apicall: void 'glUniform1f' (GLint GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform1fv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform1fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform1i: location with: v0 [

	<generated>
	<apicall: void 'glUniform1i' (GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform1iv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform1iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform2f: location with: v0 with: v1 [

	<generated>
	<apicall: void 'glUniform2f' (GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform2fv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform2fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform2i: location with: v0 with: v1 [

	<generated>
	<apicall: void 'glUniform2i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform2iv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform2iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform3f: location with: v0 with: v1 with: v2 [

	<generated>
	<apicall: void 'glUniform3f' (GLint GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform3fv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform3fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform3i: location with: v0 with: v1 with: v2 [

	<generated>
	<apicall: void 'glUniform3i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform3iv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform3iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform4f: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	<apicall: void 'glUniform4f' (GLint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform4fv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform4fv' (GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform4i: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	<apicall: void 'glUniform4i' (GLint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniform4iv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform4iv' (GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniformMatrix2fv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix2fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniformMatrix3fv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix3fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> uniformMatrix4fv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix4fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> useProgram: program [

	<generated>
	<apicall: void 'glUseProgram' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> vertexAttrib1f: index with: x [

	<generated>
	<apicall: void 'glVertexAttrib1f' (GLuint GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> vertexAttrib1fv: index with: v [

	<generated>
	<apicall: void 'glVertexAttrib1fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> vertexAttrib2f: index with: x with: y [

	<generated>
	<apicall: void 'glVertexAttrib2f' (GLuint GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> vertexAttrib2fv: index with: v [

	<generated>
	<apicall: void 'glVertexAttrib2fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> vertexAttrib3f: index with: x with: y with: z [

	<generated>
	<apicall: void 'glVertexAttrib3f' (GLuint GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> vertexAttrib3fv: index with: v [

	<generated>
	<apicall: void 'glVertexAttrib3fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> vertexAttrib4f: index with: x with: y with: z with: w [

	<generated>
	<apicall: void 'glVertexAttrib4f' (GLuint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> vertexAttrib4fv: index with: v [

	<generated>
	<apicall: void 'glVertexAttrib4fv' (GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> vertexAttribPointer: index with: size with: type with: normalized with: stride with: pointer [

	<generated>
	<apicall: void 'glVertexAttribPointer' (GLuint GLint GLenum GLboolean GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLSC2_0 >> viewport: x with: y with: width with: height [

	<generated>
	<apicall: void 'glViewport' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]
