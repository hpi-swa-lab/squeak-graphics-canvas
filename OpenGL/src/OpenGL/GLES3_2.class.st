Class {
	#name : #'GLES3_2',
	#superclass : #'GLES3_1',
	#category : #'OpenGL-API-GLES2',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLES3_2 class >> majorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLES3_2 class >> minorVersion [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLES3_2 class >> versionNumber [

	^ 32
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> BUFFER [

	<generated>
	^ GL_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> CCW [

	<generated>
	^ GL_CCW
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> CLAMP_TO_BORDER [

	<generated>
	^ GL_CLAMP_TO_BORDER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COLORBURN [

	<generated>
	^ GL_COLORBURN
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COLORDODGE [

	<generated>
	^ GL_COLORDODGE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_10x10 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_10x10
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_10x5 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_10x5
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_10x6 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_10x6
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_10x8 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_10x8
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_12x10 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_12x10
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_12x12 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_12x12
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_4x4 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_4x4
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_5x4 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_5x4
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_5x5 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_5x5
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_6x5 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_6x5
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_6x6 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_6x6
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_8x5 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_8x5
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_8x6 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_8x6
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_RGBA_ASTC_8x8 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_8x8
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_10x10 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_10x5 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_10x6 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_10x8 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_12x10 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_12x12 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_4x4 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_5x4 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_5x5 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_6x5 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_6x6 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_8x5 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_8x6 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> COMPRESSED_SRGB8_ALPHA8_ASTC_8x8 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> CONTEXT_FLAGS [

	<generated>
	^ GL_CONTEXT_FLAGS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> CONTEXT_FLAG_DEBUG_BIT [

	<generated>
	^ GL_CONTEXT_FLAG_DEBUG_BIT
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> CONTEXT_FLAG_ROBUST_ACCESS_BIT [

	<generated>
	^ GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> CONTEXT_LOST [

	<generated>
	^ GL_CONTEXT_LOST
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> CW [

	<generated>
	^ GL_CW
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DARKEN [

	<generated>
	^ GL_DARKEN
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_CALLBACK_FUNCTION [

	<generated>
	^ GL_DEBUG_CALLBACK_FUNCTION
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_CALLBACK_USER_PARAM [

	<generated>
	^ GL_DEBUG_CALLBACK_USER_PARAM
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_GROUP_STACK_DEPTH [

	<generated>
	^ GL_DEBUG_GROUP_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_LOGGED_MESSAGES [

	<generated>
	^ GL_DEBUG_LOGGED_MESSAGES
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_NEXT_LOGGED_MESSAGE_LENGTH [

	<generated>
	^ GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_OUTPUT [

	<generated>
	^ GL_DEBUG_OUTPUT
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_OUTPUT_SYNCHRONOUS [

	<generated>
	^ GL_DEBUG_OUTPUT_SYNCHRONOUS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_SEVERITY_HIGH [

	<generated>
	^ GL_DEBUG_SEVERITY_HIGH
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_SEVERITY_LOW [

	<generated>
	^ GL_DEBUG_SEVERITY_LOW
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_SEVERITY_MEDIUM [

	<generated>
	^ GL_DEBUG_SEVERITY_MEDIUM
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_SEVERITY_NOTIFICATION [

	<generated>
	^ GL_DEBUG_SEVERITY_NOTIFICATION
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_SOURCE_API [

	<generated>
	^ GL_DEBUG_SOURCE_API
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_SOURCE_APPLICATION [

	<generated>
	^ GL_DEBUG_SOURCE_APPLICATION
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_SOURCE_OTHER [

	<generated>
	^ GL_DEBUG_SOURCE_OTHER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_SOURCE_SHADER_COMPILER [

	<generated>
	^ GL_DEBUG_SOURCE_SHADER_COMPILER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_SOURCE_THIRD_PARTY [

	<generated>
	^ GL_DEBUG_SOURCE_THIRD_PARTY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_SOURCE_WINDOW_SYSTEM [

	<generated>
	^ GL_DEBUG_SOURCE_WINDOW_SYSTEM
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_TYPE_DEPRECATED_BEHAVIOR [

	<generated>
	^ GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_TYPE_ERROR [

	<generated>
	^ GL_DEBUG_TYPE_ERROR
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_TYPE_MARKER [

	<generated>
	^ GL_DEBUG_TYPE_MARKER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_TYPE_OTHER [

	<generated>
	^ GL_DEBUG_TYPE_OTHER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_TYPE_PERFORMANCE [

	<generated>
	^ GL_DEBUG_TYPE_PERFORMANCE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_TYPE_POP_GROUP [

	<generated>
	^ GL_DEBUG_TYPE_POP_GROUP
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_TYPE_PORTABILITY [

	<generated>
	^ GL_DEBUG_TYPE_PORTABILITY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_TYPE_PUSH_GROUP [

	<generated>
	^ GL_DEBUG_TYPE_PUSH_GROUP
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DEBUG_TYPE_UNDEFINED_BEHAVIOR [

	<generated>
	^ GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> DIFFERENCE [

	<generated>
	^ GL_DIFFERENCE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> EQUAL [

	<generated>
	^ GL_EQUAL
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> EXCLUSION [

	<generated>
	^ GL_EXCLUSION
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> FIRST_VERTEX_CONVENTION [

	<generated>
	^ GL_FIRST_VERTEX_CONVENTION
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> FRACTIONAL_EVEN [

	<generated>
	^ GL_FRACTIONAL_EVEN
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> FRACTIONAL_ODD [

	<generated>
	^ GL_FRACTIONAL_ODD
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> FRAGMENT_INTERPOLATION_OFFSET_BITS [

	<generated>
	^ GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> FRAMEBUFFER_ATTACHMENT_LAYERED [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_LAYERED
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> FRAMEBUFFER_DEFAULT_LAYERS [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_LAYERS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> GEOMETRY_INPUT_TYPE [

	<generated>
	^ GL_GEOMETRY_INPUT_TYPE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> GEOMETRY_OUTPUT_TYPE [

	<generated>
	^ GL_GEOMETRY_OUTPUT_TYPE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> GEOMETRY_SHADER [

	<generated>
	^ GL_GEOMETRY_SHADER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> GEOMETRY_SHADER_BIT [

	<generated>
	^ GL_GEOMETRY_SHADER_BIT
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> GEOMETRY_SHADER_INVOCATIONS [

	<generated>
	^ GL_GEOMETRY_SHADER_INVOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> GEOMETRY_VERTICES_OUT [

	<generated>
	^ GL_GEOMETRY_VERTICES_OUT
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> GUILTY_CONTEXT_RESET [

	<generated>
	^ GL_GUILTY_CONTEXT_RESET
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> HARDLIGHT [

	<generated>
	^ GL_HARDLIGHT
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> HSL_COLOR [

	<generated>
	^ GL_HSL_COLOR
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> HSL_HUE [

	<generated>
	^ GL_HSL_HUE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> HSL_LUMINOSITY [

	<generated>
	^ GL_HSL_LUMINOSITY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> HSL_SATURATION [

	<generated>
	^ GL_HSL_SATURATION
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> IMAGE_BUFFER [

	<generated>
	^ GL_IMAGE_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> IMAGE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> INNOCENT_CONTEXT_RESET [

	<generated>
	^ GL_INNOCENT_CONTEXT_RESET
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> INT_IMAGE_BUFFER [

	<generated>
	^ GL_INT_IMAGE_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> INT_IMAGE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_INT_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> INT_SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> INT_SAMPLER_BUFFER [

	<generated>
	^ GL_INT_SAMPLER_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> INT_SAMPLER_CUBE_MAP_ARRAY [

	<generated>
	^ GL_INT_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> ISOLINES [

	<generated>
	^ GL_ISOLINES
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> IS_PER_PATCH [

	<generated>
	^ GL_IS_PER_PATCH
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> LAST_VERTEX_CONVENTION [

	<generated>
	^ GL_LAST_VERTEX_CONVENTION
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> LAYER_PROVOKING_VERTEX [

	<generated>
	^ GL_LAYER_PROVOKING_VERTEX
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> LIGHTEN [

	<generated>
	^ GL_LIGHTEN
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> LINES_ADJACENCY [

	<generated>
	^ GL_LINES_ADJACENCY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> LINE_STRIP_ADJACENCY [

	<generated>
	^ GL_LINE_STRIP_ADJACENCY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> LOSE_CONTEXT_ON_RESET [

	<generated>
	^ GL_LOSE_CONTEXT_ON_RESET
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_DEBUG_GROUP_STACK_DEPTH [

	<generated>
	^ GL_MAX_DEBUG_GROUP_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_DEBUG_LOGGED_MESSAGES [

	<generated>
	^ GL_MAX_DEBUG_LOGGED_MESSAGES
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_DEBUG_MESSAGE_LENGTH [

	<generated>
	^ GL_MAX_DEBUG_MESSAGE_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_FRAGMENT_INTERPOLATION_OFFSET [

	<generated>
	^ GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_FRAMEBUFFER_LAYERS [

	<generated>
	^ GL_MAX_FRAMEBUFFER_LAYERS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_GEOMETRY_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_GEOMETRY_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_GEOMETRY_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_GEOMETRY_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_GEOMETRY_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_INPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_GEOMETRY_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_GEOMETRY_OUTPUT_VERTICES [

	<generated>
	^ GL_MAX_GEOMETRY_OUTPUT_VERTICES
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_GEOMETRY_SHADER_INVOCATIONS [

	<generated>
	^ GL_MAX_GEOMETRY_SHADER_INVOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_GEOMETRY_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_GEOMETRY_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_GEOMETRY_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_GEOMETRY_UNIFORM_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_GEOMETRY_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_LABEL_LENGTH [

	<generated>
	^ GL_MAX_LABEL_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_PATCH_VERTICES [

	<generated>
	^ GL_MAX_PATCH_VERTICES
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_CONTROL_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_CONTROL_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_CONTROL_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_CONTROL_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_CONTROL_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_CONTROL_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_EVALUATION_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_EVALUATION_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_EVALUATION_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_EVALUATION_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_EVALUATION_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_EVALUATION_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_GEN_LEVEL [

	<generated>
	^ GL_MAX_TESS_GEN_LEVEL
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TESS_PATCH_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_PATCH_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MAX_TEXTURE_BUFFER_SIZE [

	<generated>
	^ GL_MAX_TEXTURE_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MIN_FRAGMENT_INTERPOLATION_OFFSET [

	<generated>
	^ GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MIN_SAMPLE_SHADING_VALUE [

	<generated>
	^ GL_MIN_SAMPLE_SHADING_VALUE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MULTIPLY [

	<generated>
	^ GL_MULTIPLY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MULTISAMPLE_LINE_WIDTH_GRANULARITY [

	<generated>
	^ GL_MULTISAMPLE_LINE_WIDTH_GRANULARITY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> MULTISAMPLE_LINE_WIDTH_RANGE [

	<generated>
	^ GL_MULTISAMPLE_LINE_WIDTH_RANGE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> NO_ERROR [

	<generated>
	^ GL_NO_ERROR
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> NO_RESET_NOTIFICATION [

	<generated>
	^ GL_NO_RESET_NOTIFICATION
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> OVERLAY [

	<generated>
	^ GL_OVERLAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> PATCHES [

	<generated>
	^ GL_PATCHES
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> PATCH_VERTICES [

	<generated>
	^ GL_PATCH_VERTICES
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> PRIMITIVES_GENERATED [

	<generated>
	^ GL_PRIMITIVES_GENERATED
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> PRIMITIVE_BOUNDING_BOX [

	<generated>
	^ GL_PRIMITIVE_BOUNDING_BOX
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED [

	<generated>
	^ GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> PROGRAM [

	<generated>
	^ GL_PROGRAM
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> PROGRAM_PIPELINE [

	<generated>
	^ GL_PROGRAM_PIPELINE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> QUADS [

	<generated>
	^ GL_QUADS
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> QUERY [

	<generated>
	^ GL_QUERY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> REFERENCED_BY_GEOMETRY_SHADER [

	<generated>
	^ GL_REFERENCED_BY_GEOMETRY_SHADER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> REFERENCED_BY_TESS_CONTROL_SHADER [

	<generated>
	^ GL_REFERENCED_BY_TESS_CONTROL_SHADER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> REFERENCED_BY_TESS_EVALUATION_SHADER [

	<generated>
	^ GL_REFERENCED_BY_TESS_EVALUATION_SHADER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> RESET_NOTIFICATION_STRATEGY [

	<generated>
	^ GL_RESET_NOTIFICATION_STRATEGY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> SAMPLER [

	<generated>
	^ GL_SAMPLER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> SAMPLER_BUFFER [

	<generated>
	^ GL_SAMPLER_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> SAMPLER_CUBE_MAP_ARRAY [

	<generated>
	^ GL_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> SAMPLER_CUBE_MAP_ARRAY_SHADOW [

	<generated>
	^ GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> SAMPLE_SHADING [

	<generated>
	^ GL_SAMPLE_SHADING
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> SCREEN [

	<generated>
	^ GL_SCREEN
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> SHADER [

	<generated>
	^ GL_SHADER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> SOFTLIGHT [

	<generated>
	^ GL_SOFTLIGHT
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> STACK_OVERFLOW [

	<generated>
	^ GL_STACK_OVERFLOW
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> STACK_UNDERFLOW [

	<generated>
	^ GL_STACK_UNDERFLOW
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> STENCIL_INDEX [

	<generated>
	^ GL_STENCIL_INDEX
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> STENCIL_INDEX8 [

	<generated>
	^ GL_STENCIL_INDEX8
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TESS_CONTROL_OUTPUT_VERTICES [

	<generated>
	^ GL_TESS_CONTROL_OUTPUT_VERTICES
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TESS_CONTROL_SHADER [

	<generated>
	^ GL_TESS_CONTROL_SHADER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TESS_CONTROL_SHADER_BIT [

	<generated>
	^ GL_TESS_CONTROL_SHADER_BIT
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TESS_EVALUATION_SHADER [

	<generated>
	^ GL_TESS_EVALUATION_SHADER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TESS_EVALUATION_SHADER_BIT [

	<generated>
	^ GL_TESS_EVALUATION_SHADER_BIT
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TESS_GEN_MODE [

	<generated>
	^ GL_TESS_GEN_MODE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TESS_GEN_POINT_MODE [

	<generated>
	^ GL_TESS_GEN_POINT_MODE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TESS_GEN_SPACING [

	<generated>
	^ GL_TESS_GEN_SPACING
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TESS_GEN_VERTEX_ORDER [

	<generated>
	^ GL_TESS_GEN_VERTEX_ORDER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TEXTURE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_TEXTURE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TEXTURE_BINDING_BUFFER [

	<generated>
	^ GL_TEXTURE_BINDING_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TEXTURE_BINDING_CUBE_MAP_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TEXTURE_BORDER_COLOR [

	<generated>
	^ GL_TEXTURE_BORDER_COLOR
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TEXTURE_BUFFER [

	<generated>
	^ GL_TEXTURE_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TEXTURE_BUFFER_BINDING [

	<generated>
	^ GL_TEXTURE_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TEXTURE_BUFFER_DATA_STORE_BINDING [

	<generated>
	^ GL_TEXTURE_BUFFER_DATA_STORE_BINDING
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TEXTURE_BUFFER_OFFSET [

	<generated>
	^ GL_TEXTURE_BUFFER_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TEXTURE_BUFFER_OFFSET_ALIGNMENT [

	<generated>
	^ GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TEXTURE_BUFFER_SIZE [

	<generated>
	^ GL_TEXTURE_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TEXTURE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TRIANGLES [

	<generated>
	^ GL_TRIANGLES
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TRIANGLES_ADJACENCY [

	<generated>
	^ GL_TRIANGLES_ADJACENCY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> TRIANGLE_STRIP_ADJACENCY [

	<generated>
	^ GL_TRIANGLE_STRIP_ADJACENCY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> UNDEFINED_VERTEX [

	<generated>
	^ GL_UNDEFINED_VERTEX
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> UNKNOWN_CONTEXT_RESET [

	<generated>
	^ GL_UNKNOWN_CONTEXT_RESET
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> UNSIGNED_INT_IMAGE_BUFFER [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> UNSIGNED_INT_SAMPLER_BUFFER [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : ''
}
GLES3_2 >> VERTEX_ARRAY [

	<generated>
	^ GL_VERTEX_ARRAY
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> blendBarrier [

	<generated>
	<apicall: void 'glBlendBarrier' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> blendEquationSeparatei: buf with: modeRGB with: modeAlpha [

	<generated>
	<apicall: void 'glBlendEquationSeparatei' (GLuint GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> blendEquationi: buf with: mode [

	<generated>
	<apicall: void 'glBlendEquationi' (GLuint GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> blendFuncSeparatei: buf with: srcRGB with: dstRGB with: srcAlpha with: dstAlpha [

	<generated>
	<apicall: void 'glBlendFuncSeparatei' (GLuint GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> blendFunci: buf with: src with: dst [

	<generated>
	<apicall: void 'glBlendFunci' (GLuint GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> colorMaski: index with: r with: g with: b with: a [

	<generated>
	<apicall: void 'glColorMaski' (GLuint GLboolean GLboolean GLboolean GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> copyImageSubData: srcName with: srcTarget with: srcLevel with: srcX with: srcY with: srcZ with: dstName with: dstTarget with: dstLevel with: dstX with: dstY with: dstZ with: srcWidth with: srcHeight with: srcDepth [

	<generated>
	<apicall: void 'glCopyImageSubData' (GLuint GLenum GLint GLint GLint GLint GLuint GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> debugMessageCallback: callback with: userParam [

	<generated>
	<apicall: void 'glDebugMessageCallback' (GLDEBUGPROC void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> debugMessageControl: source with: type with: severity with: count with: ids with: enabled [

	<generated>
	<apicall: void 'glDebugMessageControl' (GLenum GLenum GLenum GLsizei GLuint* GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> debugMessageInsert: source with: type with: id with: severity with: length with: buf [

	<generated>
	<apicall: void 'glDebugMessageInsert' (GLenum GLenum GLuint GLenum GLsizei GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> disablei: target with: index [

	<generated>
	<apicall: void 'glDisablei' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> drawElementsBaseVertex: mode with: count with: type with: indices with: basevertex [

	<generated>
	<apicall: void 'glDrawElementsBaseVertex' (GLenum GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> drawElementsInstancedBaseVertex: mode with: count with: type with: indices with: instancecount with: basevertex [

	<generated>
	<apicall: void 'glDrawElementsInstancedBaseVertex' (GLenum GLsizei GLenum void* GLsizei GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> drawRangeElementsBaseVertex: mode with: start with: end with: count with: type with: indices with: basevertex [

	<generated>
	<apicall: void 'glDrawRangeElementsBaseVertex' (GLenum GLuint GLuint GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> enablei: target with: index [

	<generated>
	<apicall: void 'glEnablei' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> framebufferTexture: target with: attachment with: texture with: level [

	<generated>
	<apicall: void 'glFramebufferTexture' (GLenum GLenum GLuint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> getDebugMessageLog: count with: bufSize with: sources with: types with: ids with: severities with: lengths with: messageLog [

	<generated>
	<apicall: GLuint 'glGetDebugMessageLog' (GLuint GLsizei GLenum* GLenum* GLuint* GLenum* GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> getGraphicsResetStatus [

	<generated>
	<apicall: GLenum 'glGetGraphicsResetStatus' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> getObjectLabel: identifier with: name with: bufSize with: length with: label [

	<generated>
	<apicall: void 'glGetObjectLabel' (GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> getObjectPtrLabel: ptr with: bufSize with: length with: label [

	<generated>
	<apicall: void 'glGetObjectPtrLabel' (void* GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> getPointerv: pname with: params [

	<generated>
	<apicall: void 'glGetPointerv' (GLenum void**)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> getSamplerParameterIiv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> getSamplerParameterIuiv: sampler with: pname with: params [

	<generated>
	<apicall: void 'glGetSamplerParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> getTexParameterIiv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexParameterIiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> getTexParameterIuiv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexParameterIuiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> getnUniformfv: program with: location with: bufSize with: params [

	<generated>
	<apicall: void 'glGetnUniformfv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> getnUniformiv: program with: location with: bufSize with: params [

	<generated>
	<apicall: void 'glGetnUniformiv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> getnUniformuiv: program with: location with: bufSize with: params [

	<generated>
	<apicall: void 'glGetnUniformuiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> isEnabledi: target with: index [

	<generated>
	<apicall: GLboolean 'glIsEnabledi' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> minSampleShading: value [

	<generated>
	<apicall: void 'glMinSampleShading' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> objectLabel: identifier with: name with: length with: label [

	<generated>
	<apicall: void 'glObjectLabel' (GLenum GLuint GLsizei GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> objectPtrLabel: ptr with: length with: label [

	<generated>
	<apicall: void 'glObjectPtrLabel' (void* GLsizei GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> patchParameteri: pname with: value [

	<generated>
	<apicall: void 'glPatchParameteri' (GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> popDebugGroup [

	<generated>
	<apicall: void 'glPopDebugGroup' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> primitiveBoundingBox: minX with: minY with: minZ with: minW with: maxX with: maxY with: maxZ with: maxW [

	<generated>
	<apicall: void 'glPrimitiveBoundingBox' (GLfloat GLfloat GLfloat GLfloat GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> pushDebugGroup: source with: id with: length with: message [

	<generated>
	<apicall: void 'glPushDebugGroup' (GLenum GLuint GLsizei GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> readnPixels: x with: y with: width with: height with: format with: type with: bufSize with: data [

	<generated>
	<apicall: void 'glReadnPixels' (GLint GLint GLsizei GLsizei GLenum GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> samplerParameterIiv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterIiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> samplerParameterIuiv: sampler with: pname with: param [

	<generated>
	<apicall: void 'glSamplerParameterIuiv' (GLuint GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> texBuffer: target with: internalformat with: buffer [

	<generated>
	<apicall: void 'glTexBuffer' (GLenum GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> texBufferRange: target with: internalformat with: buffer with: offset with: size [

	<generated>
	<apicall: void 'glTexBufferRange' (GLenum GLenum GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> texParameterIiv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexParameterIiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> texParameterIuiv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexParameterIuiv' (GLenum GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : ''
}
GLES3_2 >> texStorage3DMultisample: target with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<generated>
	<apicall: void 'glTexStorage3DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]
