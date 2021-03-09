Class {
	#name : #GLDebugLibrary,
	#superclass : #ProtoObject,
	#instVars : [
		'library'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGL-API',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 2/22/2021 13:49'
}
GLDebugLibrary class >> library: aGLLibrary [

	^ self new library: aGLLibrary
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACCUM [

	<generated>
	^ GL_ACCUM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACCUM_ALPHA_BITS [

	<generated>
	^ GL_ACCUM_ALPHA_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACCUM_BLUE_BITS [

	<generated>
	^ GL_ACCUM_BLUE_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACCUM_BUFFER_BIT [

	<generated>
	^ GL_ACCUM_BUFFER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACCUM_CLEAR_VALUE [

	<generated>
	^ GL_ACCUM_CLEAR_VALUE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACCUM_GREEN_BITS [

	<generated>
	^ GL_ACCUM_GREEN_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACCUM_RED_BITS [

	<generated>
	^ GL_ACCUM_RED_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_ACTIVE_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_ATTRIBUTES [

	<generated>
	^ GL_ACTIVE_ATTRIBUTES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_ATTRIBUTE_MAX_LENGTH [

	<generated>
	^ GL_ACTIVE_ATTRIBUTE_MAX_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_PROGRAM [

	<generated>
	^ GL_ACTIVE_PROGRAM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_RESOURCES [

	<generated>
	^ GL_ACTIVE_RESOURCES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_SUBROUTINES [

	<generated>
	^ GL_ACTIVE_SUBROUTINES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_SUBROUTINE_MAX_LENGTH [

	<generated>
	^ GL_ACTIVE_SUBROUTINE_MAX_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_SUBROUTINE_UNIFORMS [

	<generated>
	^ GL_ACTIVE_SUBROUTINE_UNIFORMS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS [

	<generated>
	^ GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH [

	<generated>
	^ GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_TEXTURE [

	<generated>
	^ GL_ACTIVE_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_UNIFORMS [

	<generated>
	^ GL_ACTIVE_UNIFORMS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_UNIFORM_BLOCKS [

	<generated>
	^ GL_ACTIVE_UNIFORM_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH [

	<generated>
	^ GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_UNIFORM_MAX_LENGTH [

	<generated>
	^ GL_ACTIVE_UNIFORM_MAX_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ACTIVE_VARIABLES [

	<generated>
	^ GL_ACTIVE_VARIABLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ADD [

	<generated>
	^ GL_ADD
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ADD_SIGNED [

	<generated>
	^ GL_ADD_SIGNED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALIASED_LINE_WIDTH_RANGE [

	<generated>
	^ GL_ALIASED_LINE_WIDTH_RANGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALIASED_POINT_SIZE_RANGE [

	<generated>
	^ GL_ALIASED_POINT_SIZE_RANGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALL_ATTRIB_BITS [

	<generated>
	^ GL_ALL_ATTRIB_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALL_BARRIER_BITS [

	<generated>
	^ GL_ALL_BARRIER_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALL_SHADER_BITS [

	<generated>
	^ GL_ALL_SHADER_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALPHA [

	<generated>
	^ GL_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALPHA12 [

	<generated>
	^ GL_ALPHA12
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALPHA16 [

	<generated>
	^ GL_ALPHA16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALPHA4 [

	<generated>
	^ GL_ALPHA4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALPHA8 [

	<generated>
	^ GL_ALPHA8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALPHA_BIAS [

	<generated>
	^ GL_ALPHA_BIAS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALPHA_BITS [

	<generated>
	^ GL_ALPHA_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALPHA_INTEGER [

	<generated>
	^ GL_ALPHA_INTEGER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALPHA_SCALE [

	<generated>
	^ GL_ALPHA_SCALE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALPHA_TEST [

	<generated>
	^ GL_ALPHA_TEST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALPHA_TEST_FUNC [

	<generated>
	^ GL_ALPHA_TEST_FUNC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALPHA_TEST_REF [

	<generated>
	^ GL_ALPHA_TEST_REF
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALREADY_SIGNALED [

	<generated>
	^ GL_ALREADY_SIGNALED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ALWAYS [

	<generated>
	^ GL_ALWAYS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> AMBIENT [

	<generated>
	^ GL_AMBIENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> AMBIENT_AND_DIFFUSE [

	<generated>
	^ GL_AMBIENT_AND_DIFFUSE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> AND [

	<generated>
	^ GL_AND
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> AND_INVERTED [

	<generated>
	^ GL_AND_INVERTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> AND_REVERSE [

	<generated>
	^ GL_AND_REVERSE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ANY_SAMPLES_PASSED [

	<generated>
	^ GL_ANY_SAMPLES_PASSED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ANY_SAMPLES_PASSED_CONSERVATIVE [

	<generated>
	^ GL_ANY_SAMPLES_PASSED_CONSERVATIVE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ARRAY_BUFFER [

	<generated>
	^ GL_ARRAY_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ARRAY_SIZE [

	<generated>
	^ GL_ARRAY_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ARRAY_STRIDE [

	<generated>
	^ GL_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BARRIER_BIT [

	<generated>
	^ GL_ATOMIC_COUNTER_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_BINDING [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_DATA_SIZE [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_INDEX [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_SIZE [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATOMIC_COUNTER_BUFFER_START [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_START
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATTACHED_SHADERS [

	<generated>
	^ GL_ATTACHED_SHADERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ATTRIB_STACK_DEPTH [

	<generated>
	^ GL_ATTRIB_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> AUTO_GENERATE_MIPMAP [

	<generated>
	^ GL_AUTO_GENERATE_MIPMAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> AUTO_NORMAL [

	<generated>
	^ GL_AUTO_NORMAL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> AUX0 [

	<generated>
	^ GL_AUX0
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> AUX1 [

	<generated>
	^ GL_AUX1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> AUX2 [

	<generated>
	^ GL_AUX2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> AUX3 [

	<generated>
	^ GL_AUX3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> AUX_BUFFERS [

	<generated>
	^ GL_AUX_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BACK [

	<generated>
	^ GL_BACK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BACK_LEFT [

	<generated>
	^ GL_BACK_LEFT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BACK_RIGHT [

	<generated>
	^ GL_BACK_RIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BGR [

	<generated>
	^ GL_BGR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BGRA [

	<generated>
	^ GL_BGRA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BGRA_INTEGER [

	<generated>
	^ GL_BGRA_INTEGER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BGR_INTEGER [

	<generated>
	^ GL_BGR_INTEGER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BITMAP [

	<generated>
	^ GL_BITMAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BITMAP_TOKEN [

	<generated>
	^ GL_BITMAP_TOKEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLEND [

	<generated>
	^ GL_BLEND
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLEND_COLOR [

	<generated>
	^ GL_BLEND_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLEND_DST [

	<generated>
	^ GL_BLEND_DST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLEND_DST_ALPHA [

	<generated>
	^ GL_BLEND_DST_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLEND_DST_RGB [

	<generated>
	^ GL_BLEND_DST_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLEND_EQUATION [

	<generated>
	^ GL_BLEND_EQUATION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLEND_EQUATION_ALPHA [

	<generated>
	^ GL_BLEND_EQUATION_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLEND_EQUATION_RGB [

	<generated>
	^ GL_BLEND_EQUATION_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLEND_SRC [

	<generated>
	^ GL_BLEND_SRC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLEND_SRC_ALPHA [

	<generated>
	^ GL_BLEND_SRC_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLEND_SRC_RGB [

	<generated>
	^ GL_BLEND_SRC_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLOCK_INDEX [

	<generated>
	^ GL_BLOCK_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLUE [

	<generated>
	^ GL_BLUE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLUE_BIAS [

	<generated>
	^ GL_BLUE_BIAS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLUE_BITS [

	<generated>
	^ GL_BLUE_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLUE_INTEGER [

	<generated>
	^ GL_BLUE_INTEGER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BLUE_SCALE [

	<generated>
	^ GL_BLUE_SCALE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BOOL [

	<generated>
	^ GL_BOOL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BOOL_VEC2 [

	<generated>
	^ GL_BOOL_VEC2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BOOL_VEC3 [

	<generated>
	^ GL_BOOL_VEC3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BOOL_VEC4 [

	<generated>
	^ GL_BOOL_VEC4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER [

	<generated>
	^ GL_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_ACCESS [

	<generated>
	^ GL_BUFFER_ACCESS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_ACCESS_FLAGS [

	<generated>
	^ GL_BUFFER_ACCESS_FLAGS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_BINDING [

	<generated>
	^ GL_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_DATA_SIZE [

	<generated>
	^ GL_BUFFER_DATA_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_IMMUTABLE_STORAGE [

	<generated>
	^ GL_BUFFER_IMMUTABLE_STORAGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_MAPPED [

	<generated>
	^ GL_BUFFER_MAPPED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_MAP_LENGTH [

	<generated>
	^ GL_BUFFER_MAP_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_MAP_OFFSET [

	<generated>
	^ GL_BUFFER_MAP_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_MAP_POINTER [

	<generated>
	^ GL_BUFFER_MAP_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_SIZE [

	<generated>
	^ GL_BUFFER_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_STORAGE_FLAGS [

	<generated>
	^ GL_BUFFER_STORAGE_FLAGS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_UPDATE_BARRIER_BIT [

	<generated>
	^ GL_BUFFER_UPDATE_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_USAGE [

	<generated>
	^ GL_BUFFER_USAGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BUFFER_VARIABLE [

	<generated>
	^ GL_BUFFER_VARIABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> BYTE [

	<generated>
	^ GL_BYTE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> C3F_V3F [

	<generated>
	^ GL_C3F_V3F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> C4F_N3F_V3F [

	<generated>
	^ GL_C4F_N3F_V3F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> C4UB_V2F [

	<generated>
	^ GL_C4UB_V2F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> C4UB_V3F [

	<generated>
	^ GL_C4UB_V3F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CAVEAT_SUPPORT [

	<generated>
	^ GL_CAVEAT_SUPPORT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CCW [

	<generated>
	^ GL_CCW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLAMP [

	<generated>
	^ GL_CLAMP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLAMP_FRAGMENT_COLOR [

	<generated>
	^ GL_CLAMP_FRAGMENT_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLAMP_READ_COLOR [

	<generated>
	^ GL_CLAMP_READ_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLAMP_TO_BORDER [

	<generated>
	^ GL_CLAMP_TO_BORDER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLAMP_TO_EDGE [

	<generated>
	^ GL_CLAMP_TO_EDGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLAMP_VERTEX_COLOR [

	<generated>
	^ GL_CLAMP_VERTEX_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLEAR [

	<generated>
	^ GL_CLEAR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLEAR_BUFFER [

	<generated>
	^ GL_CLEAR_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLEAR_TEXTURE [

	<generated>
	^ GL_CLEAR_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIENT_ACTIVE_TEXTURE [

	<generated>
	^ GL_CLIENT_ACTIVE_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIENT_ALL_ATTRIB_BITS [

	<generated>
	^ GL_CLIENT_ALL_ATTRIB_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIENT_ATTRIB_STACK_DEPTH [

	<generated>
	^ GL_CLIENT_ATTRIB_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIENT_MAPPED_BUFFER_BARRIER_BIT [

	<generated>
	^ GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIENT_PIXEL_STORE_BIT [

	<generated>
	^ GL_CLIENT_PIXEL_STORE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIENT_STORAGE_BIT [

	<generated>
	^ GL_CLIENT_STORAGE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIENT_VERTEX_ARRAY_BIT [

	<generated>
	^ GL_CLIENT_VERTEX_ARRAY_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIPPING_INPUT_PRIMITIVES [

	<generated>
	^ GL_CLIPPING_INPUT_PRIMITIVES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIPPING_OUTPUT_PRIMITIVES [

	<generated>
	^ GL_CLIPPING_OUTPUT_PRIMITIVES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_DEPTH_MODE [

	<generated>
	^ GL_CLIP_DEPTH_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_DISTANCE0 [

	<generated>
	^ GL_CLIP_DISTANCE0
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_DISTANCE1 [

	<generated>
	^ GL_CLIP_DISTANCE1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_DISTANCE2 [

	<generated>
	^ GL_CLIP_DISTANCE2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_DISTANCE3 [

	<generated>
	^ GL_CLIP_DISTANCE3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_DISTANCE4 [

	<generated>
	^ GL_CLIP_DISTANCE4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_DISTANCE5 [

	<generated>
	^ GL_CLIP_DISTANCE5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_DISTANCE6 [

	<generated>
	^ GL_CLIP_DISTANCE6
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_DISTANCE7 [

	<generated>
	^ GL_CLIP_DISTANCE7
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_ORIGIN [

	<generated>
	^ GL_CLIP_ORIGIN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_PLANE0 [

	<generated>
	^ GL_CLIP_PLANE0
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_PLANE1 [

	<generated>
	^ GL_CLIP_PLANE1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_PLANE2 [

	<generated>
	^ GL_CLIP_PLANE2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_PLANE3 [

	<generated>
	^ GL_CLIP_PLANE3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_PLANE4 [

	<generated>
	^ GL_CLIP_PLANE4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CLIP_PLANE5 [

	<generated>
	^ GL_CLIP_PLANE5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COEFF [

	<generated>
	^ GL_COEFF
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR [

	<generated>
	^ GL_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLORBURN [

	<generated>
	^ GL_COLORBURN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLORDODGE [

	<generated>
	^ GL_COLORDODGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ARRAY [

	<generated>
	^ GL_COLOR_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_COLOR_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ARRAY_POINTER [

	<generated>
	^ GL_COLOR_ARRAY_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ARRAY_SIZE [

	<generated>
	^ GL_COLOR_ARRAY_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ARRAY_STRIDE [

	<generated>
	^ GL_COLOR_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ARRAY_TYPE [

	<generated>
	^ GL_COLOR_ARRAY_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT0 [

	<generated>
	^ GL_COLOR_ATTACHMENT0
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT1 [

	<generated>
	^ GL_COLOR_ATTACHMENT1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT10 [

	<generated>
	^ GL_COLOR_ATTACHMENT10
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT11 [

	<generated>
	^ GL_COLOR_ATTACHMENT11
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT12 [

	<generated>
	^ GL_COLOR_ATTACHMENT12
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT13 [

	<generated>
	^ GL_COLOR_ATTACHMENT13
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT14 [

	<generated>
	^ GL_COLOR_ATTACHMENT14
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT15 [

	<generated>
	^ GL_COLOR_ATTACHMENT15
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT16 [

	<generated>
	^ GL_COLOR_ATTACHMENT16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT17 [

	<generated>
	^ GL_COLOR_ATTACHMENT17
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT18 [

	<generated>
	^ GL_COLOR_ATTACHMENT18
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT19 [

	<generated>
	^ GL_COLOR_ATTACHMENT19
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT2 [

	<generated>
	^ GL_COLOR_ATTACHMENT2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT20 [

	<generated>
	^ GL_COLOR_ATTACHMENT20
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT21 [

	<generated>
	^ GL_COLOR_ATTACHMENT21
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT22 [

	<generated>
	^ GL_COLOR_ATTACHMENT22
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT23 [

	<generated>
	^ GL_COLOR_ATTACHMENT23
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT24 [

	<generated>
	^ GL_COLOR_ATTACHMENT24
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT25 [

	<generated>
	^ GL_COLOR_ATTACHMENT25
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT26 [

	<generated>
	^ GL_COLOR_ATTACHMENT26
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT27 [

	<generated>
	^ GL_COLOR_ATTACHMENT27
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT28 [

	<generated>
	^ GL_COLOR_ATTACHMENT28
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT29 [

	<generated>
	^ GL_COLOR_ATTACHMENT29
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT3 [

	<generated>
	^ GL_COLOR_ATTACHMENT3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT30 [

	<generated>
	^ GL_COLOR_ATTACHMENT30
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT31 [

	<generated>
	^ GL_COLOR_ATTACHMENT31
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT4 [

	<generated>
	^ GL_COLOR_ATTACHMENT4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT5 [

	<generated>
	^ GL_COLOR_ATTACHMENT5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT6 [

	<generated>
	^ GL_COLOR_ATTACHMENT6
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT7 [

	<generated>
	^ GL_COLOR_ATTACHMENT7
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT8 [

	<generated>
	^ GL_COLOR_ATTACHMENT8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ATTACHMENT9 [

	<generated>
	^ GL_COLOR_ATTACHMENT9
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_BUFFER_BIT [

	<generated>
	^ GL_COLOR_BUFFER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_CLEAR_VALUE [

	<generated>
	^ GL_COLOR_CLEAR_VALUE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_COMPONENTS [

	<generated>
	^ GL_COLOR_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_ENCODING [

	<generated>
	^ GL_COLOR_ENCODING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_INDEX [

	<generated>
	^ GL_COLOR_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_INDEXES [

	<generated>
	^ GL_COLOR_INDEXES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_LOGIC_OP [

	<generated>
	^ GL_COLOR_LOGIC_OP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_MATERIAL [

	<generated>
	^ GL_COLOR_MATERIAL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_MATERIAL_FACE [

	<generated>
	^ GL_COLOR_MATERIAL_FACE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_MATERIAL_PARAMETER [

	<generated>
	^ GL_COLOR_MATERIAL_PARAMETER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_RENDERABLE [

	<generated>
	^ GL_COLOR_RENDERABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_SUM [

	<generated>
	^ GL_COLOR_SUM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_TABLE [

	<generated>
	^ GL_COLOR_TABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COLOR_WRITEMASK [

	<generated>
	^ GL_COLOR_WRITEMASK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMBINE [

	<generated>
	^ GL_COMBINE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMBINE_ALPHA [

	<generated>
	^ GL_COMBINE_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMBINE_RGB [

	<generated>
	^ GL_COMBINE_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMMAND_BARRIER_BIT [

	<generated>
	^ GL_COMMAND_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPARE_REF_TO_TEXTURE [

	<generated>
	^ GL_COMPARE_REF_TO_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPARE_R_TO_TEXTURE [

	<generated>
	^ GL_COMPARE_R_TO_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPATIBLE_SUBROUTINES [

	<generated>
	^ GL_COMPATIBLE_SUBROUTINES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPILE [

	<generated>
	^ GL_COMPILE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPILE_AND_EXECUTE [

	<generated>
	^ GL_COMPILE_AND_EXECUTE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPILE_STATUS [

	<generated>
	^ GL_COMPILE_STATUS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_ALPHA [

	<generated>
	^ GL_COMPRESSED_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_INTENSITY [

	<generated>
	^ GL_COMPRESSED_INTENSITY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_LUMINANCE [

	<generated>
	^ GL_COMPRESSED_LUMINANCE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_LUMINANCE_ALPHA [

	<generated>
	^ GL_COMPRESSED_LUMINANCE_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_R11_EAC [

	<generated>
	^ GL_COMPRESSED_R11_EAC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RED [

	<generated>
	^ GL_COMPRESSED_RED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RED_RGTC1 [

	<generated>
	^ GL_COMPRESSED_RED_RGTC1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RG [

	<generated>
	^ GL_COMPRESSED_RG
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RG11_EAC [

	<generated>
	^ GL_COMPRESSED_RG11_EAC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGB [

	<generated>
	^ GL_COMPRESSED_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGB8_ETC2 [

	<generated>
	^ GL_COMPRESSED_RGB8_ETC2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 [

	<generated>
	^ GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA [

	<generated>
	^ GL_COMPRESSED_RGBA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA8_ETC2_EAC [

	<generated>
	^ GL_COMPRESSED_RGBA8_ETC2_EAC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_10x10 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_10x10
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_10x5 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_10x5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_10x6 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_10x6
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_10x8 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_10x8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_12x10 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_12x10
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_12x12 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_12x12
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_4x4 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_4x4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_5x4 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_5x4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_5x5 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_5x5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_6x5 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_6x5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_6x6 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_6x6
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_8x5 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_8x5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_8x6 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_8x6
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_ASTC_8x8 [

	<generated>
	^ GL_COMPRESSED_RGBA_ASTC_8x8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGBA_BPTC_UNORM [

	<generated>
	^ GL_COMPRESSED_RGBA_BPTC_UNORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGB_BPTC_SIGNED_FLOAT [

	<generated>
	^ GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT [

	<generated>
	^ GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_RG_RGTC2 [

	<generated>
	^ GL_COMPRESSED_RG_RGTC2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SIGNED_R11_EAC [

	<generated>
	^ GL_COMPRESSED_SIGNED_R11_EAC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SIGNED_RED_RGTC1 [

	<generated>
	^ GL_COMPRESSED_SIGNED_RED_RGTC1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SIGNED_RG11_EAC [

	<generated>
	^ GL_COMPRESSED_SIGNED_RG11_EAC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SIGNED_RG_RGTC2 [

	<generated>
	^ GL_COMPRESSED_SIGNED_RG_RGTC2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SLUMINANCE [

	<generated>
	^ GL_COMPRESSED_SLUMINANCE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SLUMINANCE_ALPHA [

	<generated>
	^ GL_COMPRESSED_SLUMINANCE_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB [

	<generated>
	^ GL_COMPRESSED_SRGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_10x10 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_10x5 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_10x6 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_10x8 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_12x10 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_12x12 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_4x4 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_5x4 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_5x5 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_6x5 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_6x6 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_8x5 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_8x6 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ASTC_8x8 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ALPHA8_ETC2_EAC [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_ETC2 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ETC2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 [

	<generated>
	^ GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB_ALPHA [

	<generated>
	^ GL_COMPRESSED_SRGB_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_SRGB_ALPHA_BPTC_UNORM [

	<generated>
	^ GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPRESSED_TEXTURE_FORMATS [

	<generated>
	^ GL_COMPRESSED_TEXTURE_FORMATS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPUTE_SHADER [

	<generated>
	^ GL_COMPUTE_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPUTE_SHADER_BIT [

	<generated>
	^ GL_COMPUTE_SHADER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPUTE_SHADER_INVOCATIONS [

	<generated>
	^ GL_COMPUTE_SHADER_INVOCATIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPUTE_SUBROUTINE [

	<generated>
	^ GL_COMPUTE_SUBROUTINE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPUTE_SUBROUTINE_UNIFORM [

	<generated>
	^ GL_COMPUTE_SUBROUTINE_UNIFORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPUTE_TEXTURE [

	<generated>
	^ GL_COMPUTE_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COMPUTE_WORK_GROUP_SIZE [

	<generated>
	^ GL_COMPUTE_WORK_GROUP_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONDITION_SATISFIED [

	<generated>
	^ GL_CONDITION_SATISFIED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONSTANT [

	<generated>
	^ GL_CONSTANT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONSTANT_ALPHA [

	<generated>
	^ GL_CONSTANT_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONSTANT_ATTENUATION [

	<generated>
	^ GL_CONSTANT_ATTENUATION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONSTANT_COLOR [

	<generated>
	^ GL_CONSTANT_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONTEXT_COMPATIBILITY_PROFILE_BIT [

	<generated>
	^ GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONTEXT_CORE_PROFILE_BIT [

	<generated>
	^ GL_CONTEXT_CORE_PROFILE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONTEXT_FLAGS [

	<generated>
	^ GL_CONTEXT_FLAGS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONTEXT_FLAG_DEBUG_BIT [

	<generated>
	^ GL_CONTEXT_FLAG_DEBUG_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT [

	<generated>
	^ GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONTEXT_FLAG_NO_ERROR_BIT [

	<generated>
	^ GL_CONTEXT_FLAG_NO_ERROR_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONTEXT_FLAG_ROBUST_ACCESS_BIT [

	<generated>
	^ GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONTEXT_LOST [

	<generated>
	^ GL_CONTEXT_LOST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONTEXT_PROFILE_MASK [

	<generated>
	^ GL_CONTEXT_PROFILE_MASK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONTEXT_RELEASE_BEHAVIOR [

	<generated>
	^ GL_CONTEXT_RELEASE_BEHAVIOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONTEXT_RELEASE_BEHAVIOR_FLUSH [

	<generated>
	^ GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONTEXT_ROBUST_ACCESS [

	<generated>
	^ GL_CONTEXT_ROBUST_ACCESS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONVOLUTION_1D [

	<generated>
	^ GL_CONVOLUTION_1D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CONVOLUTION_2D [

	<generated>
	^ GL_CONVOLUTION_2D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COORD_REPLACE [

	<generated>
	^ GL_COORD_REPLACE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COPY [

	<generated>
	^ GL_COPY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COPY_INVERTED [

	<generated>
	^ GL_COPY_INVERTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COPY_PIXEL_TOKEN [

	<generated>
	^ GL_COPY_PIXEL_TOKEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COPY_READ_BUFFER [

	<generated>
	^ GL_COPY_READ_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COPY_READ_BUFFER_BINDING [

	<generated>
	^ GL_COPY_READ_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COPY_WRITE_BUFFER [

	<generated>
	^ GL_COPY_WRITE_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> COPY_WRITE_BUFFER_BINDING [

	<generated>
	^ GL_COPY_WRITE_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CULL_FACE [

	<generated>
	^ GL_CULL_FACE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CULL_FACE_MODE [

	<generated>
	^ GL_CULL_FACE_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_BIT [

	<generated>
	^ GL_CURRENT_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_COLOR [

	<generated>
	^ GL_CURRENT_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_FOG_COORD [

	<generated>
	^ GL_CURRENT_FOG_COORD
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_FOG_COORDINATE [

	<generated>
	^ GL_CURRENT_FOG_COORDINATE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_INDEX [

	<generated>
	^ GL_CURRENT_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_NORMAL [

	<generated>
	^ GL_CURRENT_NORMAL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_PROGRAM [

	<generated>
	^ GL_CURRENT_PROGRAM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_QUERY [

	<generated>
	^ GL_CURRENT_QUERY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_RASTER_COLOR [

	<generated>
	^ GL_CURRENT_RASTER_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_RASTER_DISTANCE [

	<generated>
	^ GL_CURRENT_RASTER_DISTANCE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_RASTER_INDEX [

	<generated>
	^ GL_CURRENT_RASTER_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_RASTER_POSITION [

	<generated>
	^ GL_CURRENT_RASTER_POSITION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_RASTER_POSITION_VALID [

	<generated>
	^ GL_CURRENT_RASTER_POSITION_VALID
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_RASTER_SECONDARY_COLOR [

	<generated>
	^ GL_CURRENT_RASTER_SECONDARY_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_RASTER_TEXTURE_COORDS [

	<generated>
	^ GL_CURRENT_RASTER_TEXTURE_COORDS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_SECONDARY_COLOR [

	<generated>
	^ GL_CURRENT_SECONDARY_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_TEXTURE_COORDS [

	<generated>
	^ GL_CURRENT_TEXTURE_COORDS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CURRENT_VERTEX_ATTRIB [

	<generated>
	^ GL_CURRENT_VERTEX_ATTRIB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> CW [

	<generated>
	^ GL_CW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DARKEN [

	<generated>
	^ GL_DARKEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_CALLBACK_FUNCTION [

	<generated>
	^ GL_DEBUG_CALLBACK_FUNCTION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_CALLBACK_USER_PARAM [

	<generated>
	^ GL_DEBUG_CALLBACK_USER_PARAM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_GROUP_STACK_DEPTH [

	<generated>
	^ GL_DEBUG_GROUP_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_LOGGED_MESSAGES [

	<generated>
	^ GL_DEBUG_LOGGED_MESSAGES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_NEXT_LOGGED_MESSAGE_LENGTH [

	<generated>
	^ GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_OUTPUT [

	<generated>
	^ GL_DEBUG_OUTPUT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_OUTPUT_SYNCHRONOUS [

	<generated>
	^ GL_DEBUG_OUTPUT_SYNCHRONOUS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_SEVERITY_HIGH [

	<generated>
	^ GL_DEBUG_SEVERITY_HIGH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_SEVERITY_LOW [

	<generated>
	^ GL_DEBUG_SEVERITY_LOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_SEVERITY_MEDIUM [

	<generated>
	^ GL_DEBUG_SEVERITY_MEDIUM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_SEVERITY_NOTIFICATION [

	<generated>
	^ GL_DEBUG_SEVERITY_NOTIFICATION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_SOURCE_API [

	<generated>
	^ GL_DEBUG_SOURCE_API
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_SOURCE_APPLICATION [

	<generated>
	^ GL_DEBUG_SOURCE_APPLICATION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_SOURCE_OTHER [

	<generated>
	^ GL_DEBUG_SOURCE_OTHER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_SOURCE_SHADER_COMPILER [

	<generated>
	^ GL_DEBUG_SOURCE_SHADER_COMPILER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_SOURCE_THIRD_PARTY [

	<generated>
	^ GL_DEBUG_SOURCE_THIRD_PARTY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_SOURCE_WINDOW_SYSTEM [

	<generated>
	^ GL_DEBUG_SOURCE_WINDOW_SYSTEM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_TYPE_DEPRECATED_BEHAVIOR [

	<generated>
	^ GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_TYPE_ERROR [

	<generated>
	^ GL_DEBUG_TYPE_ERROR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_TYPE_MARKER [

	<generated>
	^ GL_DEBUG_TYPE_MARKER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_TYPE_OTHER [

	<generated>
	^ GL_DEBUG_TYPE_OTHER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_TYPE_PERFORMANCE [

	<generated>
	^ GL_DEBUG_TYPE_PERFORMANCE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_TYPE_POP_GROUP [

	<generated>
	^ GL_DEBUG_TYPE_POP_GROUP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_TYPE_PORTABILITY [

	<generated>
	^ GL_DEBUG_TYPE_PORTABILITY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_TYPE_PUSH_GROUP [

	<generated>
	^ GL_DEBUG_TYPE_PUSH_GROUP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEBUG_TYPE_UNDEFINED_BEHAVIOR [

	<generated>
	^ GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DECAL [

	<generated>
	^ GL_DECAL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DECR [

	<generated>
	^ GL_DECR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DECR_WRAP [

	<generated>
	^ GL_DECR_WRAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DELETE_STATUS [

	<generated>
	^ GL_DELETE_STATUS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH [

	<generated>
	^ GL_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH24_STENCIL8 [

	<generated>
	^ GL_DEPTH24_STENCIL8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH32F_STENCIL8 [

	<generated>
	^ GL_DEPTH32F_STENCIL8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_ATTACHMENT [

	<generated>
	^ GL_DEPTH_ATTACHMENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_BIAS [

	<generated>
	^ GL_DEPTH_BIAS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_BITS [

	<generated>
	^ GL_DEPTH_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_BUFFER_BIT [

	<generated>
	^ GL_DEPTH_BUFFER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_CLAMP [

	<generated>
	^ GL_DEPTH_CLAMP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_CLEAR_VALUE [

	<generated>
	^ GL_DEPTH_CLEAR_VALUE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_COMPONENT [

	<generated>
	^ GL_DEPTH_COMPONENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_COMPONENT16 [

	<generated>
	^ GL_DEPTH_COMPONENT16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_COMPONENT24 [

	<generated>
	^ GL_DEPTH_COMPONENT24
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_COMPONENT32 [

	<generated>
	^ GL_DEPTH_COMPONENT32
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_COMPONENT32F [

	<generated>
	^ GL_DEPTH_COMPONENT32F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_COMPONENTS [

	<generated>
	^ GL_DEPTH_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_FUNC [

	<generated>
	^ GL_DEPTH_FUNC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_RANGE [

	<generated>
	^ GL_DEPTH_RANGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_RENDERABLE [

	<generated>
	^ GL_DEPTH_RENDERABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_SCALE [

	<generated>
	^ GL_DEPTH_SCALE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_STENCIL [

	<generated>
	^ GL_DEPTH_STENCIL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_STENCIL_ATTACHMENT [

	<generated>
	^ GL_DEPTH_STENCIL_ATTACHMENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_STENCIL_TEXTURE_MODE [

	<generated>
	^ GL_DEPTH_STENCIL_TEXTURE_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_TEST [

	<generated>
	^ GL_DEPTH_TEST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_TEXTURE_MODE [

	<generated>
	^ GL_DEPTH_TEXTURE_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DEPTH_WRITEMASK [

	<generated>
	^ GL_DEPTH_WRITEMASK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DIFFERENCE [

	<generated>
	^ GL_DIFFERENCE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DIFFUSE [

	<generated>
	^ GL_DIFFUSE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DISPATCH_INDIRECT_BUFFER [

	<generated>
	^ GL_DISPATCH_INDIRECT_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DISPATCH_INDIRECT_BUFFER_BINDING [

	<generated>
	^ GL_DISPATCH_INDIRECT_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DISPLAY_LIST [

	<generated>
	^ GL_DISPLAY_LIST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DITHER [

	<generated>
	^ GL_DITHER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOMAIN [

	<generated>
	^ GL_DOMAIN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DONT_CARE [

	<generated>
	^ GL_DONT_CARE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOT3_RGB [

	<generated>
	^ GL_DOT3_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOT3_RGBA [

	<generated>
	^ GL_DOT3_RGBA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE [

	<generated>
	^ GL_DOUBLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLEBUFFER [

	<generated>
	^ GL_DOUBLEBUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE_MAT2 [

	<generated>
	^ GL_DOUBLE_MAT2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE_MAT2x3 [

	<generated>
	^ GL_DOUBLE_MAT2x3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE_MAT2x4 [

	<generated>
	^ GL_DOUBLE_MAT2x4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE_MAT3 [

	<generated>
	^ GL_DOUBLE_MAT3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE_MAT3x2 [

	<generated>
	^ GL_DOUBLE_MAT3x2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE_MAT3x4 [

	<generated>
	^ GL_DOUBLE_MAT3x4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE_MAT4 [

	<generated>
	^ GL_DOUBLE_MAT4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE_MAT4x2 [

	<generated>
	^ GL_DOUBLE_MAT4x2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE_MAT4x3 [

	<generated>
	^ GL_DOUBLE_MAT4x3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE_VEC2 [

	<generated>
	^ GL_DOUBLE_VEC2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE_VEC3 [

	<generated>
	^ GL_DOUBLE_VEC3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DOUBLE_VEC4 [

	<generated>
	^ GL_DOUBLE_VEC4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER [

	<generated>
	^ GL_DRAW_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER0 [

	<generated>
	^ GL_DRAW_BUFFER0
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER1 [

	<generated>
	^ GL_DRAW_BUFFER1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER10 [

	<generated>
	^ GL_DRAW_BUFFER10
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER11 [

	<generated>
	^ GL_DRAW_BUFFER11
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER12 [

	<generated>
	^ GL_DRAW_BUFFER12
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER13 [

	<generated>
	^ GL_DRAW_BUFFER13
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER14 [

	<generated>
	^ GL_DRAW_BUFFER14
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER15 [

	<generated>
	^ GL_DRAW_BUFFER15
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER2 [

	<generated>
	^ GL_DRAW_BUFFER2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER3 [

	<generated>
	^ GL_DRAW_BUFFER3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER4 [

	<generated>
	^ GL_DRAW_BUFFER4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER5 [

	<generated>
	^ GL_DRAW_BUFFER5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER6 [

	<generated>
	^ GL_DRAW_BUFFER6
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER7 [

	<generated>
	^ GL_DRAW_BUFFER7
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER8 [

	<generated>
	^ GL_DRAW_BUFFER8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_BUFFER9 [

	<generated>
	^ GL_DRAW_BUFFER9
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_FRAMEBUFFER [

	<generated>
	^ GL_DRAW_FRAMEBUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_FRAMEBUFFER_BINDING [

	<generated>
	^ GL_DRAW_FRAMEBUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_INDIRECT_BUFFER [

	<generated>
	^ GL_DRAW_INDIRECT_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_INDIRECT_BUFFER_BINDING [

	<generated>
	^ GL_DRAW_INDIRECT_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DRAW_PIXEL_TOKEN [

	<generated>
	^ GL_DRAW_PIXEL_TOKEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DST_ALPHA [

	<generated>
	^ GL_DST_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DST_COLOR [

	<generated>
	^ GL_DST_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DYNAMIC_COPY [

	<generated>
	^ GL_DYNAMIC_COPY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DYNAMIC_DRAW [

	<generated>
	^ GL_DYNAMIC_DRAW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DYNAMIC_READ [

	<generated>
	^ GL_DYNAMIC_READ
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> DYNAMIC_STORAGE_BIT [

	<generated>
	^ GL_DYNAMIC_STORAGE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EDGE_FLAG [

	<generated>
	^ GL_EDGE_FLAG
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EDGE_FLAG_ARRAY [

	<generated>
	^ GL_EDGE_FLAG_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EDGE_FLAG_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_EDGE_FLAG_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EDGE_FLAG_ARRAY_POINTER [

	<generated>
	^ GL_EDGE_FLAG_ARRAY_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EDGE_FLAG_ARRAY_STRIDE [

	<generated>
	^ GL_EDGE_FLAG_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ELEMENT_ARRAY_BARRIER_BIT [

	<generated>
	^ GL_ELEMENT_ARRAY_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ELEMENT_ARRAY_BUFFER [

	<generated>
	^ GL_ELEMENT_ARRAY_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ELEMENT_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_ELEMENT_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EMISSION [

	<generated>
	^ GL_EMISSION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ENABLE_BIT [

	<generated>
	^ GL_ENABLE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EQUAL [

	<generated>
	^ GL_EQUAL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EQUIV [

	<generated>
	^ GL_EQUIV
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EVAL_BIT [

	<generated>
	^ GL_EVAL_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EXCLUSION [

	<generated>
	^ GL_EXCLUSION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EXP [

	<generated>
	^ GL_EXP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EXP2 [

	<generated>
	^ GL_EXP2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EXTENSIONS [

	<generated>
	^ GL_EXTENSIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EYE_LINEAR [

	<generated>
	^ GL_EYE_LINEAR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> EYE_PLANE [

	<generated>
	^ GL_EYE_PLANE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FALSE [

	<generated>
	^ GL_FALSE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FASTEST [

	<generated>
	^ GL_FASTEST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FEEDBACK [

	<generated>
	^ GL_FEEDBACK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FEEDBACK_BUFFER_POINTER [

	<generated>
	^ GL_FEEDBACK_BUFFER_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FEEDBACK_BUFFER_SIZE [

	<generated>
	^ GL_FEEDBACK_BUFFER_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FEEDBACK_BUFFER_TYPE [

	<generated>
	^ GL_FEEDBACK_BUFFER_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FILL [

	<generated>
	^ GL_FILL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FILTER [

	<generated>
	^ GL_FILTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FIRST_VERTEX_CONVENTION [

	<generated>
	^ GL_FIRST_VERTEX_CONVENTION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FIXED [

	<generated>
	^ GL_FIXED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FIXED_ONLY [

	<generated>
	^ GL_FIXED_ONLY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLAT [

	<generated>
	^ GL_FLAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT [

	<generated>
	^ GL_FLOAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_32_UNSIGNED_INT_24_8_REV [

	<generated>
	^ GL_FLOAT_32_UNSIGNED_INT_24_8_REV
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_MAT2 [

	<generated>
	^ GL_FLOAT_MAT2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_MAT2x3 [

	<generated>
	^ GL_FLOAT_MAT2x3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_MAT2x4 [

	<generated>
	^ GL_FLOAT_MAT2x4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_MAT3 [

	<generated>
	^ GL_FLOAT_MAT3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_MAT3x2 [

	<generated>
	^ GL_FLOAT_MAT3x2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_MAT3x4 [

	<generated>
	^ GL_FLOAT_MAT3x4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_MAT4 [

	<generated>
	^ GL_FLOAT_MAT4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_MAT4x2 [

	<generated>
	^ GL_FLOAT_MAT4x2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_MAT4x3 [

	<generated>
	^ GL_FLOAT_MAT4x3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_VEC2 [

	<generated>
	^ GL_FLOAT_VEC2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_VEC3 [

	<generated>
	^ GL_FLOAT_VEC3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FLOAT_VEC4 [

	<generated>
	^ GL_FLOAT_VEC4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG [

	<generated>
	^ GL_FOG
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_BIT [

	<generated>
	^ GL_FOG_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COLOR [

	<generated>
	^ GL_FOG_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORD [

	<generated>
	^ GL_FOG_COORD
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORDINATE [

	<generated>
	^ GL_FOG_COORDINATE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORDINATE_ARRAY [

	<generated>
	^ GL_FOG_COORDINATE_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORDINATE_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORDINATE_ARRAY_POINTER [

	<generated>
	^ GL_FOG_COORDINATE_ARRAY_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORDINATE_ARRAY_STRIDE [

	<generated>
	^ GL_FOG_COORDINATE_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORDINATE_ARRAY_TYPE [

	<generated>
	^ GL_FOG_COORDINATE_ARRAY_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORDINATE_SOURCE [

	<generated>
	^ GL_FOG_COORDINATE_SOURCE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORD_ARRAY [

	<generated>
	^ GL_FOG_COORD_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORD_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_FOG_COORD_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORD_ARRAY_POINTER [

	<generated>
	^ GL_FOG_COORD_ARRAY_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORD_ARRAY_STRIDE [

	<generated>
	^ GL_FOG_COORD_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORD_ARRAY_TYPE [

	<generated>
	^ GL_FOG_COORD_ARRAY_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_COORD_SRC [

	<generated>
	^ GL_FOG_COORD_SRC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_DENSITY [

	<generated>
	^ GL_FOG_DENSITY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_END [

	<generated>
	^ GL_FOG_END
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_HINT [

	<generated>
	^ GL_FOG_HINT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_INDEX [

	<generated>
	^ GL_FOG_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_MODE [

	<generated>
	^ GL_FOG_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FOG_START [

	<generated>
	^ GL_FOG_START
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRACTIONAL_EVEN [

	<generated>
	^ GL_FRACTIONAL_EVEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRACTIONAL_ODD [

	<generated>
	^ GL_FRACTIONAL_ODD
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAGMENT_DEPTH [

	<generated>
	^ GL_FRAGMENT_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAGMENT_INTERPOLATION_OFFSET_BITS [

	<generated>
	^ GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAGMENT_SHADER [

	<generated>
	^ GL_FRAGMENT_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAGMENT_SHADER_BIT [

	<generated>
	^ GL_FRAGMENT_SHADER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAGMENT_SHADER_DERIVATIVE_HINT [

	<generated>
	^ GL_FRAGMENT_SHADER_DERIVATIVE_HINT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAGMENT_SHADER_INVOCATIONS [

	<generated>
	^ GL_FRAGMENT_SHADER_INVOCATIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAGMENT_SUBROUTINE [

	<generated>
	^ GL_FRAGMENT_SUBROUTINE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAGMENT_SUBROUTINE_UNIFORM [

	<generated>
	^ GL_FRAGMENT_SUBROUTINE_UNIFORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAGMENT_TEXTURE [

	<generated>
	^ GL_FRAGMENT_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER [

	<generated>
	^ GL_FRAMEBUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_BLUE_SIZE [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_GREEN_SIZE [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_LAYERED [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_LAYERED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_OBJECT_NAME [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_RED_SIZE [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_BARRIER_BIT [

	<generated>
	^ GL_FRAMEBUFFER_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_BINDING [

	<generated>
	^ GL_FRAMEBUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_BLEND [

	<generated>
	^ GL_FRAMEBUFFER_BLEND
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_COMPLETE [

	<generated>
	^ GL_FRAMEBUFFER_COMPLETE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_DEFAULT [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_DEFAULT_HEIGHT [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_HEIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_DEFAULT_LAYERS [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_LAYERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_DEFAULT_SAMPLES [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_SAMPLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_DEFAULT_WIDTH [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_WIDTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_INCOMPLETE_ATTACHMENT [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_INCOMPLETE_DIMENSIONS [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_INCOMPLETE_MULTISAMPLE [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_INCOMPLETE_READ_BUFFER [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_RENDERABLE [

	<generated>
	^ GL_FRAMEBUFFER_RENDERABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_RENDERABLE_LAYERED [

	<generated>
	^ GL_FRAMEBUFFER_RENDERABLE_LAYERED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_SRGB [

	<generated>
	^ GL_FRAMEBUFFER_SRGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_UNDEFINED [

	<generated>
	^ GL_FRAMEBUFFER_UNDEFINED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRAMEBUFFER_UNSUPPORTED [

	<generated>
	^ GL_FRAMEBUFFER_UNSUPPORTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRONT [

	<generated>
	^ GL_FRONT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRONT_AND_BACK [

	<generated>
	^ GL_FRONT_AND_BACK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRONT_FACE [

	<generated>
	^ GL_FRONT_FACE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRONT_LEFT [

	<generated>
	^ GL_FRONT_LEFT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FRONT_RIGHT [

	<generated>
	^ GL_FRONT_RIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FULL_SUPPORT [

	<generated>
	^ GL_FULL_SUPPORT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FUNC_ADD [

	<generated>
	^ GL_FUNC_ADD
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FUNC_REVERSE_SUBTRACT [

	<generated>
	^ GL_FUNC_REVERSE_SUBTRACT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> FUNC_SUBTRACT [

	<generated>
	^ GL_FUNC_SUBTRACT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GENERATE_MIPMAP [

	<generated>
	^ GL_GENERATE_MIPMAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GENERATE_MIPMAP_HINT [

	<generated>
	^ GL_GENERATE_MIPMAP_HINT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GEOMETRY_INPUT_TYPE [

	<generated>
	^ GL_GEOMETRY_INPUT_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GEOMETRY_OUTPUT_TYPE [

	<generated>
	^ GL_GEOMETRY_OUTPUT_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GEOMETRY_SHADER [

	<generated>
	^ GL_GEOMETRY_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GEOMETRY_SHADER_BIT [

	<generated>
	^ GL_GEOMETRY_SHADER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GEOMETRY_SHADER_INVOCATIONS [

	<generated>
	^ GL_GEOMETRY_SHADER_INVOCATIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GEOMETRY_SHADER_PRIMITIVES_EMITTED [

	<generated>
	^ GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GEOMETRY_SUBROUTINE [

	<generated>
	^ GL_GEOMETRY_SUBROUTINE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GEOMETRY_SUBROUTINE_UNIFORM [

	<generated>
	^ GL_GEOMETRY_SUBROUTINE_UNIFORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GEOMETRY_TEXTURE [

	<generated>
	^ GL_GEOMETRY_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GEOMETRY_VERTICES_OUT [

	<generated>
	^ GL_GEOMETRY_VERTICES_OUT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GEQUAL [

	<generated>
	^ GL_GEQUAL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GET_TEXTURE_IMAGE_FORMAT [

	<generated>
	^ GL_GET_TEXTURE_IMAGE_FORMAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GET_TEXTURE_IMAGE_TYPE [

	<generated>
	^ GL_GET_TEXTURE_IMAGE_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GL_2D [

	<generated>
	^ GL_2D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GL_2_BYTES [

	<generated>
	^ GL_2_BYTES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GL_3D [

	<generated>
	^ GL_3D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GL_3D_COLOR [

	<generated>
	^ GL_3D_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GL_3D_COLOR_TEXTURE [

	<generated>
	^ GL_3D_COLOR_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GL_3_BYTES [

	<generated>
	^ GL_3_BYTES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GL_4D_COLOR_TEXTURE [

	<generated>
	^ GL_4D_COLOR_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GL_4_BYTES [

	<generated>
	^ GL_4_BYTES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GREATER [

	<generated>
	^ GL_GREATER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GREEN [

	<generated>
	^ GL_GREEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GREEN_BIAS [

	<generated>
	^ GL_GREEN_BIAS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GREEN_BITS [

	<generated>
	^ GL_GREEN_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GREEN_INTEGER [

	<generated>
	^ GL_GREEN_INTEGER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GREEN_SCALE [

	<generated>
	^ GL_GREEN_SCALE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> GUILTY_CONTEXT_RESET [

	<generated>
	^ GL_GUILTY_CONTEXT_RESET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> HALF_FLOAT [

	<generated>
	^ GL_HALF_FLOAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> HARDLIGHT [

	<generated>
	^ GL_HARDLIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> HIGH_FLOAT [

	<generated>
	^ GL_HIGH_FLOAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> HIGH_INT [

	<generated>
	^ GL_HIGH_INT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> HINT_BIT [

	<generated>
	^ GL_HINT_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> HISTOGRAM [

	<generated>
	^ GL_HISTOGRAM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> HSL_COLOR [

	<generated>
	^ GL_HSL_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> HSL_HUE [

	<generated>
	^ GL_HSL_HUE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> HSL_LUMINOSITY [

	<generated>
	^ GL_HSL_LUMINOSITY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> HSL_SATURATION [

	<generated>
	^ GL_HSL_SATURATION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_1D [

	<generated>
	^ GL_IMAGE_1D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_1D_ARRAY [

	<generated>
	^ GL_IMAGE_1D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_2D [

	<generated>
	^ GL_IMAGE_2D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_2D_ARRAY [

	<generated>
	^ GL_IMAGE_2D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_2D_MULTISAMPLE [

	<generated>
	^ GL_IMAGE_2D_MULTISAMPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_IMAGE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_2D_RECT [

	<generated>
	^ GL_IMAGE_2D_RECT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_3D [

	<generated>
	^ GL_IMAGE_3D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_BINDING_ACCESS [

	<generated>
	^ GL_IMAGE_BINDING_ACCESS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_BINDING_FORMAT [

	<generated>
	^ GL_IMAGE_BINDING_FORMAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_BINDING_LAYER [

	<generated>
	^ GL_IMAGE_BINDING_LAYER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_BINDING_LAYERED [

	<generated>
	^ GL_IMAGE_BINDING_LAYERED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_BINDING_LEVEL [

	<generated>
	^ GL_IMAGE_BINDING_LEVEL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_BINDING_NAME [

	<generated>
	^ GL_IMAGE_BINDING_NAME
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_BUFFER [

	<generated>
	^ GL_IMAGE_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CLASS_10_10_10_2 [

	<generated>
	^ GL_IMAGE_CLASS_10_10_10_2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CLASS_11_11_10 [

	<generated>
	^ GL_IMAGE_CLASS_11_11_10
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CLASS_1_X_16 [

	<generated>
	^ GL_IMAGE_CLASS_1_X_16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CLASS_1_X_32 [

	<generated>
	^ GL_IMAGE_CLASS_1_X_32
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CLASS_1_X_8 [

	<generated>
	^ GL_IMAGE_CLASS_1_X_8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CLASS_2_X_16 [

	<generated>
	^ GL_IMAGE_CLASS_2_X_16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CLASS_2_X_32 [

	<generated>
	^ GL_IMAGE_CLASS_2_X_32
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CLASS_2_X_8 [

	<generated>
	^ GL_IMAGE_CLASS_2_X_8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CLASS_4_X_16 [

	<generated>
	^ GL_IMAGE_CLASS_4_X_16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CLASS_4_X_32 [

	<generated>
	^ GL_IMAGE_CLASS_4_X_32
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CLASS_4_X_8 [

	<generated>
	^ GL_IMAGE_CLASS_4_X_8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_COMPATIBILITY_CLASS [

	<generated>
	^ GL_IMAGE_COMPATIBILITY_CLASS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CUBE [

	<generated>
	^ GL_IMAGE_CUBE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_FORMAT_COMPATIBILITY_BY_CLASS [

	<generated>
	^ GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_FORMAT_COMPATIBILITY_BY_SIZE [

	<generated>
	^ GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_FORMAT_COMPATIBILITY_TYPE [

	<generated>
	^ GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_PIXEL_FORMAT [

	<generated>
	^ GL_IMAGE_PIXEL_FORMAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_PIXEL_TYPE [

	<generated>
	^ GL_IMAGE_PIXEL_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMAGE_TEXEL_SIZE [

	<generated>
	^ GL_IMAGE_TEXEL_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMPLEMENTATION_COLOR_READ_FORMAT [

	<generated>
	^ GL_IMPLEMENTATION_COLOR_READ_FORMAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IMPLEMENTATION_COLOR_READ_TYPE [

	<generated>
	^ GL_IMPLEMENTATION_COLOR_READ_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INCR [

	<generated>
	^ GL_INCR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INCR_WRAP [

	<generated>
	^ GL_INCR_WRAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX [

	<generated>
	^ GL_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX_ARRAY [

	<generated>
	^ GL_INDEX_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_INDEX_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX_ARRAY_POINTER [

	<generated>
	^ GL_INDEX_ARRAY_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX_ARRAY_STRIDE [

	<generated>
	^ GL_INDEX_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX_ARRAY_TYPE [

	<generated>
	^ GL_INDEX_ARRAY_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX_BITS [

	<generated>
	^ GL_INDEX_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX_CLEAR_VALUE [

	<generated>
	^ GL_INDEX_CLEAR_VALUE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX_LOGIC_OP [

	<generated>
	^ GL_INDEX_LOGIC_OP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX_MODE [

	<generated>
	^ GL_INDEX_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX_OFFSET [

	<generated>
	^ GL_INDEX_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX_SHIFT [

	<generated>
	^ GL_INDEX_SHIFT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INDEX_WRITEMASK [

	<generated>
	^ GL_INDEX_WRITEMASK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INFO_LOG_LENGTH [

	<generated>
	^ GL_INFO_LOG_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INNOCENT_CONTEXT_RESET [

	<generated>
	^ GL_INNOCENT_CONTEXT_RESET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT [

	<generated>
	^ GL_INT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTENSITY [

	<generated>
	^ GL_INTENSITY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTENSITY12 [

	<generated>
	^ GL_INTENSITY12
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTENSITY16 [

	<generated>
	^ GL_INTENSITY16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTENSITY4 [

	<generated>
	^ GL_INTENSITY4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTENSITY8 [

	<generated>
	^ GL_INTENSITY8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERLEAVED_ATTRIBS [

	<generated>
	^ GL_INTERLEAVED_ATTRIBS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_ALPHA_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_ALPHA_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_ALPHA_TYPE [

	<generated>
	^ GL_INTERNALFORMAT_ALPHA_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_BLUE_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_BLUE_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_BLUE_TYPE [

	<generated>
	^ GL_INTERNALFORMAT_BLUE_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_DEPTH_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_DEPTH_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_DEPTH_TYPE [

	<generated>
	^ GL_INTERNALFORMAT_DEPTH_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_GREEN_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_GREEN_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_GREEN_TYPE [

	<generated>
	^ GL_INTERNALFORMAT_GREEN_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_PREFERRED [

	<generated>
	^ GL_INTERNALFORMAT_PREFERRED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_RED_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_RED_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_RED_TYPE [

	<generated>
	^ GL_INTERNALFORMAT_RED_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_SHARED_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_SHARED_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_STENCIL_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_STENCIL_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_STENCIL_TYPE [

	<generated>
	^ GL_INTERNALFORMAT_STENCIL_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERNALFORMAT_SUPPORTED [

	<generated>
	^ GL_INTERNALFORMAT_SUPPORTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INTERPOLATE [

	<generated>
	^ GL_INTERPOLATE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_2_10_10_10_REV [

	<generated>
	^ GL_INT_2_10_10_10_REV
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_IMAGE_1D [

	<generated>
	^ GL_INT_IMAGE_1D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_IMAGE_1D_ARRAY [

	<generated>
	^ GL_INT_IMAGE_1D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_IMAGE_2D [

	<generated>
	^ GL_INT_IMAGE_2D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_IMAGE_2D_ARRAY [

	<generated>
	^ GL_INT_IMAGE_2D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_IMAGE_2D_MULTISAMPLE [

	<generated>
	^ GL_INT_IMAGE_2D_MULTISAMPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_IMAGE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_IMAGE_2D_RECT [

	<generated>
	^ GL_INT_IMAGE_2D_RECT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_IMAGE_3D [

	<generated>
	^ GL_INT_IMAGE_3D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_IMAGE_BUFFER [

	<generated>
	^ GL_INT_IMAGE_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_IMAGE_CUBE [

	<generated>
	^ GL_INT_IMAGE_CUBE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_IMAGE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_INT_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_SAMPLER_1D [

	<generated>
	^ GL_INT_SAMPLER_1D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_SAMPLER_1D_ARRAY [

	<generated>
	^ GL_INT_SAMPLER_1D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_SAMPLER_2D [

	<generated>
	^ GL_INT_SAMPLER_2D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_SAMPLER_2D_ARRAY [

	<generated>
	^ GL_INT_SAMPLER_2D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_INT_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_SAMPLER_2D_RECT [

	<generated>
	^ GL_INT_SAMPLER_2D_RECT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_SAMPLER_3D [

	<generated>
	^ GL_INT_SAMPLER_3D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_SAMPLER_BUFFER [

	<generated>
	^ GL_INT_SAMPLER_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_SAMPLER_CUBE [

	<generated>
	^ GL_INT_SAMPLER_CUBE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_SAMPLER_CUBE_MAP_ARRAY [

	<generated>
	^ GL_INT_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_VEC2 [

	<generated>
	^ GL_INT_VEC2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_VEC3 [

	<generated>
	^ GL_INT_VEC3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INT_VEC4 [

	<generated>
	^ GL_INT_VEC4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INVALID_ENUM [

	<generated>
	^ GL_INVALID_ENUM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INVALID_FRAMEBUFFER_OPERATION [

	<generated>
	^ GL_INVALID_FRAMEBUFFER_OPERATION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INVALID_INDEX [

	<generated>
	^ GL_INVALID_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INVALID_OPERATION [

	<generated>
	^ GL_INVALID_OPERATION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INVALID_VALUE [

	<generated>
	^ GL_INVALID_VALUE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> INVERT [

	<generated>
	^ GL_INVERT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ISOLINES [

	<generated>
	^ GL_ISOLINES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IS_PER_PATCH [

	<generated>
	^ GL_IS_PER_PATCH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> IS_ROW_MAJOR [

	<generated>
	^ GL_IS_ROW_MAJOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> KEEP [

	<generated>
	^ GL_KEEP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LAST_VERTEX_CONVENTION [

	<generated>
	^ GL_LAST_VERTEX_CONVENTION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LAYER_PROVOKING_VERTEX [

	<generated>
	^ GL_LAYER_PROVOKING_VERTEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LEFT [

	<generated>
	^ GL_LEFT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LEQUAL [

	<generated>
	^ GL_LEQUAL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LESS [

	<generated>
	^ GL_LESS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHT0 [

	<generated>
	^ GL_LIGHT0
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHT1 [

	<generated>
	^ GL_LIGHT1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHT2 [

	<generated>
	^ GL_LIGHT2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHT3 [

	<generated>
	^ GL_LIGHT3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHT4 [

	<generated>
	^ GL_LIGHT4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHT5 [

	<generated>
	^ GL_LIGHT5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHT6 [

	<generated>
	^ GL_LIGHT6
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHT7 [

	<generated>
	^ GL_LIGHT7
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHTEN [

	<generated>
	^ GL_LIGHTEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHTING [

	<generated>
	^ GL_LIGHTING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHTING_BIT [

	<generated>
	^ GL_LIGHTING_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHT_MODEL_AMBIENT [

	<generated>
	^ GL_LIGHT_MODEL_AMBIENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHT_MODEL_COLOR_CONTROL [

	<generated>
	^ GL_LIGHT_MODEL_COLOR_CONTROL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHT_MODEL_LOCAL_VIEWER [

	<generated>
	^ GL_LIGHT_MODEL_LOCAL_VIEWER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIGHT_MODEL_TWO_SIDE [

	<generated>
	^ GL_LIGHT_MODEL_TWO_SIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE [

	<generated>
	^ GL_LINE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINEAR [

	<generated>
	^ GL_LINEAR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINEAR_ATTENUATION [

	<generated>
	^ GL_LINEAR_ATTENUATION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINEAR_MIPMAP_LINEAR [

	<generated>
	^ GL_LINEAR_MIPMAP_LINEAR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINEAR_MIPMAP_NEAREST [

	<generated>
	^ GL_LINEAR_MIPMAP_NEAREST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINES [

	<generated>
	^ GL_LINES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINES_ADJACENCY [

	<generated>
	^ GL_LINES_ADJACENCY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_BIT [

	<generated>
	^ GL_LINE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_LOOP [

	<generated>
	^ GL_LINE_LOOP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_RESET_TOKEN [

	<generated>
	^ GL_LINE_RESET_TOKEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_SMOOTH [

	<generated>
	^ GL_LINE_SMOOTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_SMOOTH_HINT [

	<generated>
	^ GL_LINE_SMOOTH_HINT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_STIPPLE [

	<generated>
	^ GL_LINE_STIPPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_STIPPLE_PATTERN [

	<generated>
	^ GL_LINE_STIPPLE_PATTERN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_STIPPLE_REPEAT [

	<generated>
	^ GL_LINE_STIPPLE_REPEAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_STRIP [

	<generated>
	^ GL_LINE_STRIP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_STRIP_ADJACENCY [

	<generated>
	^ GL_LINE_STRIP_ADJACENCY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_TOKEN [

	<generated>
	^ GL_LINE_TOKEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_WIDTH [

	<generated>
	^ GL_LINE_WIDTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_WIDTH_GRANULARITY [

	<generated>
	^ GL_LINE_WIDTH_GRANULARITY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINE_WIDTH_RANGE [

	<generated>
	^ GL_LINE_WIDTH_RANGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LINK_STATUS [

	<generated>
	^ GL_LINK_STATUS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIST_BASE [

	<generated>
	^ GL_LIST_BASE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIST_BIT [

	<generated>
	^ GL_LIST_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIST_INDEX [

	<generated>
	^ GL_LIST_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LIST_MODE [

	<generated>
	^ GL_LIST_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LOAD [

	<generated>
	^ GL_LOAD
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LOCATION [

	<generated>
	^ GL_LOCATION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LOCATION_COMPONENT [

	<generated>
	^ GL_LOCATION_COMPONENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LOCATION_INDEX [

	<generated>
	^ GL_LOCATION_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LOGIC_OP [

	<generated>
	^ GL_LOGIC_OP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LOGIC_OP_MODE [

	<generated>
	^ GL_LOGIC_OP_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LOSE_CONTEXT_ON_RESET [

	<generated>
	^ GL_LOSE_CONTEXT_ON_RESET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LOWER_LEFT [

	<generated>
	^ GL_LOWER_LEFT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LOW_FLOAT [

	<generated>
	^ GL_LOW_FLOAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LOW_INT [

	<generated>
	^ GL_LOW_INT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LUMINANCE [

	<generated>
	^ GL_LUMINANCE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LUMINANCE12 [

	<generated>
	^ GL_LUMINANCE12
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LUMINANCE12_ALPHA12 [

	<generated>
	^ GL_LUMINANCE12_ALPHA12
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LUMINANCE12_ALPHA4 [

	<generated>
	^ GL_LUMINANCE12_ALPHA4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LUMINANCE16 [

	<generated>
	^ GL_LUMINANCE16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LUMINANCE16_ALPHA16 [

	<generated>
	^ GL_LUMINANCE16_ALPHA16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LUMINANCE4 [

	<generated>
	^ GL_LUMINANCE4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LUMINANCE4_ALPHA4 [

	<generated>
	^ GL_LUMINANCE4_ALPHA4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LUMINANCE6_ALPHA2 [

	<generated>
	^ GL_LUMINANCE6_ALPHA2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LUMINANCE8 [

	<generated>
	^ GL_LUMINANCE8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LUMINANCE8_ALPHA8 [

	<generated>
	^ GL_LUMINANCE8_ALPHA8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> LUMINANCE_ALPHA [

	<generated>
	^ GL_LUMINANCE_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAJOR_VERSION [

	<generated>
	^ GL_MAJOR_VERSION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MANUAL_GENERATE_MIPMAP [

	<generated>
	^ GL_MANUAL_GENERATE_MIPMAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP1_COLOR_4 [

	<generated>
	^ GL_MAP1_COLOR_4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP1_GRID_DOMAIN [

	<generated>
	^ GL_MAP1_GRID_DOMAIN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP1_GRID_SEGMENTS [

	<generated>
	^ GL_MAP1_GRID_SEGMENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP1_INDEX [

	<generated>
	^ GL_MAP1_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP1_NORMAL [

	<generated>
	^ GL_MAP1_NORMAL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP1_TEXTURE_COORD_1 [

	<generated>
	^ GL_MAP1_TEXTURE_COORD_1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP1_TEXTURE_COORD_2 [

	<generated>
	^ GL_MAP1_TEXTURE_COORD_2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP1_TEXTURE_COORD_3 [

	<generated>
	^ GL_MAP1_TEXTURE_COORD_3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP1_TEXTURE_COORD_4 [

	<generated>
	^ GL_MAP1_TEXTURE_COORD_4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP1_VERTEX_3 [

	<generated>
	^ GL_MAP1_VERTEX_3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP1_VERTEX_4 [

	<generated>
	^ GL_MAP1_VERTEX_4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP2_COLOR_4 [

	<generated>
	^ GL_MAP2_COLOR_4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP2_GRID_DOMAIN [

	<generated>
	^ GL_MAP2_GRID_DOMAIN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP2_GRID_SEGMENTS [

	<generated>
	^ GL_MAP2_GRID_SEGMENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP2_INDEX [

	<generated>
	^ GL_MAP2_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP2_NORMAL [

	<generated>
	^ GL_MAP2_NORMAL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP2_TEXTURE_COORD_1 [

	<generated>
	^ GL_MAP2_TEXTURE_COORD_1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP2_TEXTURE_COORD_2 [

	<generated>
	^ GL_MAP2_TEXTURE_COORD_2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP2_TEXTURE_COORD_3 [

	<generated>
	^ GL_MAP2_TEXTURE_COORD_3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP2_TEXTURE_COORD_4 [

	<generated>
	^ GL_MAP2_TEXTURE_COORD_4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP2_VERTEX_3 [

	<generated>
	^ GL_MAP2_VERTEX_3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP2_VERTEX_4 [

	<generated>
	^ GL_MAP2_VERTEX_4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP_COHERENT_BIT [

	<generated>
	^ GL_MAP_COHERENT_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP_COLOR [

	<generated>
	^ GL_MAP_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP_FLUSH_EXPLICIT_BIT [

	<generated>
	^ GL_MAP_FLUSH_EXPLICIT_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP_INVALIDATE_BUFFER_BIT [

	<generated>
	^ GL_MAP_INVALIDATE_BUFFER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP_INVALIDATE_RANGE_BIT [

	<generated>
	^ GL_MAP_INVALIDATE_RANGE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP_PERSISTENT_BIT [

	<generated>
	^ GL_MAP_PERSISTENT_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP_READ_BIT [

	<generated>
	^ GL_MAP_READ_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP_STENCIL [

	<generated>
	^ GL_MAP_STENCIL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP_UNSYNCHRONIZED_BIT [

	<generated>
	^ GL_MAP_UNSYNCHRONIZED_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAP_WRITE_BIT [

	<generated>
	^ GL_MAP_WRITE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MATRIX_MODE [

	<generated>
	^ GL_MATRIX_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MATRIX_STRIDE [

	<generated>
	^ GL_MATRIX_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX [

	<generated>
	^ GL_MAX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_3D_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_3D_TEXTURE_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_ARRAY_TEXTURE_LAYERS [

	<generated>
	^ GL_MAX_ARRAY_TEXTURE_LAYERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_ATOMIC_COUNTER_BUFFER_BINDINGS [

	<generated>
	^ GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_ATOMIC_COUNTER_BUFFER_SIZE [

	<generated>
	^ GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_ATTRIB_STACK_DEPTH [

	<generated>
	^ GL_MAX_ATTRIB_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_CLIENT_ATTRIB_STACK_DEPTH [

	<generated>
	^ GL_MAX_CLIENT_ATTRIB_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_CLIP_DISTANCES [

	<generated>
	^ GL_MAX_CLIP_DISTANCES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_CLIP_PLANES [

	<generated>
	^ GL_MAX_CLIP_PLANES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COLOR_ATTACHMENTS [

	<generated>
	^ GL_MAX_COLOR_ATTACHMENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COLOR_TEXTURE_SAMPLES [

	<generated>
	^ GL_MAX_COLOR_TEXTURE_SAMPLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_COMBINED_ATOMIC_COUNTERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_CLIP_AND_CULL_DISTANCES [

	<generated>
	^ GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_DIMENSIONS [

	<generated>
	^ GL_MAX_COMBINED_DIMENSIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_COMBINED_IMAGE_UNIFORMS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS [

	<generated>
	^ GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_SHADER_OUTPUT_RESOURCES [

	<generated>
	^ GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_COMBINED_UNIFORM_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMPUTE_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_COMPUTE_ATOMIC_COUNTERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMPUTE_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_COMPUTE_IMAGE_UNIFORMS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMPUTE_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMPUTE_SHARED_MEMORY_SIZE [

	<generated>
	^ GL_MAX_COMPUTE_SHARED_MEMORY_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMPUTE_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMPUTE_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_COMPUTE_UNIFORM_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMPUTE_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMPUTE_UNIFORM_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMPUTE_WORK_GROUP_COUNT [

	<generated>
	^ GL_MAX_COMPUTE_WORK_GROUP_COUNT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMPUTE_WORK_GROUP_INVOCATIONS [

	<generated>
	^ GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_COMPUTE_WORK_GROUP_SIZE [

	<generated>
	^ GL_MAX_COMPUTE_WORK_GROUP_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_CUBE_MAP_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_CUBE_MAP_TEXTURE_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_CULL_DISTANCES [

	<generated>
	^ GL_MAX_CULL_DISTANCES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_DEBUG_GROUP_STACK_DEPTH [

	<generated>
	^ GL_MAX_DEBUG_GROUP_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_DEBUG_LOGGED_MESSAGES [

	<generated>
	^ GL_MAX_DEBUG_LOGGED_MESSAGES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_DEBUG_MESSAGE_LENGTH [

	<generated>
	^ GL_MAX_DEBUG_MESSAGE_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_DEPTH [

	<generated>
	^ GL_MAX_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_DEPTH_TEXTURE_SAMPLES [

	<generated>
	^ GL_MAX_DEPTH_TEXTURE_SAMPLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_DRAW_BUFFERS [

	<generated>
	^ GL_MAX_DRAW_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_DUAL_SOURCE_DRAW_BUFFERS [

	<generated>
	^ GL_MAX_DUAL_SOURCE_DRAW_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_ELEMENTS_INDICES [

	<generated>
	^ GL_MAX_ELEMENTS_INDICES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_ELEMENTS_VERTICES [

	<generated>
	^ GL_MAX_ELEMENTS_VERTICES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_ELEMENT_INDEX [

	<generated>
	^ GL_MAX_ELEMENT_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_EVAL_ORDER [

	<generated>
	^ GL_MAX_EVAL_ORDER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAGMENT_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_FRAGMENT_ATOMIC_COUNTERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAGMENT_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_FRAGMENT_IMAGE_UNIFORMS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAGMENT_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_FRAGMENT_INPUT_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAGMENT_INTERPOLATION_OFFSET [

	<generated>
	^ GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAGMENT_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAGMENT_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_FRAGMENT_UNIFORM_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAGMENT_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_FRAGMENT_UNIFORM_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAGMENT_UNIFORM_VECTORS [

	<generated>
	^ GL_MAX_FRAGMENT_UNIFORM_VECTORS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAMEBUFFER_HEIGHT [

	<generated>
	^ GL_MAX_FRAMEBUFFER_HEIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAMEBUFFER_LAYERS [

	<generated>
	^ GL_MAX_FRAMEBUFFER_LAYERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAMEBUFFER_SAMPLES [

	<generated>
	^ GL_MAX_FRAMEBUFFER_SAMPLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_FRAMEBUFFER_WIDTH [

	<generated>
	^ GL_MAX_FRAMEBUFFER_WIDTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_GEOMETRY_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_GEOMETRY_ATOMIC_COUNTERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_GEOMETRY_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_GEOMETRY_IMAGE_UNIFORMS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_GEOMETRY_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_INPUT_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_GEOMETRY_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_GEOMETRY_OUTPUT_VERTICES [

	<generated>
	^ GL_MAX_GEOMETRY_OUTPUT_VERTICES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_GEOMETRY_SHADER_INVOCATIONS [

	<generated>
	^ GL_MAX_GEOMETRY_SHADER_INVOCATIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_GEOMETRY_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_GEOMETRY_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_GEOMETRY_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_GEOMETRY_UNIFORM_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_GEOMETRY_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_HEIGHT [

	<generated>
	^ GL_MAX_HEIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_IMAGE_SAMPLES [

	<generated>
	^ GL_MAX_IMAGE_SAMPLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_IMAGE_UNITS [

	<generated>
	^ GL_MAX_IMAGE_UNITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_INTEGER_SAMPLES [

	<generated>
	^ GL_MAX_INTEGER_SAMPLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_LABEL_LENGTH [

	<generated>
	^ GL_MAX_LABEL_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_LAYERS [

	<generated>
	^ GL_MAX_LAYERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_LIGHTS [

	<generated>
	^ GL_MAX_LIGHTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_LIST_NESTING [

	<generated>
	^ GL_MAX_LIST_NESTING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_MODELVIEW_STACK_DEPTH [

	<generated>
	^ GL_MAX_MODELVIEW_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_NAME_LENGTH [

	<generated>
	^ GL_MAX_NAME_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_NAME_STACK_DEPTH [

	<generated>
	^ GL_MAX_NAME_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_NUM_ACTIVE_VARIABLES [

	<generated>
	^ GL_MAX_NUM_ACTIVE_VARIABLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_NUM_COMPATIBLE_SUBROUTINES [

	<generated>
	^ GL_MAX_NUM_COMPATIBLE_SUBROUTINES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_PATCH_VERTICES [

	<generated>
	^ GL_MAX_PATCH_VERTICES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_PIXEL_MAP_TABLE [

	<generated>
	^ GL_MAX_PIXEL_MAP_TABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_PROGRAM_TEXEL_OFFSET [

	<generated>
	^ GL_MAX_PROGRAM_TEXEL_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_PROGRAM_TEXTURE_GATHER_OFFSET [

	<generated>
	^ GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_PROJECTION_STACK_DEPTH [

	<generated>
	^ GL_MAX_PROJECTION_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_RECTANGLE_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_RECTANGLE_TEXTURE_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_RENDERBUFFER_SIZE [

	<generated>
	^ GL_MAX_RENDERBUFFER_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_SAMPLES [

	<generated>
	^ GL_MAX_SAMPLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_SAMPLE_MASK_WORDS [

	<generated>
	^ GL_MAX_SAMPLE_MASK_WORDS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_SERVER_WAIT_TIMEOUT [

	<generated>
	^ GL_MAX_SERVER_WAIT_TIMEOUT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_SHADER_STORAGE_BLOCK_SIZE [

	<generated>
	^ GL_MAX_SHADER_STORAGE_BLOCK_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_SHADER_STORAGE_BUFFER_BINDINGS [

	<generated>
	^ GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_SUBROUTINES [

	<generated>
	^ GL_MAX_SUBROUTINES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_SUBROUTINE_UNIFORM_LOCATIONS [

	<generated>
	^ GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_CONTROL_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_CONTROL_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_CONTROL_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_CONTROL_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_CONTROL_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_CONTROL_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_EVALUATION_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_EVALUATION_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_EVALUATION_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_EVALUATION_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_EVALUATION_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_EVALUATION_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_GEN_LEVEL [

	<generated>
	^ GL_MAX_TESS_GEN_LEVEL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TESS_PATCH_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_PATCH_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TEXTURE_BUFFER_SIZE [

	<generated>
	^ GL_MAX_TEXTURE_BUFFER_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TEXTURE_COORDS [

	<generated>
	^ GL_MAX_TEXTURE_COORDS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_TEXTURE_IMAGE_UNITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TEXTURE_LOD_BIAS [

	<generated>
	^ GL_MAX_TEXTURE_LOD_BIAS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TEXTURE_MAX_ANISOTROPY [

	<generated>
	^ GL_MAX_TEXTURE_MAX_ANISOTROPY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_TEXTURE_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TEXTURE_STACK_DEPTH [

	<generated>
	^ GL_MAX_TEXTURE_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TEXTURE_UNITS [

	<generated>
	^ GL_MAX_TEXTURE_UNITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TRANSFORM_FEEDBACK_BUFFERS [

	<generated>
	^ GL_MAX_TRANSFORM_FEEDBACK_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS [

	<generated>
	^ GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS [

	<generated>
	^ GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS [

	<generated>
	^ GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_UNIFORM_BLOCK_SIZE [

	<generated>
	^ GL_MAX_UNIFORM_BLOCK_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_UNIFORM_BUFFER_BINDINGS [

	<generated>
	^ GL_MAX_UNIFORM_BUFFER_BINDINGS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_UNIFORM_LOCATIONS [

	<generated>
	^ GL_MAX_UNIFORM_LOCATIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VARYING_COMPONENTS [

	<generated>
	^ GL_MAX_VARYING_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VARYING_FLOATS [

	<generated>
	^ GL_MAX_VARYING_FLOATS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VARYING_VECTORS [

	<generated>
	^ GL_MAX_VARYING_VECTORS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_VERTEX_ATOMIC_COUNTERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_ATTRIBS [

	<generated>
	^ GL_MAX_VERTEX_ATTRIBS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_ATTRIB_BINDINGS [

	<generated>
	^ GL_MAX_VERTEX_ATTRIB_BINDINGS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_ATTRIB_RELATIVE_OFFSET [

	<generated>
	^ GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_ATTRIB_STRIDE [

	<generated>
	^ GL_MAX_VERTEX_ATTRIB_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_VERTEX_IMAGE_UNIFORMS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_VERTEX_OUTPUT_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_STREAMS [

	<generated>
	^ GL_MAX_VERTEX_STREAMS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_VERTEX_UNIFORM_BLOCKS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_VERTEX_UNIFORM_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VERTEX_UNIFORM_VECTORS [

	<generated>
	^ GL_MAX_VERTEX_UNIFORM_VECTORS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VIEWPORTS [

	<generated>
	^ GL_MAX_VIEWPORTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_VIEWPORT_DIMS [

	<generated>
	^ GL_MAX_VIEWPORT_DIMS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MAX_WIDTH [

	<generated>
	^ GL_MAX_WIDTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MEDIUM_FLOAT [

	<generated>
	^ GL_MEDIUM_FLOAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MEDIUM_INT [

	<generated>
	^ GL_MEDIUM_INT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MIN [

	<generated>
	^ GL_MIN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MINMAX [

	<generated>
	^ GL_MINMAX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MINOR_VERSION [

	<generated>
	^ GL_MINOR_VERSION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MIN_FRAGMENT_INTERPOLATION_OFFSET [

	<generated>
	^ GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MIN_MAP_BUFFER_ALIGNMENT [

	<generated>
	^ GL_MIN_MAP_BUFFER_ALIGNMENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MIN_PROGRAM_TEXEL_OFFSET [

	<generated>
	^ GL_MIN_PROGRAM_TEXEL_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MIN_PROGRAM_TEXTURE_GATHER_OFFSET [

	<generated>
	^ GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MIN_SAMPLE_SHADING_VALUE [

	<generated>
	^ GL_MIN_SAMPLE_SHADING_VALUE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MIPMAP [

	<generated>
	^ GL_MIPMAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MIRRORED_REPEAT [

	<generated>
	^ GL_MIRRORED_REPEAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MIRROR_CLAMP_TO_EDGE [

	<generated>
	^ GL_MIRROR_CLAMP_TO_EDGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MODELVIEW [

	<generated>
	^ GL_MODELVIEW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MODELVIEW_MATRIX [

	<generated>
	^ GL_MODELVIEW_MATRIX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MODELVIEW_STACK_DEPTH [

	<generated>
	^ GL_MODELVIEW_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MODULATE [

	<generated>
	^ GL_MODULATE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MULT [

	<generated>
	^ GL_MULT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MULTIPLY [

	<generated>
	^ GL_MULTIPLY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MULTISAMPLE [

	<generated>
	^ GL_MULTISAMPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MULTISAMPLE_BIT [

	<generated>
	^ GL_MULTISAMPLE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MULTISAMPLE_LINE_WIDTH_GRANULARITY [

	<generated>
	^ GL_MULTISAMPLE_LINE_WIDTH_GRANULARITY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> MULTISAMPLE_LINE_WIDTH_RANGE [

	<generated>
	^ GL_MULTISAMPLE_LINE_WIDTH_RANGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> N3F_V3F [

	<generated>
	^ GL_N3F_V3F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NAME_LENGTH [

	<generated>
	^ GL_NAME_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NAME_STACK_DEPTH [

	<generated>
	^ GL_NAME_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NAND [

	<generated>
	^ GL_NAND
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NEAREST [

	<generated>
	^ GL_NEAREST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NEAREST_MIPMAP_LINEAR [

	<generated>
	^ GL_NEAREST_MIPMAP_LINEAR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NEAREST_MIPMAP_NEAREST [

	<generated>
	^ GL_NEAREST_MIPMAP_NEAREST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NEGATIVE_ONE_TO_ONE [

	<generated>
	^ GL_NEGATIVE_ONE_TO_ONE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NEVER [

	<generated>
	^ GL_NEVER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NICEST [

	<generated>
	^ GL_NICEST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NONE [

	<generated>
	^ GL_NONE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NOOP [

	<generated>
	^ GL_NOOP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NOR [

	<generated>
	^ GL_NOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NORMALIZE [

	<generated>
	^ GL_NORMALIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NORMAL_ARRAY [

	<generated>
	^ GL_NORMAL_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NORMAL_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_NORMAL_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NORMAL_ARRAY_POINTER [

	<generated>
	^ GL_NORMAL_ARRAY_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NORMAL_ARRAY_STRIDE [

	<generated>
	^ GL_NORMAL_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NORMAL_ARRAY_TYPE [

	<generated>
	^ GL_NORMAL_ARRAY_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NORMAL_MAP [

	<generated>
	^ GL_NORMAL_MAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NOTEQUAL [

	<generated>
	^ GL_NOTEQUAL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NO_ERROR [

	<generated>
	^ GL_NO_ERROR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NO_RESET_NOTIFICATION [

	<generated>
	^ GL_NO_RESET_NOTIFICATION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NUM_ACTIVE_VARIABLES [

	<generated>
	^ GL_NUM_ACTIVE_VARIABLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NUM_COMPATIBLE_SUBROUTINES [

	<generated>
	^ GL_NUM_COMPATIBLE_SUBROUTINES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NUM_COMPRESSED_TEXTURE_FORMATS [

	<generated>
	^ GL_NUM_COMPRESSED_TEXTURE_FORMATS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NUM_EXTENSIONS [

	<generated>
	^ GL_NUM_EXTENSIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NUM_PROGRAM_BINARY_FORMATS [

	<generated>
	^ GL_NUM_PROGRAM_BINARY_FORMATS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NUM_SAMPLE_COUNTS [

	<generated>
	^ GL_NUM_SAMPLE_COUNTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NUM_SHADER_BINARY_FORMATS [

	<generated>
	^ GL_NUM_SHADER_BINARY_FORMATS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NUM_SHADING_LANGUAGE_VERSIONS [

	<generated>
	^ GL_NUM_SHADING_LANGUAGE_VERSIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> NUM_SPIR_V_EXTENSIONS [

	<generated>
	^ GL_NUM_SPIR_V_EXTENSIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OBJECT_LINEAR [

	<generated>
	^ GL_OBJECT_LINEAR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OBJECT_PLANE [

	<generated>
	^ GL_OBJECT_PLANE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OBJECT_TYPE [

	<generated>
	^ GL_OBJECT_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OFFSET [

	<generated>
	^ GL_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ONE [

	<generated>
	^ GL_ONE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ONE_MINUS_CONSTANT_ALPHA [

	<generated>
	^ GL_ONE_MINUS_CONSTANT_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ONE_MINUS_CONSTANT_COLOR [

	<generated>
	^ GL_ONE_MINUS_CONSTANT_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ONE_MINUS_DST_ALPHA [

	<generated>
	^ GL_ONE_MINUS_DST_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ONE_MINUS_DST_COLOR [

	<generated>
	^ GL_ONE_MINUS_DST_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ONE_MINUS_SRC1_ALPHA [

	<generated>
	^ GL_ONE_MINUS_SRC1_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ONE_MINUS_SRC1_COLOR [

	<generated>
	^ GL_ONE_MINUS_SRC1_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ONE_MINUS_SRC_ALPHA [

	<generated>
	^ GL_ONE_MINUS_SRC_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ONE_MINUS_SRC_COLOR [

	<generated>
	^ GL_ONE_MINUS_SRC_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OPERAND0_ALPHA [

	<generated>
	^ GL_OPERAND0_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OPERAND0_RGB [

	<generated>
	^ GL_OPERAND0_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OPERAND1_ALPHA [

	<generated>
	^ GL_OPERAND1_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OPERAND1_RGB [

	<generated>
	^ GL_OPERAND1_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OPERAND2_ALPHA [

	<generated>
	^ GL_OPERAND2_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OPERAND2_RGB [

	<generated>
	^ GL_OPERAND2_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OR [

	<generated>
	^ GL_OR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ORDER [

	<generated>
	^ GL_ORDER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OR_INVERTED [

	<generated>
	^ GL_OR_INVERTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OR_REVERSE [

	<generated>
	^ GL_OR_REVERSE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OUT_OF_MEMORY [

	<generated>
	^ GL_OUT_OF_MEMORY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> OVERLAY [

	<generated>
	^ GL_OVERLAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PACK_ALIGNMENT [

	<generated>
	^ GL_PACK_ALIGNMENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PACK_COMPRESSED_BLOCK_DEPTH [

	<generated>
	^ GL_PACK_COMPRESSED_BLOCK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PACK_COMPRESSED_BLOCK_HEIGHT [

	<generated>
	^ GL_PACK_COMPRESSED_BLOCK_HEIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PACK_COMPRESSED_BLOCK_SIZE [

	<generated>
	^ GL_PACK_COMPRESSED_BLOCK_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PACK_COMPRESSED_BLOCK_WIDTH [

	<generated>
	^ GL_PACK_COMPRESSED_BLOCK_WIDTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PACK_IMAGE_HEIGHT [

	<generated>
	^ GL_PACK_IMAGE_HEIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PACK_LSB_FIRST [

	<generated>
	^ GL_PACK_LSB_FIRST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PACK_ROW_LENGTH [

	<generated>
	^ GL_PACK_ROW_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PACK_SKIP_IMAGES [

	<generated>
	^ GL_PACK_SKIP_IMAGES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PACK_SKIP_PIXELS [

	<generated>
	^ GL_PACK_SKIP_PIXELS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PACK_SKIP_ROWS [

	<generated>
	^ GL_PACK_SKIP_ROWS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PACK_SWAP_BYTES [

	<generated>
	^ GL_PACK_SWAP_BYTES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PARAMETER_BUFFER [

	<generated>
	^ GL_PARAMETER_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PARAMETER_BUFFER_BINDING [

	<generated>
	^ GL_PARAMETER_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PASS_THROUGH_TOKEN [

	<generated>
	^ GL_PASS_THROUGH_TOKEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PATCHES [

	<generated>
	^ GL_PATCHES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PATCH_DEFAULT_INNER_LEVEL [

	<generated>
	^ GL_PATCH_DEFAULT_INNER_LEVEL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PATCH_DEFAULT_OUTER_LEVEL [

	<generated>
	^ GL_PATCH_DEFAULT_OUTER_LEVEL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PATCH_VERTICES [

	<generated>
	^ GL_PATCH_VERTICES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PERSPECTIVE_CORRECTION_HINT [

	<generated>
	^ GL_PERSPECTIVE_CORRECTION_HINT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_BUFFER_BARRIER_BIT [

	<generated>
	^ GL_PIXEL_BUFFER_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_A_TO_A [

	<generated>
	^ GL_PIXEL_MAP_A_TO_A
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_A_TO_A_SIZE [

	<generated>
	^ GL_PIXEL_MAP_A_TO_A_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_B_TO_B [

	<generated>
	^ GL_PIXEL_MAP_B_TO_B
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_B_TO_B_SIZE [

	<generated>
	^ GL_PIXEL_MAP_B_TO_B_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_G_TO_G [

	<generated>
	^ GL_PIXEL_MAP_G_TO_G
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_G_TO_G_SIZE [

	<generated>
	^ GL_PIXEL_MAP_G_TO_G_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_I_TO_A [

	<generated>
	^ GL_PIXEL_MAP_I_TO_A
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_I_TO_A_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_A_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_I_TO_B [

	<generated>
	^ GL_PIXEL_MAP_I_TO_B
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_I_TO_B_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_B_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_I_TO_G [

	<generated>
	^ GL_PIXEL_MAP_I_TO_G
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_I_TO_G_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_G_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_I_TO_I [

	<generated>
	^ GL_PIXEL_MAP_I_TO_I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_I_TO_I_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_I_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_I_TO_R [

	<generated>
	^ GL_PIXEL_MAP_I_TO_R
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_I_TO_R_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_R_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_R_TO_R [

	<generated>
	^ GL_PIXEL_MAP_R_TO_R
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_R_TO_R_SIZE [

	<generated>
	^ GL_PIXEL_MAP_R_TO_R_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_S_TO_S [

	<generated>
	^ GL_PIXEL_MAP_S_TO_S
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MAP_S_TO_S_SIZE [

	<generated>
	^ GL_PIXEL_MAP_S_TO_S_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_MODE_BIT [

	<generated>
	^ GL_PIXEL_MODE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_PACK_BUFFER [

	<generated>
	^ GL_PIXEL_PACK_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_PACK_BUFFER_BINDING [

	<generated>
	^ GL_PIXEL_PACK_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_UNPACK_BUFFER [

	<generated>
	^ GL_PIXEL_UNPACK_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PIXEL_UNPACK_BUFFER_BINDING [

	<generated>
	^ GL_PIXEL_UNPACK_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT [

	<generated>
	^ GL_POINT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINTS [

	<generated>
	^ GL_POINTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_BIT [

	<generated>
	^ GL_POINT_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_DISTANCE_ATTENUATION [

	<generated>
	^ GL_POINT_DISTANCE_ATTENUATION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_FADE_THRESHOLD_SIZE [

	<generated>
	^ GL_POINT_FADE_THRESHOLD_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_SIZE [

	<generated>
	^ GL_POINT_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_SIZE_GRANULARITY [

	<generated>
	^ GL_POINT_SIZE_GRANULARITY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_SIZE_MAX [

	<generated>
	^ GL_POINT_SIZE_MAX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_SIZE_MIN [

	<generated>
	^ GL_POINT_SIZE_MIN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_SIZE_RANGE [

	<generated>
	^ GL_POINT_SIZE_RANGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_SMOOTH [

	<generated>
	^ GL_POINT_SMOOTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_SMOOTH_HINT [

	<generated>
	^ GL_POINT_SMOOTH_HINT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_SPRITE [

	<generated>
	^ GL_POINT_SPRITE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_SPRITE_COORD_ORIGIN [

	<generated>
	^ GL_POINT_SPRITE_COORD_ORIGIN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POINT_TOKEN [

	<generated>
	^ GL_POINT_TOKEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON [

	<generated>
	^ GL_POLYGON
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_BIT [

	<generated>
	^ GL_POLYGON_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_MODE [

	<generated>
	^ GL_POLYGON_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_OFFSET_CLAMP [

	<generated>
	^ GL_POLYGON_OFFSET_CLAMP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_OFFSET_FACTOR [

	<generated>
	^ GL_POLYGON_OFFSET_FACTOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_OFFSET_FILL [

	<generated>
	^ GL_POLYGON_OFFSET_FILL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_OFFSET_LINE [

	<generated>
	^ GL_POLYGON_OFFSET_LINE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_OFFSET_POINT [

	<generated>
	^ GL_POLYGON_OFFSET_POINT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_OFFSET_UNITS [

	<generated>
	^ GL_POLYGON_OFFSET_UNITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_SMOOTH [

	<generated>
	^ GL_POLYGON_SMOOTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_SMOOTH_HINT [

	<generated>
	^ GL_POLYGON_SMOOTH_HINT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_STIPPLE [

	<generated>
	^ GL_POLYGON_STIPPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_STIPPLE_BIT [

	<generated>
	^ GL_POLYGON_STIPPLE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POLYGON_TOKEN [

	<generated>
	^ GL_POLYGON_TOKEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POSITION [

	<generated>
	^ GL_POSITION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POST_COLOR_MATRIX_COLOR_TABLE [

	<generated>
	^ GL_POST_COLOR_MATRIX_COLOR_TABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> POST_CONVOLUTION_COLOR_TABLE [

	<generated>
	^ GL_POST_CONVOLUTION_COLOR_TABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PREVIOUS [

	<generated>
	^ GL_PREVIOUS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PRIMARY_COLOR [

	<generated>
	^ GL_PRIMARY_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PRIMITIVES_GENERATED [

	<generated>
	^ GL_PRIMITIVES_GENERATED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PRIMITIVES_SUBMITTED [

	<generated>
	^ GL_PRIMITIVES_SUBMITTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PRIMITIVE_BOUNDING_BOX [

	<generated>
	^ GL_PRIMITIVE_BOUNDING_BOX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PRIMITIVE_RESTART [

	<generated>
	^ GL_PRIMITIVE_RESTART
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PRIMITIVE_RESTART_FIXED_INDEX [

	<generated>
	^ GL_PRIMITIVE_RESTART_FIXED_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED [

	<generated>
	^ GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PRIMITIVE_RESTART_INDEX [

	<generated>
	^ GL_PRIMITIVE_RESTART_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROGRAM [

	<generated>
	^ GL_PROGRAM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROGRAM_BINARY_FORMATS [

	<generated>
	^ GL_PROGRAM_BINARY_FORMATS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROGRAM_BINARY_LENGTH [

	<generated>
	^ GL_PROGRAM_BINARY_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROGRAM_BINARY_RETRIEVABLE_HINT [

	<generated>
	^ GL_PROGRAM_BINARY_RETRIEVABLE_HINT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROGRAM_INPUT [

	<generated>
	^ GL_PROGRAM_INPUT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROGRAM_OUTPUT [

	<generated>
	^ GL_PROGRAM_OUTPUT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROGRAM_PIPELINE [

	<generated>
	^ GL_PROGRAM_PIPELINE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROGRAM_PIPELINE_BINDING [

	<generated>
	^ GL_PROGRAM_PIPELINE_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROGRAM_POINT_SIZE [

	<generated>
	^ GL_PROGRAM_POINT_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROGRAM_SEPARABLE [

	<generated>
	^ GL_PROGRAM_SEPARABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROJECTION [

	<generated>
	^ GL_PROJECTION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROJECTION_MATRIX [

	<generated>
	^ GL_PROJECTION_MATRIX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROJECTION_STACK_DEPTH [

	<generated>
	^ GL_PROJECTION_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROVOKING_VERTEX [

	<generated>
	^ GL_PROVOKING_VERTEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_COLOR_TABLE [

	<generated>
	^ GL_PROXY_COLOR_TABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_HISTOGRAM [

	<generated>
	^ GL_PROXY_HISTOGRAM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_POST_COLOR_MATRIX_COLOR_TABLE [

	<generated>
	^ GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_POST_CONVOLUTION_COLOR_TABLE [

	<generated>
	^ GL_PROXY_POST_CONVOLUTION_COLOR_TABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_TEXTURE_1D [

	<generated>
	^ GL_PROXY_TEXTURE_1D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_TEXTURE_1D_ARRAY [

	<generated>
	^ GL_PROXY_TEXTURE_1D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_TEXTURE_2D [

	<generated>
	^ GL_PROXY_TEXTURE_2D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_TEXTURE_2D_ARRAY [

	<generated>
	^ GL_PROXY_TEXTURE_2D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_TEXTURE_2D_MULTISAMPLE [

	<generated>
	^ GL_PROXY_TEXTURE_2D_MULTISAMPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_TEXTURE_3D [

	<generated>
	^ GL_PROXY_TEXTURE_3D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_TEXTURE_CUBE_MAP [

	<generated>
	^ GL_PROXY_TEXTURE_CUBE_MAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_TEXTURE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_PROXY_TEXTURE_CUBE_MAP_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> PROXY_TEXTURE_RECTANGLE [

	<generated>
	^ GL_PROXY_TEXTURE_RECTANGLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> Q [

	<generated>
	^ GL_Q
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUADRATIC_ATTENUATION [

	<generated>
	^ GL_QUADRATIC_ATTENUATION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUADS [

	<generated>
	^ GL_QUADS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION [

	<generated>
	^ GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUAD_STRIP [

	<generated>
	^ GL_QUAD_STRIP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY [

	<generated>
	^ GL_QUERY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_BUFFER [

	<generated>
	^ GL_QUERY_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_BUFFER_BARRIER_BIT [

	<generated>
	^ GL_QUERY_BUFFER_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_BUFFER_BINDING [

	<generated>
	^ GL_QUERY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_BY_REGION_NO_WAIT [

	<generated>
	^ GL_QUERY_BY_REGION_NO_WAIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_BY_REGION_NO_WAIT_INVERTED [

	<generated>
	^ GL_QUERY_BY_REGION_NO_WAIT_INVERTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_BY_REGION_WAIT [

	<generated>
	^ GL_QUERY_BY_REGION_WAIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_BY_REGION_WAIT_INVERTED [

	<generated>
	^ GL_QUERY_BY_REGION_WAIT_INVERTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_COUNTER_BITS [

	<generated>
	^ GL_QUERY_COUNTER_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_NO_WAIT [

	<generated>
	^ GL_QUERY_NO_WAIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_NO_WAIT_INVERTED [

	<generated>
	^ GL_QUERY_NO_WAIT_INVERTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_RESULT [

	<generated>
	^ GL_QUERY_RESULT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_RESULT_AVAILABLE [

	<generated>
	^ GL_QUERY_RESULT_AVAILABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_RESULT_NO_WAIT [

	<generated>
	^ GL_QUERY_RESULT_NO_WAIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_TARGET [

	<generated>
	^ GL_QUERY_TARGET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_WAIT [

	<generated>
	^ GL_QUERY_WAIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> QUERY_WAIT_INVERTED [

	<generated>
	^ GL_QUERY_WAIT_INVERTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R [

	<generated>
	^ GL_R
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R11F_G11F_B10F [

	<generated>
	^ GL_R11F_G11F_B10F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R16 [

	<generated>
	^ GL_R16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R16F [

	<generated>
	^ GL_R16F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R16I [

	<generated>
	^ GL_R16I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R16UI [

	<generated>
	^ GL_R16UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R16_SNORM [

	<generated>
	^ GL_R16_SNORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R32F [

	<generated>
	^ GL_R32F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R32I [

	<generated>
	^ GL_R32I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R32UI [

	<generated>
	^ GL_R32UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R3_G3_B2 [

	<generated>
	^ GL_R3_G3_B2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R8 [

	<generated>
	^ GL_R8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R8I [

	<generated>
	^ GL_R8I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R8UI [

	<generated>
	^ GL_R8UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> R8_SNORM [

	<generated>
	^ GL_R8_SNORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RASTERIZER_DISCARD [

	<generated>
	^ GL_RASTERIZER_DISCARD
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> READ_BUFFER [

	<generated>
	^ GL_READ_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> READ_FRAMEBUFFER [

	<generated>
	^ GL_READ_FRAMEBUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> READ_FRAMEBUFFER_BINDING [

	<generated>
	^ GL_READ_FRAMEBUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> READ_ONLY [

	<generated>
	^ GL_READ_ONLY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> READ_PIXELS [

	<generated>
	^ GL_READ_PIXELS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> READ_PIXELS_FORMAT [

	<generated>
	^ GL_READ_PIXELS_FORMAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> READ_PIXELS_TYPE [

	<generated>
	^ GL_READ_PIXELS_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> READ_WRITE [

	<generated>
	^ GL_READ_WRITE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RED [

	<generated>
	^ GL_RED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RED_BIAS [

	<generated>
	^ GL_RED_BIAS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RED_BITS [

	<generated>
	^ GL_RED_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RED_INTEGER [

	<generated>
	^ GL_RED_INTEGER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RED_SCALE [

	<generated>
	^ GL_RED_SCALE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> REFERENCED_BY_COMPUTE_SHADER [

	<generated>
	^ GL_REFERENCED_BY_COMPUTE_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> REFERENCED_BY_FRAGMENT_SHADER [

	<generated>
	^ GL_REFERENCED_BY_FRAGMENT_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> REFERENCED_BY_GEOMETRY_SHADER [

	<generated>
	^ GL_REFERENCED_BY_GEOMETRY_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> REFERENCED_BY_TESS_CONTROL_SHADER [

	<generated>
	^ GL_REFERENCED_BY_TESS_CONTROL_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> REFERENCED_BY_TESS_EVALUATION_SHADER [

	<generated>
	^ GL_REFERENCED_BY_TESS_EVALUATION_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> REFERENCED_BY_VERTEX_SHADER [

	<generated>
	^ GL_REFERENCED_BY_VERTEX_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> REFLECTION_MAP [

	<generated>
	^ GL_REFLECTION_MAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDER [

	<generated>
	^ GL_RENDER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERBUFFER [

	<generated>
	^ GL_RENDERBUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERBUFFER_ALPHA_SIZE [

	<generated>
	^ GL_RENDERBUFFER_ALPHA_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERBUFFER_BINDING [

	<generated>
	^ GL_RENDERBUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERBUFFER_BLUE_SIZE [

	<generated>
	^ GL_RENDERBUFFER_BLUE_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERBUFFER_DEPTH_SIZE [

	<generated>
	^ GL_RENDERBUFFER_DEPTH_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERBUFFER_GREEN_SIZE [

	<generated>
	^ GL_RENDERBUFFER_GREEN_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERBUFFER_HEIGHT [

	<generated>
	^ GL_RENDERBUFFER_HEIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERBUFFER_INTERNAL_FORMAT [

	<generated>
	^ GL_RENDERBUFFER_INTERNAL_FORMAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERBUFFER_RED_SIZE [

	<generated>
	^ GL_RENDERBUFFER_RED_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERBUFFER_SAMPLES [

	<generated>
	^ GL_RENDERBUFFER_SAMPLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERBUFFER_STENCIL_SIZE [

	<generated>
	^ GL_RENDERBUFFER_STENCIL_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERBUFFER_WIDTH [

	<generated>
	^ GL_RENDERBUFFER_WIDTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDERER [

	<generated>
	^ GL_RENDERER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RENDER_MODE [

	<generated>
	^ GL_RENDER_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> REPEAT [

	<generated>
	^ GL_REPEAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> REPLACE [

	<generated>
	^ GL_REPLACE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RESCALE_NORMAL [

	<generated>
	^ GL_RESCALE_NORMAL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RESET_NOTIFICATION_STRATEGY [

	<generated>
	^ GL_RESET_NOTIFICATION_STRATEGY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RETURN [

	<generated>
	^ GL_RETURN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG [

	<generated>
	^ GL_RG
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG16 [

	<generated>
	^ GL_RG16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG16F [

	<generated>
	^ GL_RG16F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG16I [

	<generated>
	^ GL_RG16I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG16UI [

	<generated>
	^ GL_RG16UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG16_SNORM [

	<generated>
	^ GL_RG16_SNORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG32F [

	<generated>
	^ GL_RG32F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG32I [

	<generated>
	^ GL_RG32I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG32UI [

	<generated>
	^ GL_RG32UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG8 [

	<generated>
	^ GL_RG8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG8I [

	<generated>
	^ GL_RG8I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG8UI [

	<generated>
	^ GL_RG8UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG8_SNORM [

	<generated>
	^ GL_RG8_SNORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB [

	<generated>
	^ GL_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB10 [

	<generated>
	^ GL_RGB10
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB10_A2 [

	<generated>
	^ GL_RGB10_A2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB10_A2UI [

	<generated>
	^ GL_RGB10_A2UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB12 [

	<generated>
	^ GL_RGB12
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB16 [

	<generated>
	^ GL_RGB16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB16F [

	<generated>
	^ GL_RGB16F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB16I [

	<generated>
	^ GL_RGB16I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB16UI [

	<generated>
	^ GL_RGB16UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB16_SNORM [

	<generated>
	^ GL_RGB16_SNORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB32F [

	<generated>
	^ GL_RGB32F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB32I [

	<generated>
	^ GL_RGB32I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB32UI [

	<generated>
	^ GL_RGB32UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB4 [

	<generated>
	^ GL_RGB4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB5 [

	<generated>
	^ GL_RGB5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB565 [

	<generated>
	^ GL_RGB565
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB5_A1 [

	<generated>
	^ GL_RGB5_A1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB8 [

	<generated>
	^ GL_RGB8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB8I [

	<generated>
	^ GL_RGB8I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB8UI [

	<generated>
	^ GL_RGB8UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB8_SNORM [

	<generated>
	^ GL_RGB8_SNORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB9_E5 [

	<generated>
	^ GL_RGB9_E5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA [

	<generated>
	^ GL_RGBA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA12 [

	<generated>
	^ GL_RGBA12
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA16 [

	<generated>
	^ GL_RGBA16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA16F [

	<generated>
	^ GL_RGBA16F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA16I [

	<generated>
	^ GL_RGBA16I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA16UI [

	<generated>
	^ GL_RGBA16UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA16_SNORM [

	<generated>
	^ GL_RGBA16_SNORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA2 [

	<generated>
	^ GL_RGBA2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA32F [

	<generated>
	^ GL_RGBA32F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA32I [

	<generated>
	^ GL_RGBA32I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA32UI [

	<generated>
	^ GL_RGBA32UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA4 [

	<generated>
	^ GL_RGBA4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA8 [

	<generated>
	^ GL_RGBA8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA8I [

	<generated>
	^ GL_RGBA8I
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA8UI [

	<generated>
	^ GL_RGBA8UI
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA8_SNORM [

	<generated>
	^ GL_RGBA8_SNORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA_INTEGER [

	<generated>
	^ GL_RGBA_INTEGER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGBA_MODE [

	<generated>
	^ GL_RGBA_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB_INTEGER [

	<generated>
	^ GL_RGB_INTEGER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RGB_SCALE [

	<generated>
	^ GL_RGB_SCALE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RG_INTEGER [

	<generated>
	^ GL_RG_INTEGER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> RIGHT [

	<generated>
	^ GL_RIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> S [

	<generated>
	^ GL_S
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER [

	<generated>
	^ GL_SAMPLER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_1D [

	<generated>
	^ GL_SAMPLER_1D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_1D_ARRAY [

	<generated>
	^ GL_SAMPLER_1D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_1D_ARRAY_SHADOW [

	<generated>
	^ GL_SAMPLER_1D_ARRAY_SHADOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_1D_SHADOW [

	<generated>
	^ GL_SAMPLER_1D_SHADOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_2D [

	<generated>
	^ GL_SAMPLER_2D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_2D_ARRAY [

	<generated>
	^ GL_SAMPLER_2D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_2D_ARRAY_SHADOW [

	<generated>
	^ GL_SAMPLER_2D_ARRAY_SHADOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_2D_RECT [

	<generated>
	^ GL_SAMPLER_2D_RECT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_2D_RECT_SHADOW [

	<generated>
	^ GL_SAMPLER_2D_RECT_SHADOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_2D_SHADOW [

	<generated>
	^ GL_SAMPLER_2D_SHADOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_3D [

	<generated>
	^ GL_SAMPLER_3D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_BINDING [

	<generated>
	^ GL_SAMPLER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_BUFFER [

	<generated>
	^ GL_SAMPLER_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_CUBE [

	<generated>
	^ GL_SAMPLER_CUBE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_CUBE_MAP_ARRAY [

	<generated>
	^ GL_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_CUBE_MAP_ARRAY_SHADOW [

	<generated>
	^ GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLER_CUBE_SHADOW [

	<generated>
	^ GL_SAMPLER_CUBE_SHADOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLES [

	<generated>
	^ GL_SAMPLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLES_PASSED [

	<generated>
	^ GL_SAMPLES_PASSED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLE_ALPHA_TO_COVERAGE [

	<generated>
	^ GL_SAMPLE_ALPHA_TO_COVERAGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLE_ALPHA_TO_ONE [

	<generated>
	^ GL_SAMPLE_ALPHA_TO_ONE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLE_BUFFERS [

	<generated>
	^ GL_SAMPLE_BUFFERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLE_COVERAGE [

	<generated>
	^ GL_SAMPLE_COVERAGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLE_COVERAGE_INVERT [

	<generated>
	^ GL_SAMPLE_COVERAGE_INVERT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLE_COVERAGE_VALUE [

	<generated>
	^ GL_SAMPLE_COVERAGE_VALUE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLE_MASK [

	<generated>
	^ GL_SAMPLE_MASK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLE_MASK_VALUE [

	<generated>
	^ GL_SAMPLE_MASK_VALUE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLE_POSITION [

	<generated>
	^ GL_SAMPLE_POSITION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SAMPLE_SHADING [

	<generated>
	^ GL_SAMPLE_SHADING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SCISSOR_BIT [

	<generated>
	^ GL_SCISSOR_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SCISSOR_BOX [

	<generated>
	^ GL_SCISSOR_BOX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SCISSOR_TEST [

	<generated>
	^ GL_SCISSOR_TEST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SCREEN [

	<generated>
	^ GL_SCREEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SECONDARY_COLOR_ARRAY [

	<generated>
	^ GL_SECONDARY_COLOR_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SECONDARY_COLOR_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SECONDARY_COLOR_ARRAY_POINTER [

	<generated>
	^ GL_SECONDARY_COLOR_ARRAY_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SECONDARY_COLOR_ARRAY_SIZE [

	<generated>
	^ GL_SECONDARY_COLOR_ARRAY_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SECONDARY_COLOR_ARRAY_STRIDE [

	<generated>
	^ GL_SECONDARY_COLOR_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SECONDARY_COLOR_ARRAY_TYPE [

	<generated>
	^ GL_SECONDARY_COLOR_ARRAY_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SELECT [

	<generated>
	^ GL_SELECT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SELECTION_BUFFER_POINTER [

	<generated>
	^ GL_SELECTION_BUFFER_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SELECTION_BUFFER_SIZE [

	<generated>
	^ GL_SELECTION_BUFFER_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SEPARABLE_2D [

	<generated>
	^ GL_SEPARABLE_2D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SEPARATE_ATTRIBS [

	<generated>
	^ GL_SEPARATE_ATTRIBS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SEPARATE_SPECULAR_COLOR [

	<generated>
	^ GL_SEPARATE_SPECULAR_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SET [

	<generated>
	^ GL_SET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER [

	<generated>
	^ GL_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_BINARY_FORMATS [

	<generated>
	^ GL_SHADER_BINARY_FORMATS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_BINARY_FORMAT_SPIR_V [

	<generated>
	^ GL_SHADER_BINARY_FORMAT_SPIR_V
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_COMPILER [

	<generated>
	^ GL_SHADER_COMPILER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_IMAGE_ACCESS_BARRIER_BIT [

	<generated>
	^ GL_SHADER_IMAGE_ACCESS_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_IMAGE_ATOMIC [

	<generated>
	^ GL_SHADER_IMAGE_ATOMIC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_IMAGE_LOAD [

	<generated>
	^ GL_SHADER_IMAGE_LOAD
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_IMAGE_STORE [

	<generated>
	^ GL_SHADER_IMAGE_STORE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_SOURCE_LENGTH [

	<generated>
	^ GL_SHADER_SOURCE_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_STORAGE_BARRIER_BIT [

	<generated>
	^ GL_SHADER_STORAGE_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_STORAGE_BLOCK [

	<generated>
	^ GL_SHADER_STORAGE_BLOCK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_STORAGE_BUFFER [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_STORAGE_BUFFER_BINDING [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_STORAGE_BUFFER_SIZE [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_STORAGE_BUFFER_START [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER_START
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADER_TYPE [

	<generated>
	^ GL_SHADER_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADE_MODEL [

	<generated>
	^ GL_SHADE_MODEL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHADING_LANGUAGE_VERSION [

	<generated>
	^ GL_SHADING_LANGUAGE_VERSION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHININESS [

	<generated>
	^ GL_SHININESS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SHORT [

	<generated>
	^ GL_SHORT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SIGNALED [

	<generated>
	^ GL_SIGNALED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SIGNED_NORMALIZED [

	<generated>
	^ GL_SIGNED_NORMALIZED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST [

	<generated>
	^ GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE [

	<generated>
	^ GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST [

	<generated>
	^ GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE [

	<generated>
	^ GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SINGLE_COLOR [

	<generated>
	^ GL_SINGLE_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SLUMINANCE [

	<generated>
	^ GL_SLUMINANCE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SLUMINANCE8 [

	<generated>
	^ GL_SLUMINANCE8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SLUMINANCE8_ALPHA8 [

	<generated>
	^ GL_SLUMINANCE8_ALPHA8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SLUMINANCE_ALPHA [

	<generated>
	^ GL_SLUMINANCE_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SMOOTH [

	<generated>
	^ GL_SMOOTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SMOOTH_LINE_WIDTH_GRANULARITY [

	<generated>
	^ GL_SMOOTH_LINE_WIDTH_GRANULARITY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SMOOTH_LINE_WIDTH_RANGE [

	<generated>
	^ GL_SMOOTH_LINE_WIDTH_RANGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SMOOTH_POINT_SIZE_GRANULARITY [

	<generated>
	^ GL_SMOOTH_POINT_SIZE_GRANULARITY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SMOOTH_POINT_SIZE_RANGE [

	<generated>
	^ GL_SMOOTH_POINT_SIZE_RANGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SOFTLIGHT [

	<generated>
	^ GL_SOFTLIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SOURCE0_ALPHA [

	<generated>
	^ GL_SOURCE0_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SOURCE0_RGB [

	<generated>
	^ GL_SOURCE0_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SOURCE1_ALPHA [

	<generated>
	^ GL_SOURCE1_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SOURCE1_RGB [

	<generated>
	^ GL_SOURCE1_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SOURCE2_ALPHA [

	<generated>
	^ GL_SOURCE2_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SOURCE2_RGB [

	<generated>
	^ GL_SOURCE2_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SPECULAR [

	<generated>
	^ GL_SPECULAR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SPHERE_MAP [

	<generated>
	^ GL_SPHERE_MAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SPIR_V_BINARY [

	<generated>
	^ GL_SPIR_V_BINARY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SPIR_V_EXTENSIONS [

	<generated>
	^ GL_SPIR_V_EXTENSIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SPOT_CUTOFF [

	<generated>
	^ GL_SPOT_CUTOFF
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SPOT_DIRECTION [

	<generated>
	^ GL_SPOT_DIRECTION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SPOT_EXPONENT [

	<generated>
	^ GL_SPOT_EXPONENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRC0_ALPHA [

	<generated>
	^ GL_SRC0_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRC0_RGB [

	<generated>
	^ GL_SRC0_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRC1_ALPHA [

	<generated>
	^ GL_SRC1_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRC1_COLOR [

	<generated>
	^ GL_SRC1_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRC1_RGB [

	<generated>
	^ GL_SRC1_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRC2_ALPHA [

	<generated>
	^ GL_SRC2_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRC2_RGB [

	<generated>
	^ GL_SRC2_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRC_ALPHA [

	<generated>
	^ GL_SRC_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRC_ALPHA_SATURATE [

	<generated>
	^ GL_SRC_ALPHA_SATURATE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRC_COLOR [

	<generated>
	^ GL_SRC_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRGB [

	<generated>
	^ GL_SRGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRGB8 [

	<generated>
	^ GL_SRGB8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRGB8_ALPHA8 [

	<generated>
	^ GL_SRGB8_ALPHA8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRGB_ALPHA [

	<generated>
	^ GL_SRGB_ALPHA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRGB_READ [

	<generated>
	^ GL_SRGB_READ
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SRGB_WRITE [

	<generated>
	^ GL_SRGB_WRITE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STACK_OVERFLOW [

	<generated>
	^ GL_STACK_OVERFLOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STACK_UNDERFLOW [

	<generated>
	^ GL_STACK_UNDERFLOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STATIC_COPY [

	<generated>
	^ GL_STATIC_COPY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STATIC_DRAW [

	<generated>
	^ GL_STATIC_DRAW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STATIC_READ [

	<generated>
	^ GL_STATIC_READ
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL [

	<generated>
	^ GL_STENCIL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_ATTACHMENT [

	<generated>
	^ GL_STENCIL_ATTACHMENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_BACK_FAIL [

	<generated>
	^ GL_STENCIL_BACK_FAIL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_BACK_FUNC [

	<generated>
	^ GL_STENCIL_BACK_FUNC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_BACK_PASS_DEPTH_FAIL [

	<generated>
	^ GL_STENCIL_BACK_PASS_DEPTH_FAIL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_BACK_PASS_DEPTH_PASS [

	<generated>
	^ GL_STENCIL_BACK_PASS_DEPTH_PASS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_BACK_REF [

	<generated>
	^ GL_STENCIL_BACK_REF
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_BACK_VALUE_MASK [

	<generated>
	^ GL_STENCIL_BACK_VALUE_MASK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_BACK_WRITEMASK [

	<generated>
	^ GL_STENCIL_BACK_WRITEMASK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_BITS [

	<generated>
	^ GL_STENCIL_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_BUFFER_BIT [

	<generated>
	^ GL_STENCIL_BUFFER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_CLEAR_VALUE [

	<generated>
	^ GL_STENCIL_CLEAR_VALUE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_COMPONENTS [

	<generated>
	^ GL_STENCIL_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_FAIL [

	<generated>
	^ GL_STENCIL_FAIL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_FUNC [

	<generated>
	^ GL_STENCIL_FUNC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_INDEX [

	<generated>
	^ GL_STENCIL_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_INDEX1 [

	<generated>
	^ GL_STENCIL_INDEX1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_INDEX16 [

	<generated>
	^ GL_STENCIL_INDEX16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_INDEX4 [

	<generated>
	^ GL_STENCIL_INDEX4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_INDEX8 [

	<generated>
	^ GL_STENCIL_INDEX8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_PASS_DEPTH_FAIL [

	<generated>
	^ GL_STENCIL_PASS_DEPTH_FAIL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_PASS_DEPTH_PASS [

	<generated>
	^ GL_STENCIL_PASS_DEPTH_PASS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_REF [

	<generated>
	^ GL_STENCIL_REF
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_RENDERABLE [

	<generated>
	^ GL_STENCIL_RENDERABLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_TEST [

	<generated>
	^ GL_STENCIL_TEST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_VALUE_MASK [

	<generated>
	^ GL_STENCIL_VALUE_MASK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STENCIL_WRITEMASK [

	<generated>
	^ GL_STENCIL_WRITEMASK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STEREO [

	<generated>
	^ GL_STEREO
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STREAM_COPY [

	<generated>
	^ GL_STREAM_COPY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STREAM_DRAW [

	<generated>
	^ GL_STREAM_DRAW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> STREAM_READ [

	<generated>
	^ GL_STREAM_READ
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SUBPIXEL_BITS [

	<generated>
	^ GL_SUBPIXEL_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SUBTRACT [

	<generated>
	^ GL_SUBTRACT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SYNC_CONDITION [

	<generated>
	^ GL_SYNC_CONDITION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SYNC_FENCE [

	<generated>
	^ GL_SYNC_FENCE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SYNC_FLAGS [

	<generated>
	^ GL_SYNC_FLAGS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SYNC_FLUSH_COMMANDS_BIT [

	<generated>
	^ GL_SYNC_FLUSH_COMMANDS_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SYNC_GPU_COMMANDS_COMPLETE [

	<generated>
	^ GL_SYNC_GPU_COMMANDS_COMPLETE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> SYNC_STATUS [

	<generated>
	^ GL_SYNC_STATUS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> T [

	<generated>
	^ GL_T
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> T2F_C3F_V3F [

	<generated>
	^ GL_T2F_C3F_V3F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> T2F_C4F_N3F_V3F [

	<generated>
	^ GL_T2F_C4F_N3F_V3F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> T2F_C4UB_V3F [

	<generated>
	^ GL_T2F_C4UB_V3F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> T2F_N3F_V3F [

	<generated>
	^ GL_T2F_N3F_V3F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> T2F_V3F [

	<generated>
	^ GL_T2F_V3F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> T4F_C4F_N3F_V4F [

	<generated>
	^ GL_T4F_C4F_N3F_V4F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> T4F_V4F [

	<generated>
	^ GL_T4F_V4F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_CONTROL_OUTPUT_VERTICES [

	<generated>
	^ GL_TESS_CONTROL_OUTPUT_VERTICES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_CONTROL_SHADER [

	<generated>
	^ GL_TESS_CONTROL_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_CONTROL_SHADER_BIT [

	<generated>
	^ GL_TESS_CONTROL_SHADER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_CONTROL_SHADER_PATCHES [

	<generated>
	^ GL_TESS_CONTROL_SHADER_PATCHES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_CONTROL_SUBROUTINE [

	<generated>
	^ GL_TESS_CONTROL_SUBROUTINE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_CONTROL_SUBROUTINE_UNIFORM [

	<generated>
	^ GL_TESS_CONTROL_SUBROUTINE_UNIFORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_CONTROL_TEXTURE [

	<generated>
	^ GL_TESS_CONTROL_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_EVALUATION_SHADER [

	<generated>
	^ GL_TESS_EVALUATION_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_EVALUATION_SHADER_BIT [

	<generated>
	^ GL_TESS_EVALUATION_SHADER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_EVALUATION_SHADER_INVOCATIONS [

	<generated>
	^ GL_TESS_EVALUATION_SHADER_INVOCATIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_EVALUATION_SUBROUTINE [

	<generated>
	^ GL_TESS_EVALUATION_SUBROUTINE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_EVALUATION_SUBROUTINE_UNIFORM [

	<generated>
	^ GL_TESS_EVALUATION_SUBROUTINE_UNIFORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_EVALUATION_TEXTURE [

	<generated>
	^ GL_TESS_EVALUATION_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_GEN_MODE [

	<generated>
	^ GL_TESS_GEN_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_GEN_POINT_MODE [

	<generated>
	^ GL_TESS_GEN_POINT_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_GEN_SPACING [

	<generated>
	^ GL_TESS_GEN_SPACING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TESS_GEN_VERTEX_ORDER [

	<generated>
	^ GL_TESS_GEN_VERTEX_ORDER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE [

	<generated>
	^ GL_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE0 [

	<generated>
	^ GL_TEXTURE0
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE1 [

	<generated>
	^ GL_TEXTURE1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE10 [

	<generated>
	^ GL_TEXTURE10
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE11 [

	<generated>
	^ GL_TEXTURE11
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE12 [

	<generated>
	^ GL_TEXTURE12
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE13 [

	<generated>
	^ GL_TEXTURE13
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE14 [

	<generated>
	^ GL_TEXTURE14
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE15 [

	<generated>
	^ GL_TEXTURE15
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE16 [

	<generated>
	^ GL_TEXTURE16
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE17 [

	<generated>
	^ GL_TEXTURE17
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE18 [

	<generated>
	^ GL_TEXTURE18
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE19 [

	<generated>
	^ GL_TEXTURE19
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE2 [

	<generated>
	^ GL_TEXTURE2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE20 [

	<generated>
	^ GL_TEXTURE20
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE21 [

	<generated>
	^ GL_TEXTURE21
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE22 [

	<generated>
	^ GL_TEXTURE22
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE23 [

	<generated>
	^ GL_TEXTURE23
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE24 [

	<generated>
	^ GL_TEXTURE24
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE25 [

	<generated>
	^ GL_TEXTURE25
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE26 [

	<generated>
	^ GL_TEXTURE26
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE27 [

	<generated>
	^ GL_TEXTURE27
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE28 [

	<generated>
	^ GL_TEXTURE28
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE29 [

	<generated>
	^ GL_TEXTURE29
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE3 [

	<generated>
	^ GL_TEXTURE3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE30 [

	<generated>
	^ GL_TEXTURE30
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE31 [

	<generated>
	^ GL_TEXTURE31
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE4 [

	<generated>
	^ GL_TEXTURE4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE5 [

	<generated>
	^ GL_TEXTURE5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE6 [

	<generated>
	^ GL_TEXTURE6
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE7 [

	<generated>
	^ GL_TEXTURE7
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE8 [

	<generated>
	^ GL_TEXTURE8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE9 [

	<generated>
	^ GL_TEXTURE9
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_1D [

	<generated>
	^ GL_TEXTURE_1D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_1D_ARRAY [

	<generated>
	^ GL_TEXTURE_1D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_2D [

	<generated>
	^ GL_TEXTURE_2D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_2D_ARRAY [

	<generated>
	^ GL_TEXTURE_2D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_2D_MULTISAMPLE [

	<generated>
	^ GL_TEXTURE_2D_MULTISAMPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_TEXTURE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_3D [

	<generated>
	^ GL_TEXTURE_3D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_ALPHA_SIZE [

	<generated>
	^ GL_TEXTURE_ALPHA_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_ALPHA_TYPE [

	<generated>
	^ GL_TEXTURE_ALPHA_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BASE_LEVEL [

	<generated>
	^ GL_TEXTURE_BASE_LEVEL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BINDING_1D [

	<generated>
	^ GL_TEXTURE_BINDING_1D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BINDING_1D_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_1D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BINDING_2D [

	<generated>
	^ GL_TEXTURE_BINDING_2D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BINDING_2D_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_2D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BINDING_2D_MULTISAMPLE [

	<generated>
	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BINDING_3D [

	<generated>
	^ GL_TEXTURE_BINDING_3D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BINDING_BUFFER [

	<generated>
	^ GL_TEXTURE_BINDING_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BINDING_CUBE_MAP [

	<generated>
	^ GL_TEXTURE_BINDING_CUBE_MAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BINDING_CUBE_MAP_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BINDING_RECTANGLE [

	<generated>
	^ GL_TEXTURE_BINDING_RECTANGLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BIT [

	<generated>
	^ GL_TEXTURE_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BLUE_SIZE [

	<generated>
	^ GL_TEXTURE_BLUE_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BLUE_TYPE [

	<generated>
	^ GL_TEXTURE_BLUE_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BORDER [

	<generated>
	^ GL_TEXTURE_BORDER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BORDER_COLOR [

	<generated>
	^ GL_TEXTURE_BORDER_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BUFFER [

	<generated>
	^ GL_TEXTURE_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BUFFER_BINDING [

	<generated>
	^ GL_TEXTURE_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BUFFER_DATA_STORE_BINDING [

	<generated>
	^ GL_TEXTURE_BUFFER_DATA_STORE_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BUFFER_OFFSET [

	<generated>
	^ GL_TEXTURE_BUFFER_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BUFFER_OFFSET_ALIGNMENT [

	<generated>
	^ GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_BUFFER_SIZE [

	<generated>
	^ GL_TEXTURE_BUFFER_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COMPARE_FUNC [

	<generated>
	^ GL_TEXTURE_COMPARE_FUNC
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COMPARE_MODE [

	<generated>
	^ GL_TEXTURE_COMPARE_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COMPONENTS [

	<generated>
	^ GL_TEXTURE_COMPONENTS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COMPRESSED [

	<generated>
	^ GL_TEXTURE_COMPRESSED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COMPRESSED_BLOCK_HEIGHT [

	<generated>
	^ GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COMPRESSED_BLOCK_SIZE [

	<generated>
	^ GL_TEXTURE_COMPRESSED_BLOCK_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COMPRESSED_BLOCK_WIDTH [

	<generated>
	^ GL_TEXTURE_COMPRESSED_BLOCK_WIDTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COMPRESSED_IMAGE_SIZE [

	<generated>
	^ GL_TEXTURE_COMPRESSED_IMAGE_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COMPRESSION_HINT [

	<generated>
	^ GL_TEXTURE_COMPRESSION_HINT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COORD_ARRAY [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COORD_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COORD_ARRAY_POINTER [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COORD_ARRAY_SIZE [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COORD_ARRAY_STRIDE [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_COORD_ARRAY_TYPE [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_CUBE_MAP [

	<generated>
	^ GL_TEXTURE_CUBE_MAP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_CUBE_MAP_NEGATIVE_X [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_NEGATIVE_X
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_CUBE_MAP_NEGATIVE_Y [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_CUBE_MAP_NEGATIVE_Z [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_CUBE_MAP_POSITIVE_X [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_POSITIVE_X
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_CUBE_MAP_POSITIVE_Y [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_POSITIVE_Y
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_CUBE_MAP_POSITIVE_Z [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_POSITIVE_Z
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_CUBE_MAP_SEAMLESS [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_SEAMLESS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_DEPTH [

	<generated>
	^ GL_TEXTURE_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_DEPTH_SIZE [

	<generated>
	^ GL_TEXTURE_DEPTH_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_DEPTH_TYPE [

	<generated>
	^ GL_TEXTURE_DEPTH_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_ENV [

	<generated>
	^ GL_TEXTURE_ENV
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_ENV_COLOR [

	<generated>
	^ GL_TEXTURE_ENV_COLOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_ENV_MODE [

	<generated>
	^ GL_TEXTURE_ENV_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_FETCH_BARRIER_BIT [

	<generated>
	^ GL_TEXTURE_FETCH_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_FILTER_CONTROL [

	<generated>
	^ GL_TEXTURE_FILTER_CONTROL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_FIXED_SAMPLE_LOCATIONS [

	<generated>
	^ GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_GATHER [

	<generated>
	^ GL_TEXTURE_GATHER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_GATHER_SHADOW [

	<generated>
	^ GL_TEXTURE_GATHER_SHADOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_GEN_MODE [

	<generated>
	^ GL_TEXTURE_GEN_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_GEN_Q [

	<generated>
	^ GL_TEXTURE_GEN_Q
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_GEN_R [

	<generated>
	^ GL_TEXTURE_GEN_R
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_GEN_S [

	<generated>
	^ GL_TEXTURE_GEN_S
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_GEN_T [

	<generated>
	^ GL_TEXTURE_GEN_T
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_GREEN_SIZE [

	<generated>
	^ GL_TEXTURE_GREEN_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_GREEN_TYPE [

	<generated>
	^ GL_TEXTURE_GREEN_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_HEIGHT [

	<generated>
	^ GL_TEXTURE_HEIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_IMAGE_FORMAT [

	<generated>
	^ GL_TEXTURE_IMAGE_FORMAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_IMAGE_TYPE [

	<generated>
	^ GL_TEXTURE_IMAGE_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_IMMUTABLE_FORMAT [

	<generated>
	^ GL_TEXTURE_IMMUTABLE_FORMAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_IMMUTABLE_LEVELS [

	<generated>
	^ GL_TEXTURE_IMMUTABLE_LEVELS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_INTENSITY_SIZE [

	<generated>
	^ GL_TEXTURE_INTENSITY_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_INTENSITY_TYPE [

	<generated>
	^ GL_TEXTURE_INTENSITY_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_INTERNAL_FORMAT [

	<generated>
	^ GL_TEXTURE_INTERNAL_FORMAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_LOD_BIAS [

	<generated>
	^ GL_TEXTURE_LOD_BIAS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_LUMINANCE_SIZE [

	<generated>
	^ GL_TEXTURE_LUMINANCE_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_LUMINANCE_TYPE [

	<generated>
	^ GL_TEXTURE_LUMINANCE_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_MAG_FILTER [

	<generated>
	^ GL_TEXTURE_MAG_FILTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_MATRIX [

	<generated>
	^ GL_TEXTURE_MATRIX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_MAX_ANISOTROPY [

	<generated>
	^ GL_TEXTURE_MAX_ANISOTROPY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_MAX_LEVEL [

	<generated>
	^ GL_TEXTURE_MAX_LEVEL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_MAX_LOD [

	<generated>
	^ GL_TEXTURE_MAX_LOD
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_MIN_FILTER [

	<generated>
	^ GL_TEXTURE_MIN_FILTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_MIN_LOD [

	<generated>
	^ GL_TEXTURE_MIN_LOD
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_PRIORITY [

	<generated>
	^ GL_TEXTURE_PRIORITY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_RECTANGLE [

	<generated>
	^ GL_TEXTURE_RECTANGLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_RED_SIZE [

	<generated>
	^ GL_TEXTURE_RED_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_RED_TYPE [

	<generated>
	^ GL_TEXTURE_RED_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_RESIDENT [

	<generated>
	^ GL_TEXTURE_RESIDENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_SAMPLES [

	<generated>
	^ GL_TEXTURE_SAMPLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_SHADOW [

	<generated>
	^ GL_TEXTURE_SHADOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_SHARED_SIZE [

	<generated>
	^ GL_TEXTURE_SHARED_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_STACK_DEPTH [

	<generated>
	^ GL_TEXTURE_STACK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_STENCIL_SIZE [

	<generated>
	^ GL_TEXTURE_STENCIL_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_SWIZZLE_A [

	<generated>
	^ GL_TEXTURE_SWIZZLE_A
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_SWIZZLE_B [

	<generated>
	^ GL_TEXTURE_SWIZZLE_B
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_SWIZZLE_G [

	<generated>
	^ GL_TEXTURE_SWIZZLE_G
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_SWIZZLE_R [

	<generated>
	^ GL_TEXTURE_SWIZZLE_R
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_SWIZZLE_RGBA [

	<generated>
	^ GL_TEXTURE_SWIZZLE_RGBA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_TARGET [

	<generated>
	^ GL_TEXTURE_TARGET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_UPDATE_BARRIER_BIT [

	<generated>
	^ GL_TEXTURE_UPDATE_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_VIEW [

	<generated>
	^ GL_TEXTURE_VIEW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_VIEW_MIN_LAYER [

	<generated>
	^ GL_TEXTURE_VIEW_MIN_LAYER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_VIEW_MIN_LEVEL [

	<generated>
	^ GL_TEXTURE_VIEW_MIN_LEVEL
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_VIEW_NUM_LAYERS [

	<generated>
	^ GL_TEXTURE_VIEW_NUM_LAYERS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_VIEW_NUM_LEVELS [

	<generated>
	^ GL_TEXTURE_VIEW_NUM_LEVELS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_WIDTH [

	<generated>
	^ GL_TEXTURE_WIDTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_WRAP_R [

	<generated>
	^ GL_TEXTURE_WRAP_R
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_WRAP_S [

	<generated>
	^ GL_TEXTURE_WRAP_S
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TEXTURE_WRAP_T [

	<generated>
	^ GL_TEXTURE_WRAP_T
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TIMEOUT_EXPIRED [

	<generated>
	^ GL_TIMEOUT_EXPIRED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TIMEOUT_IGNORED [

	<generated>
	^ GL_TIMEOUT_IGNORED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TIMESTAMP [

	<generated>
	^ GL_TIMESTAMP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TIME_ELAPSED [

	<generated>
	^ GL_TIME_ELAPSED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TOP_LEVEL_ARRAY_SIZE [

	<generated>
	^ GL_TOP_LEVEL_ARRAY_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TOP_LEVEL_ARRAY_STRIDE [

	<generated>
	^ GL_TOP_LEVEL_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_BIT [

	<generated>
	^ GL_TRANSFORM_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK [

	<generated>
	^ GL_TRANSFORM_FEEDBACK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_ACTIVE [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_ACTIVE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_BARRIER_BIT [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_BINDING [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_BUFFER [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_BUFFER_ACTIVE [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_BUFFER_BINDING [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_BUFFER_INDEX [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_BUFFER_MODE [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER_MODE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_BUFFER_PAUSED [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_BUFFER_SIZE [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_BUFFER_START [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER_START
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_BUFFER_STRIDE [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_OVERFLOW [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_OVERFLOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_PAUSED [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_PAUSED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_STREAM_OVERFLOW [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_VARYING [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_VARYING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_VARYINGS [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_VARYINGS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSPOSE_COLOR_MATRIX [

	<generated>
	^ GL_TRANSPOSE_COLOR_MATRIX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSPOSE_MODELVIEW_MATRIX [

	<generated>
	^ GL_TRANSPOSE_MODELVIEW_MATRIX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSPOSE_PROJECTION_MATRIX [

	<generated>
	^ GL_TRANSPOSE_PROJECTION_MATRIX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRANSPOSE_TEXTURE_MATRIX [

	<generated>
	^ GL_TRANSPOSE_TEXTURE_MATRIX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRIANGLES [

	<generated>
	^ GL_TRIANGLES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRIANGLES_ADJACENCY [

	<generated>
	^ GL_TRIANGLES_ADJACENCY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRIANGLE_FAN [

	<generated>
	^ GL_TRIANGLE_FAN
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRIANGLE_STRIP [

	<generated>
	^ GL_TRIANGLE_STRIP
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRIANGLE_STRIP_ADJACENCY [

	<generated>
	^ GL_TRIANGLE_STRIP_ADJACENCY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TRUE [

	<generated>
	^ GL_TRUE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> TYPE [

	<generated>
	^ GL_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNDEFINED_VERTEX [

	<generated>
	^ GL_UNDEFINED_VERTEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM [

	<generated>
	^ GL_UNIFORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_ARRAY_STRIDE [

	<generated>
	^ GL_UNIFORM_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX [

	<generated>
	^ GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BARRIER_BIT [

	<generated>
	^ GL_UNIFORM_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK [

	<generated>
	^ GL_UNIFORM_BLOCK
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK_ACTIVE_UNIFORMS [

	<generated>
	^ GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES [

	<generated>
	^ GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK_BINDING [

	<generated>
	^ GL_UNIFORM_BLOCK_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK_DATA_SIZE [

	<generated>
	^ GL_UNIFORM_BLOCK_DATA_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK_INDEX [

	<generated>
	^ GL_UNIFORM_BLOCK_INDEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK_NAME_LENGTH [

	<generated>
	^ GL_UNIFORM_BLOCK_NAME_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER [

	<generated>
	^ GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER [

	<generated>
	^ GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER [

	<generated>
	^ GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER [

	<generated>
	^ GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER [

	<generated>
	^ GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER [

	<generated>
	^ GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BUFFER [

	<generated>
	^ GL_UNIFORM_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BUFFER_BINDING [

	<generated>
	^ GL_UNIFORM_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BUFFER_OFFSET_ALIGNMENT [

	<generated>
	^ GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BUFFER_SIZE [

	<generated>
	^ GL_UNIFORM_BUFFER_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_BUFFER_START [

	<generated>
	^ GL_UNIFORM_BUFFER_START
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_IS_ROW_MAJOR [

	<generated>
	^ GL_UNIFORM_IS_ROW_MAJOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_MATRIX_STRIDE [

	<generated>
	^ GL_UNIFORM_MATRIX_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_NAME_LENGTH [

	<generated>
	^ GL_UNIFORM_NAME_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_OFFSET [

	<generated>
	^ GL_UNIFORM_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_SIZE [

	<generated>
	^ GL_UNIFORM_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNIFORM_TYPE [

	<generated>
	^ GL_UNIFORM_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNKNOWN_CONTEXT_RESET [

	<generated>
	^ GL_UNKNOWN_CONTEXT_RESET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNPACK_ALIGNMENT [

	<generated>
	^ GL_UNPACK_ALIGNMENT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNPACK_COMPRESSED_BLOCK_DEPTH [

	<generated>
	^ GL_UNPACK_COMPRESSED_BLOCK_DEPTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNPACK_COMPRESSED_BLOCK_HEIGHT [

	<generated>
	^ GL_UNPACK_COMPRESSED_BLOCK_HEIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNPACK_COMPRESSED_BLOCK_SIZE [

	<generated>
	^ GL_UNPACK_COMPRESSED_BLOCK_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNPACK_COMPRESSED_BLOCK_WIDTH [

	<generated>
	^ GL_UNPACK_COMPRESSED_BLOCK_WIDTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNPACK_IMAGE_HEIGHT [

	<generated>
	^ GL_UNPACK_IMAGE_HEIGHT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNPACK_LSB_FIRST [

	<generated>
	^ GL_UNPACK_LSB_FIRST
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNPACK_ROW_LENGTH [

	<generated>
	^ GL_UNPACK_ROW_LENGTH
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNPACK_SKIP_IMAGES [

	<generated>
	^ GL_UNPACK_SKIP_IMAGES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNPACK_SKIP_PIXELS [

	<generated>
	^ GL_UNPACK_SKIP_PIXELS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNPACK_SKIP_ROWS [

	<generated>
	^ GL_UNPACK_SKIP_ROWS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNPACK_SWAP_BYTES [

	<generated>
	^ GL_UNPACK_SWAP_BYTES
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNALED [

	<generated>
	^ GL_UNSIGNALED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_BYTE [

	<generated>
	^ GL_UNSIGNED_BYTE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_BYTE_2_3_3_REV [

	<generated>
	^ GL_UNSIGNED_BYTE_2_3_3_REV
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_BYTE_3_3_2 [

	<generated>
	^ GL_UNSIGNED_BYTE_3_3_2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT [

	<generated>
	^ GL_UNSIGNED_INT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_10F_11F_11F_REV [

	<generated>
	^ GL_UNSIGNED_INT_10F_11F_11F_REV
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_10_10_10_2 [

	<generated>
	^ GL_UNSIGNED_INT_10_10_10_2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_24_8 [

	<generated>
	^ GL_UNSIGNED_INT_24_8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_2_10_10_10_REV [

	<generated>
	^ GL_UNSIGNED_INT_2_10_10_10_REV
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_5_9_9_9_REV [

	<generated>
	^ GL_UNSIGNED_INT_5_9_9_9_REV
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_8_8_8_8 [

	<generated>
	^ GL_UNSIGNED_INT_8_8_8_8
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_8_8_8_8_REV [

	<generated>
	^ GL_UNSIGNED_INT_8_8_8_8_REV
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_ATOMIC_COUNTER [

	<generated>
	^ GL_UNSIGNED_INT_ATOMIC_COUNTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_IMAGE_1D [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_1D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_IMAGE_1D_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_1D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_IMAGE_2D [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_2D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_IMAGE_2D_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_2D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_IMAGE_2D_MULTISAMPLE [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_IMAGE_2D_RECT [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_2D_RECT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_IMAGE_3D [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_3D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_IMAGE_BUFFER [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_IMAGE_CUBE [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_CUBE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_SAMPLER_1D [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_1D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_SAMPLER_1D_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_SAMPLER_2D [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_SAMPLER_2D_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_SAMPLER_2D_RECT [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_RECT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_SAMPLER_3D [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_3D
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_SAMPLER_BUFFER [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_SAMPLER_CUBE [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_CUBE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_VEC2 [

	<generated>
	^ GL_UNSIGNED_INT_VEC2
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_VEC3 [

	<generated>
	^ GL_UNSIGNED_INT_VEC3
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_INT_VEC4 [

	<generated>
	^ GL_UNSIGNED_INT_VEC4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_NORMALIZED [

	<generated>
	^ GL_UNSIGNED_NORMALIZED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_SHORT [

	<generated>
	^ GL_UNSIGNED_SHORT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_SHORT_1_5_5_5_REV [

	<generated>
	^ GL_UNSIGNED_SHORT_1_5_5_5_REV
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_SHORT_4_4_4_4 [

	<generated>
	^ GL_UNSIGNED_SHORT_4_4_4_4
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_SHORT_4_4_4_4_REV [

	<generated>
	^ GL_UNSIGNED_SHORT_4_4_4_4_REV
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_SHORT_5_5_5_1 [

	<generated>
	^ GL_UNSIGNED_SHORT_5_5_5_1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_SHORT_5_6_5 [

	<generated>
	^ GL_UNSIGNED_SHORT_5_6_5
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UNSIGNED_SHORT_5_6_5_REV [

	<generated>
	^ GL_UNSIGNED_SHORT_5_6_5_REV
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> UPPER_LEFT [

	<generated>
	^ GL_UPPER_LEFT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> V2F [

	<generated>
	^ GL_V2F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> V3F [

	<generated>
	^ GL_V3F
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VALIDATE_STATUS [

	<generated>
	^ GL_VALIDATE_STATUS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VENDOR [

	<generated>
	^ GL_VENDOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERSION [

	<generated>
	^ GL_VERSION
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:45'
}
GLDebugLibrary >> VERSION_ES_CL_1_0 [

	<generated>
	^ GL_VERSION_ES_CL_1_0
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:45'
}
GLDebugLibrary >> VERSION_ES_CL_1_1 [

	<generated>
	^ GL_VERSION_ES_CL_1_1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:45'
}
GLDebugLibrary >> VERSION_ES_CM_1_1 [

	<generated>
	^ GL_VERSION_ES_CM_1_1
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ARRAY [

	<generated>
	^ GL_VERTEX_ARRAY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ARRAY_BINDING [

	<generated>
	^ GL_VERTEX_ARRAY_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_VERTEX_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ARRAY_POINTER [

	<generated>
	^ GL_VERTEX_ARRAY_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ARRAY_SIZE [

	<generated>
	^ GL_VERTEX_ARRAY_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ARRAY_STRIDE [

	<generated>
	^ GL_VERTEX_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ARRAY_TYPE [

	<generated>
	^ GL_VERTEX_ARRAY_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_ARRAY_BARRIER_BIT [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_ARRAY_DIVISOR [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_DIVISOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_ARRAY_ENABLED [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_ENABLED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_ARRAY_INTEGER [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_INTEGER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_ARRAY_LONG [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_LONG
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_ARRAY_NORMALIZED [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_ARRAY_POINTER [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_POINTER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_ARRAY_SIZE [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_ARRAY_STRIDE [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_ARRAY_TYPE [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_TYPE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_BINDING [

	<generated>
	^ GL_VERTEX_ATTRIB_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_ATTRIB_RELATIVE_OFFSET [

	<generated>
	^ GL_VERTEX_ATTRIB_RELATIVE_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_BINDING_BUFFER [

	<generated>
	^ GL_VERTEX_BINDING_BUFFER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_BINDING_DIVISOR [

	<generated>
	^ GL_VERTEX_BINDING_DIVISOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_BINDING_OFFSET [

	<generated>
	^ GL_VERTEX_BINDING_OFFSET
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_BINDING_STRIDE [

	<generated>
	^ GL_VERTEX_BINDING_STRIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_PROGRAM_POINT_SIZE [

	<generated>
	^ GL_VERTEX_PROGRAM_POINT_SIZE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_PROGRAM_TWO_SIDE [

	<generated>
	^ GL_VERTEX_PROGRAM_TWO_SIDE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_SHADER [

	<generated>
	^ GL_VERTEX_SHADER
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_SHADER_BIT [

	<generated>
	^ GL_VERTEX_SHADER_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_SHADER_INVOCATIONS [

	<generated>
	^ GL_VERTEX_SHADER_INVOCATIONS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_SUBROUTINE [

	<generated>
	^ GL_VERTEX_SUBROUTINE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_SUBROUTINE_UNIFORM [

	<generated>
	^ GL_VERTEX_SUBROUTINE_UNIFORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTEX_TEXTURE [

	<generated>
	^ GL_VERTEX_TEXTURE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VERTICES_SUBMITTED [

	<generated>
	^ GL_VERTICES_SUBMITTED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEWPORT [

	<generated>
	^ GL_VIEWPORT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEWPORT_BIT [

	<generated>
	^ GL_VIEWPORT_BIT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEWPORT_BOUNDS_RANGE [

	<generated>
	^ GL_VIEWPORT_BOUNDS_RANGE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEWPORT_INDEX_PROVOKING_VERTEX [

	<generated>
	^ GL_VIEWPORT_INDEX_PROVOKING_VERTEX
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEWPORT_SUBPIXEL_BITS [

	<generated>
	^ GL_VIEWPORT_SUBPIXEL_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_128_BITS [

	<generated>
	^ GL_VIEW_CLASS_128_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_16_BITS [

	<generated>
	^ GL_VIEW_CLASS_16_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_24_BITS [

	<generated>
	^ GL_VIEW_CLASS_24_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_32_BITS [

	<generated>
	^ GL_VIEW_CLASS_32_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_48_BITS [

	<generated>
	^ GL_VIEW_CLASS_48_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_64_BITS [

	<generated>
	^ GL_VIEW_CLASS_64_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_8_BITS [

	<generated>
	^ GL_VIEW_CLASS_8_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_96_BITS [

	<generated>
	^ GL_VIEW_CLASS_96_BITS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_BPTC_FLOAT [

	<generated>
	^ GL_VIEW_CLASS_BPTC_FLOAT
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_BPTC_UNORM [

	<generated>
	^ GL_VIEW_CLASS_BPTC_UNORM
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_RGTC1_RED [

	<generated>
	^ GL_VIEW_CLASS_RGTC1_RED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_RGTC2_RG [

	<generated>
	^ GL_VIEW_CLASS_RGTC2_RG
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_S3TC_DXT1_RGB [

	<generated>
	^ GL_VIEW_CLASS_S3TC_DXT1_RGB
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_S3TC_DXT1_RGBA [

	<generated>
	^ GL_VIEW_CLASS_S3TC_DXT1_RGBA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_S3TC_DXT3_RGBA [

	<generated>
	^ GL_VIEW_CLASS_S3TC_DXT3_RGBA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_CLASS_S3TC_DXT5_RGBA [

	<generated>
	^ GL_VIEW_CLASS_S3TC_DXT5_RGBA
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> VIEW_COMPATIBILITY_CLASS [

	<generated>
	^ GL_VIEW_COMPATIBILITY_CLASS
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> WAIT_FAILED [

	<generated>
	^ GL_WAIT_FAILED
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> WEIGHT_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_WEIGHT_ARRAY_BUFFER_BINDING
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> WRITE_ONLY [

	<generated>
	^ GL_WRITE_ONLY
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> XOR [

	<generated>
	^ GL_XOR
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ZERO [

	<generated>
	^ GL_ZERO
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ZERO_TO_ONE [

	<generated>
	^ GL_ZERO_TO_ONE
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ZOOM_X [

	<generated>
	^ GL_ZOOM_X
]

{
	#category : #'api - enums',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ZOOM_Y [

	<generated>
	^ GL_ZOOM_Y
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> accum: op with: value [

	<generated>
	library accum: op with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> activeShaderProgram: pipeline with: program [

	<generated>
	library activeShaderProgram: pipeline with: program.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> activeTexture: texture [

	<generated>
	library activeTexture: texture.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> alphaFunc: func with: ref [

	<generated>
	library alphaFunc: func with: ref.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> alphaFuncx: func with: ref [

	<generated>
	library alphaFuncx: func with: ref.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> areTexturesResident: n with: textures with: residences [

	<generated>
	library areTexturesResident: n with: textures with: residences.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> arrayElement: i [

	<generated>
	library arrayElement: i.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> attachShader: program with: shader [

	<generated>
	library attachShader: program with: shader.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> begin: mode [

	<generated>
	library begin: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> beginConditionalRender: id with: mode [

	<generated>
	library beginConditionalRender: id with: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> beginQuery: target with: id [

	<generated>
	library beginQuery: target with: id.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> beginQueryIndexed: target with: index with: id [

	<generated>
	library beginQueryIndexed: target with: index with: id.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> beginTransformFeedback: primitiveMode [

	<generated>
	library beginTransformFeedback: primitiveMode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindAttribLocation: program with: index with: name [

	<generated>
	library bindAttribLocation: program with: index with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindBuffer: target with: buffer [

	<generated>
	library bindBuffer: target with: buffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindBufferBase: target with: index with: buffer [

	<generated>
	library bindBufferBase: target with: index with: buffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindBufferRange: target with: index with: buffer with: offset with: size [

	<generated>
	library bindBufferRange: target with: index with: buffer with: offset with: size.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindBuffersBase: target with: first with: count with: buffers [

	<generated>
	library bindBuffersBase: target with: first with: count with: buffers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindBuffersRange: target with: first with: count with: buffers with: offsets with: sizes [

	<generated>
	library bindBuffersRange: target with: first with: count with: buffers with: offsets with: sizes.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindFragDataLocation: program with: color with: name [

	<generated>
	library bindFragDataLocation: program with: color with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindFragDataLocationIndexed: program with: colorNumber with: index with: name [

	<generated>
	library bindFragDataLocationIndexed: program with: colorNumber with: index with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindFramebuffer: target with: framebuffer [

	<generated>
	library bindFramebuffer: target with: framebuffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindImageTexture: unit with: texture with: level with: layered with: layer with: access with: format [

	<generated>
	library bindImageTexture: unit with: texture with: level with: layered with: layer with: access with: format.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindImageTextures: first with: count with: textures [

	<generated>
	library bindImageTextures: first with: count with: textures.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindProgramPipeline: pipeline [

	<generated>
	library bindProgramPipeline: pipeline.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindRenderbuffer: target with: renderbuffer [

	<generated>
	library bindRenderbuffer: target with: renderbuffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindSampler: unit with: sampler [

	<generated>
	library bindSampler: unit with: sampler.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindSamplers: first with: count with: samplers [

	<generated>
	library bindSamplers: first with: count with: samplers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindTexture: target with: texture [

	<generated>
	library bindTexture: target with: texture.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindTextureUnit: unit with: texture [

	<generated>
	library bindTextureUnit: unit with: texture.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindTextures: first with: count with: textures [

	<generated>
	library bindTextures: first with: count with: textures.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindTransformFeedback: target with: id [

	<generated>
	library bindTransformFeedback: target with: id.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindVertexArray: array [

	<generated>
	library bindVertexArray: array.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindVertexBuffer: bindingindex with: buffer with: offset with: stride [

	<generated>
	library bindVertexBuffer: bindingindex with: buffer with: offset with: stride.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bindVertexBuffers: first with: count with: buffers with: offsets with: strides [

	<generated>
	library bindVertexBuffers: first with: count with: buffers with: offsets with: strides.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bitmap: width with: height with: xorig with: yorig with: xmove with: ymove with: bitmap [

	<generated>
	library bitmap: width with: height with: xorig with: yorig with: xmove with: ymove with: bitmap.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> blendBarrier [

	<generated>
	library blendBarrier.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> blendColor: red with: green with: blue with: alpha [

	<generated>
	library blendColor: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> blendEquation: mode [

	<generated>
	library blendEquation: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> blendEquationSeparate: modeRGB with: modeAlpha [

	<generated>
	library blendEquationSeparate: modeRGB with: modeAlpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> blendEquationSeparatei: buf with: modeRGB with: modeAlpha [

	<generated>
	library blendEquationSeparatei: buf with: modeRGB with: modeAlpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> blendEquationi: buf with: mode [

	<generated>
	library blendEquationi: buf with: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> blendFunc: sfactor with: dfactor [

	<generated>
	library blendFunc: sfactor with: dfactor.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> blendFuncSeparate: sfactorRGB with: dfactorRGB with: sfactorAlpha with: dfactorAlpha [

	<generated>
	library blendFuncSeparate: sfactorRGB with: dfactorRGB with: sfactorAlpha with: dfactorAlpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> blendFuncSeparatei: buf with: srcRGB with: dstRGB with: srcAlpha with: dstAlpha [

	<generated>
	library blendFuncSeparatei: buf with: srcRGB with: dstRGB with: srcAlpha with: dstAlpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> blendFunci: buf with: src with: dst [

	<generated>
	library blendFunci: buf with: src with: dst.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> blitFramebuffer: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter [

	<generated>
	library blitFramebuffer: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> blitNamedFramebuffer: readFramebuffer with: drawFramebuffer with: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter [

	<generated>
	library blitNamedFramebuffer: readFramebuffer with: drawFramebuffer with: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bufferData: target with: size with: data with: usage [

	<generated>
	library bufferData: target with: size with: data with: usage.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bufferStorage: target with: size with: data with: flags [

	<generated>
	library bufferStorage: target with: size with: data with: flags.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> bufferSubData: target with: offset with: size with: data [

	<generated>
	library bufferSubData: target with: offset with: size with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> callList: list [

	<generated>
	library callList: list.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> callLists: n with: type with: lists [

	<generated>
	library callLists: n with: type with: lists.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> checkFramebufferStatus: target [

	<generated>
	library checkFramebufferStatus: target.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> checkNamedFramebufferStatus: framebuffer with: target [

	<generated>
	library checkNamedFramebufferStatus: framebuffer with: target.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clampColor: target with: clamp [

	<generated>
	library clampColor: target with: clamp.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clear: mask [

	<generated>
	library clear: mask.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearAccum: red with: green with: blue with: alpha [

	<generated>
	library clearAccum: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearBufferData: target with: internalformat with: format with: type with: data [

	<generated>
	library clearBufferData: target with: internalformat with: format with: type with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearBufferSubData: target with: internalformat with: offset with: size with: format with: type with: data [

	<generated>
	library clearBufferSubData: target with: internalformat with: offset with: size with: format with: type with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearBufferfi: buffer with: drawbuffer with: depth with: stencil [

	<generated>
	library clearBufferfi: buffer with: drawbuffer with: depth with: stencil.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearBufferfv: buffer with: drawbuffer with: value [

	<generated>
	library clearBufferfv: buffer with: drawbuffer with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearBufferiv: buffer with: drawbuffer with: value [

	<generated>
	library clearBufferiv: buffer with: drawbuffer with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearBufferuiv: buffer with: drawbuffer with: value [

	<generated>
	library clearBufferuiv: buffer with: drawbuffer with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearColor: red with: green with: blue with: alpha [

	<generated>
	library clearColor: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearColorx: red with: green with: blue with: alpha [

	<generated>
	library clearColorx: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearDepth: depth [

	<generated>
	library clearDepth: depth.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearDepthf: d [

	<generated>
	library clearDepthf: d.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearDepthx: depth [

	<generated>
	library clearDepthx: depth.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearIndex: c [

	<generated>
	library clearIndex: c.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearNamedBufferData: buffer with: internalformat with: format with: type with: data [

	<generated>
	library clearNamedBufferData: buffer with: internalformat with: format with: type with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearNamedBufferSubData: buffer with: internalformat with: offset with: size with: format with: type with: data [

	<generated>
	library clearNamedBufferSubData: buffer with: internalformat with: offset with: size with: format with: type with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearNamedFramebufferfi: framebuffer with: buffer with: drawbuffer with: depth with: stencil [

	<generated>
	library clearNamedFramebufferfi: framebuffer with: buffer with: drawbuffer with: depth with: stencil.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearNamedFramebufferfv: framebuffer with: buffer with: drawbuffer with: value [

	<generated>
	library clearNamedFramebufferfv: framebuffer with: buffer with: drawbuffer with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearNamedFramebufferiv: framebuffer with: buffer with: drawbuffer with: value [

	<generated>
	library clearNamedFramebufferiv: framebuffer with: buffer with: drawbuffer with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearNamedFramebufferuiv: framebuffer with: buffer with: drawbuffer with: value [

	<generated>
	library clearNamedFramebufferuiv: framebuffer with: buffer with: drawbuffer with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearStencil: s [

	<generated>
	library clearStencil: s.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearTexImage: texture with: level with: format with: type with: data [

	<generated>
	library clearTexImage: texture with: level with: format with: type with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clearTexSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: data [

	<generated>
	library clearTexSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clientActiveTexture: texture [

	<generated>
	library clientActiveTexture: texture.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clientWaitSync: sync with: flags with: timeout [

	<generated>
	library clientWaitSync: sync with: flags with: timeout.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clipControl: origin with: depth [

	<generated>
	library clipControl: origin with: depth.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clipPlane: plane with: equation [

	<generated>
	library clipPlane: plane with: equation.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clipPlanef: p with: eqn [

	<generated>
	library clipPlanef: p with: eqn.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> clipPlanex: plane with: equation [

	<generated>
	library clipPlanex: plane with: equation.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3b: red with: green with: blue [

	<generated>
	library color3b: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3bv: v [

	<generated>
	library color3bv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3d: red with: green with: blue [

	<generated>
	library color3d: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3dv: v [

	<generated>
	library color3dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3f: red with: green with: blue [

	<generated>
	library color3f: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3fv: v [

	<generated>
	library color3fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3i: red with: green with: blue [

	<generated>
	library color3i: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3iv: v [

	<generated>
	library color3iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3s: red with: green with: blue [

	<generated>
	library color3s: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3sv: v [

	<generated>
	library color3sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3ub: red with: green with: blue [

	<generated>
	library color3ub: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3ubv: v [

	<generated>
	library color3ubv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3ui: red with: green with: blue [

	<generated>
	library color3ui: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3uiv: v [

	<generated>
	library color3uiv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3us: red with: green with: blue [

	<generated>
	library color3us: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color3usv: v [

	<generated>
	library color3usv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4b: red with: green with: blue with: alpha [

	<generated>
	library color4b: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4bv: v [

	<generated>
	library color4bv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4d: red with: green with: blue with: alpha [

	<generated>
	library color4d: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4dv: v [

	<generated>
	library color4dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4f: red with: green with: blue with: alpha [

	<generated>
	library color4f: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4fv: v [

	<generated>
	library color4fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4i: red with: green with: blue with: alpha [

	<generated>
	library color4i: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4iv: v [

	<generated>
	library color4iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4s: red with: green with: blue with: alpha [

	<generated>
	library color4s: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4sv: v [

	<generated>
	library color4sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4ub: red with: green with: blue with: alpha [

	<generated>
	library color4ub: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4ubv: v [

	<generated>
	library color4ubv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4ui: red with: green with: blue with: alpha [

	<generated>
	library color4ui: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4uiv: v [

	<generated>
	library color4uiv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4us: red with: green with: blue with: alpha [

	<generated>
	library color4us: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4usv: v [

	<generated>
	library color4usv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> color4x: red with: green with: blue with: alpha [

	<generated>
	library color4x: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> colorMask: red with: green with: blue with: alpha [

	<generated>
	library colorMask: red with: green with: blue with: alpha.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> colorMaski: index with: r with: g with: b with: a [

	<generated>
	library colorMaski: index with: r with: g with: b with: a.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> colorMaterial: face with: mode [

	<generated>
	library colorMaterial: face with: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> colorP3ui: type with: color [

	<generated>
	library colorP3ui: type with: color.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> colorP3uiv: type with: color [

	<generated>
	library colorP3uiv: type with: color.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> colorP4ui: type with: color [

	<generated>
	library colorP4ui: type with: color.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> colorP4uiv: type with: color [

	<generated>
	library colorP4uiv: type with: color.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> colorPointer: size with: type with: stride with: pointer [

	<generated>
	library colorPointer: size with: type with: stride with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> compileShader: shader [

	<generated>
	library compileShader: shader.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> compressedTexImage1D: target with: level with: internalformat with: width with: border with: imageSize with: data [

	<generated>
	library compressedTexImage1D: target with: level with: internalformat with: width with: border with: imageSize with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> compressedTexImage2D: target with: level with: internalformat with: width with: height with: border with: imageSize with: data [

	<generated>
	library compressedTexImage2D: target with: level with: internalformat with: width with: height with: border with: imageSize with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> compressedTexImage3D: target with: level with: internalformat with: width with: height with: depth with: border with: imageSize with: data [

	<generated>
	library compressedTexImage3D: target with: level with: internalformat with: width with: height with: depth with: border with: imageSize with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> compressedTexSubImage1D: target with: level with: xoffset with: width with: format with: imageSize with: data [

	<generated>
	library compressedTexSubImage1D: target with: level with: xoffset with: width with: format with: imageSize with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> compressedTexSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: imageSize with: data [

	<generated>
	library compressedTexSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: imageSize with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> compressedTexSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: imageSize with: data [

	<generated>
	library compressedTexSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: imageSize with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> compressedTextureSubImage1D: texture with: level with: xoffset with: width with: format with: imageSize with: data [

	<generated>
	library compressedTextureSubImage1D: texture with: level with: xoffset with: width with: format with: imageSize with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> compressedTextureSubImage2D: texture with: level with: xoffset with: yoffset with: width with: height with: format with: imageSize with: data [

	<generated>
	library compressedTextureSubImage2D: texture with: level with: xoffset with: yoffset with: width with: height with: format with: imageSize with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> compressedTextureSubImage3D: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: imageSize with: data [

	<generated>
	library compressedTextureSubImage3D: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: imageSize with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> copyBufferSubData: readTarget with: writeTarget with: readOffset with: writeOffset with: size [

	<generated>
	library copyBufferSubData: readTarget with: writeTarget with: readOffset with: writeOffset with: size.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> copyImageSubData: srcName with: srcTarget with: srcLevel with: srcX with: srcY with: srcZ with: dstName with: dstTarget with: dstLevel with: dstX with: dstY with: dstZ with: srcWidth with: srcHeight with: srcDepth [

	<generated>
	library copyImageSubData: srcName with: srcTarget with: srcLevel with: srcX with: srcY with: srcZ with: dstName with: dstTarget with: dstLevel with: dstX with: dstY with: dstZ with: srcWidth with: srcHeight with: srcDepth.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> copyNamedBufferSubData: readBuffer with: writeBuffer with: readOffset with: writeOffset with: size [

	<generated>
	library copyNamedBufferSubData: readBuffer with: writeBuffer with: readOffset with: writeOffset with: size.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> copyPixels: x with: y with: width with: height with: type [

	<generated>
	library copyPixels: x with: y with: width with: height with: type.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> copyTexImage1D: target with: level with: internalformat with: x with: y with: width with: border [

	<generated>
	library copyTexImage1D: target with: level with: internalformat with: x with: y with: width with: border.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> copyTexImage2D: target with: level with: internalformat with: x with: y with: width with: height with: border [

	<generated>
	library copyTexImage2D: target with: level with: internalformat with: x with: y with: width with: height with: border.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> copyTexSubImage1D: target with: level with: xoffset with: x with: y with: width [

	<generated>
	library copyTexSubImage1D: target with: level with: xoffset with: x with: y with: width.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> copyTexSubImage2D: target with: level with: xoffset with: yoffset with: x with: y with: width with: height [

	<generated>
	library copyTexSubImage2D: target with: level with: xoffset with: yoffset with: x with: y with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> copyTexSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: x with: y with: width with: height [

	<generated>
	library copyTexSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: x with: y with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> copyTextureSubImage1D: texture with: level with: xoffset with: x with: y with: width [

	<generated>
	library copyTextureSubImage1D: texture with: level with: xoffset with: x with: y with: width.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> copyTextureSubImage2D: texture with: level with: xoffset with: yoffset with: x with: y with: width with: height [

	<generated>
	library copyTextureSubImage2D: texture with: level with: xoffset with: yoffset with: x with: y with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> copyTextureSubImage3D: texture with: level with: xoffset with: yoffset with: zoffset with: x with: y with: width with: height [

	<generated>
	library copyTextureSubImage3D: texture with: level with: xoffset with: yoffset with: zoffset with: x with: y with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> createBuffers: n with: buffers [

	<generated>
	library createBuffers: n with: buffers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> createFramebuffers: n with: framebuffers [

	<generated>
	library createFramebuffers: n with: framebuffers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> createProgram [

	<generated>
	library createProgram.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> createProgramPipelines: n with: pipelines [

	<generated>
	library createProgramPipelines: n with: pipelines.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> createQueries: target with: n with: ids [

	<generated>
	library createQueries: target with: n with: ids.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> createRenderbuffers: n with: renderbuffers [

	<generated>
	library createRenderbuffers: n with: renderbuffers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> createSamplers: n with: samplers [

	<generated>
	library createSamplers: n with: samplers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> createShader: type [

	<generated>
	library createShader: type.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> createShaderProgramv: type with: count with: strings [

	<generated>
	library createShaderProgramv: type with: count with: strings.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> createTextures: target with: n with: textures [

	<generated>
	library createTextures: target with: n with: textures.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> createTransformFeedbacks: n with: ids [

	<generated>
	library createTransformFeedbacks: n with: ids.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> createVertexArrays: n with: arrays [

	<generated>
	library createVertexArrays: n with: arrays.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> cullFace: mode [

	<generated>
	library cullFace: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> debugMessageCallback: callback with: userParam [

	<generated>
	library debugMessageCallback: callback with: userParam.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> debugMessageControl: source with: type with: severity with: count with: ids with: enabled [

	<generated>
	library debugMessageControl: source with: type with: severity with: count with: ids with: enabled.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> debugMessageInsert: source with: type with: id with: severity with: length with: buf [

	<generated>
	library debugMessageInsert: source with: type with: id with: severity with: length with: buf.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteBuffers: n with: buffers [

	<generated>
	library deleteBuffers: n with: buffers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteFramebuffers: n with: framebuffers [

	<generated>
	library deleteFramebuffers: n with: framebuffers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteLists: list with: range [

	<generated>
	library deleteLists: list with: range.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteProgram: program [

	<generated>
	library deleteProgram: program.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteProgramPipelines: n with: pipelines [

	<generated>
	library deleteProgramPipelines: n with: pipelines.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteQueries: n with: ids [

	<generated>
	library deleteQueries: n with: ids.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteRenderbuffers: n with: renderbuffers [

	<generated>
	library deleteRenderbuffers: n with: renderbuffers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteSamplers: count with: samplers [

	<generated>
	library deleteSamplers: count with: samplers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteShader: shader [

	<generated>
	library deleteShader: shader.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteSync: sync [

	<generated>
	library deleteSync: sync.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteTextures: n with: textures [

	<generated>
	library deleteTextures: n with: textures.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteTransformFeedbacks: n with: ids [

	<generated>
	library deleteTransformFeedbacks: n with: ids.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> deleteVertexArrays: n with: arrays [

	<generated>
	library deleteVertexArrays: n with: arrays.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> depthFunc: func [

	<generated>
	library depthFunc: func.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> depthMask: flag [

	<generated>
	library depthMask: flag.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> depthRange: n with: f [

	<generated>
	library depthRange: n with: f.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> depthRangeArrayv: first with: count with: v [

	<generated>
	library depthRangeArrayv: first with: count with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> depthRangeIndexed: index with: n with: f [

	<generated>
	library depthRangeIndexed: index with: n with: f.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> depthRangef: n with: f [

	<generated>
	library depthRangef: n with: f.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> depthRangex: n with: f [

	<generated>
	library depthRangex: n with: f.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> detachShader: program with: shader [

	<generated>
	library detachShader: program with: shader.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> disable: cap [

	<generated>
	library disable: cap.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> disableClientState: array [

	<generated>
	library disableClientState: array.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> disableVertexArrayAttrib: vaobj with: index [

	<generated>
	library disableVertexArrayAttrib: vaobj with: index.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> disableVertexAttribArray: index [

	<generated>
	library disableVertexAttribArray: index.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> disablei: target with: index [

	<generated>
	library disablei: target with: index.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> dispatchCompute: num_groups_x with: num_groups_y with: num_groups_z [

	<generated>
	library dispatchCompute: num_groups_x with: num_groups_y with: num_groups_z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> dispatchComputeIndirect: indirect [

	<generated>
	library dispatchComputeIndirect: indirect.
	library checkForError
]

{
	#category : #handler,
	#timestamp : 'stlu 2/22/2021 13:35'
}
GLDebugLibrary >> doesNotUnderstand: aMessage [

	^ aMessage sendTo: library
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawArrays: mode with: first with: count [

	<generated>
	library drawArrays: mode with: first with: count.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawArraysIndirect: mode with: indirect [

	<generated>
	library drawArraysIndirect: mode with: indirect.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawArraysInstanced: mode with: first with: count with: instancecount [

	<generated>
	library drawArraysInstanced: mode with: first with: count with: instancecount.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawArraysInstancedBaseInstance: mode with: first with: count with: instancecount with: baseinstance [

	<generated>
	library drawArraysInstancedBaseInstance: mode with: first with: count with: instancecount with: baseinstance.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawBuffer: buf [

	<generated>
	library drawBuffer: buf.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawBuffers: n with: bufs [

	<generated>
	library drawBuffers: n with: bufs.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawElements: mode with: count with: type with: indices [

	<generated>
	library drawElements: mode with: count with: type with: indices.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawElementsBaseVertex: mode with: count with: type with: indices with: basevertex [

	<generated>
	library drawElementsBaseVertex: mode with: count with: type with: indices with: basevertex.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawElementsIndirect: mode with: type with: indirect [

	<generated>
	library drawElementsIndirect: mode with: type with: indirect.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawElementsInstanced: mode with: count with: type with: indices with: instancecount [

	<generated>
	library drawElementsInstanced: mode with: count with: type with: indices with: instancecount.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawElementsInstancedBaseInstance: mode with: count with: type with: indices with: instancecount with: baseinstance [

	<generated>
	library drawElementsInstancedBaseInstance: mode with: count with: type with: indices with: instancecount with: baseinstance.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawElementsInstancedBaseVertex: mode with: count with: type with: indices with: instancecount with: basevertex [

	<generated>
	library drawElementsInstancedBaseVertex: mode with: count with: type with: indices with: instancecount with: basevertex.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawElementsInstancedBaseVertexBaseInstance: mode with: count with: type with: indices with: instancecount with: basevertex with: baseinstance [

	<generated>
	library drawElementsInstancedBaseVertexBaseInstance: mode with: count with: type with: indices with: instancecount with: basevertex with: baseinstance.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawPixels: width with: height with: format with: type with: pixels [

	<generated>
	library drawPixels: width with: height with: format with: type with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawRangeElements: mode with: start with: end with: count with: type with: indices [

	<generated>
	library drawRangeElements: mode with: start with: end with: count with: type with: indices.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawRangeElementsBaseVertex: mode with: start with: end with: count with: type with: indices with: basevertex [

	<generated>
	library drawRangeElementsBaseVertex: mode with: start with: end with: count with: type with: indices with: basevertex.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawTransformFeedback: mode with: id [

	<generated>
	library drawTransformFeedback: mode with: id.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawTransformFeedbackInstanced: mode with: id with: instancecount [

	<generated>
	library drawTransformFeedbackInstanced: mode with: id with: instancecount.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawTransformFeedbackStream: mode with: id with: stream [

	<generated>
	library drawTransformFeedbackStream: mode with: id with: stream.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> drawTransformFeedbackStreamInstanced: mode with: id with: stream with: instancecount [

	<generated>
	library drawTransformFeedbackStreamInstanced: mode with: id with: stream with: instancecount.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> edgeFlag: flag [

	<generated>
	library edgeFlag: flag.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> edgeFlagPointer: stride with: pointer [

	<generated>
	library edgeFlagPointer: stride with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> edgeFlagv: flag [

	<generated>
	library edgeFlagv: flag.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> enable: cap [

	<generated>
	library enable: cap.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> enableClientState: array [

	<generated>
	library enableClientState: array.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> enableVertexArrayAttrib: vaobj with: index [

	<generated>
	library enableVertexArrayAttrib: vaobj with: index.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> enableVertexAttribArray: index [

	<generated>
	library enableVertexAttribArray: index.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> enablei: target with: index [

	<generated>
	library enablei: target with: index.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> end [

	<generated>
	library end.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> endConditionalRender [

	<generated>
	library endConditionalRender.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> endList [

	<generated>
	library endList.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> endQuery: target [

	<generated>
	library endQuery: target.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> endQueryIndexed: target with: index [

	<generated>
	library endQueryIndexed: target with: index.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> endTransformFeedback [

	<generated>
	library endTransformFeedback.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> evalCoord1d: u [

	<generated>
	library evalCoord1d: u.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> evalCoord1dv: u [

	<generated>
	library evalCoord1dv: u.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> evalCoord1f: u [

	<generated>
	library evalCoord1f: u.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> evalCoord1fv: u [

	<generated>
	library evalCoord1fv: u.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> evalCoord2d: u with: v [

	<generated>
	library evalCoord2d: u with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> evalCoord2dv: u [

	<generated>
	library evalCoord2dv: u.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> evalCoord2f: u with: v [

	<generated>
	library evalCoord2f: u with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> evalCoord2fv: u [

	<generated>
	library evalCoord2fv: u.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> evalMesh1: mode with: i1 with: i2 [

	<generated>
	library evalMesh1: mode with: i1 with: i2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> evalMesh2: mode with: i1 with: i2 with: j1 with: j2 [

	<generated>
	library evalMesh2: mode with: i1 with: i2 with: j1 with: j2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> evalPoint1: i [

	<generated>
	library evalPoint1: i.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> evalPoint2: i with: j [

	<generated>
	library evalPoint2: i with: j.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> feedbackBuffer: size with: type with: buffer [

	<generated>
	library feedbackBuffer: size with: type with: buffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> fenceSync: condition with: flags [

	<generated>
	library fenceSync: condition with: flags.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> finish [

	<generated>
	library finish.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> flush [

	<generated>
	library flush.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> flushMappedBufferRange: target with: offset with: length [

	<generated>
	library flushMappedBufferRange: target with: offset with: length.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> flushMappedNamedBufferRange: buffer with: offset with: length [

	<generated>
	library flushMappedNamedBufferRange: buffer with: offset with: length.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> fogCoordPointer: type with: stride with: pointer [

	<generated>
	library fogCoordPointer: type with: stride with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> fogCoordd: coord [

	<generated>
	library fogCoordd: coord.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> fogCoorddv: coord [

	<generated>
	library fogCoorddv: coord.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> fogCoordf: coord [

	<generated>
	library fogCoordf: coord.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> fogCoordfv: coord [

	<generated>
	library fogCoordfv: coord.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> fogf: pname with: param [

	<generated>
	library fogf: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> fogfv: pname with: params [

	<generated>
	library fogfv: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> fogi: pname with: param [

	<generated>
	library fogi: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> fogiv: pname with: params [

	<generated>
	library fogiv: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> fogx: pname with: param [

	<generated>
	library fogx: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> fogxv: pname with: param [

	<generated>
	library fogxv: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> framebufferParameteri: target with: pname with: param [

	<generated>
	library framebufferParameteri: target with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> framebufferRenderbuffer: target with: attachment with: renderbuffertarget with: renderbuffer [

	<generated>
	library framebufferRenderbuffer: target with: attachment with: renderbuffertarget with: renderbuffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> framebufferTexture1D: target with: attachment with: textarget with: texture with: level [

	<generated>
	library framebufferTexture1D: target with: attachment with: textarget with: texture with: level.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> framebufferTexture2D: target with: attachment with: textarget with: texture with: level [

	<generated>
	library framebufferTexture2D: target with: attachment with: textarget with: texture with: level.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> framebufferTexture3D: target with: attachment with: textarget with: texture with: level with: zoffset [

	<generated>
	library framebufferTexture3D: target with: attachment with: textarget with: texture with: level with: zoffset.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> framebufferTexture: target with: attachment with: texture with: level [

	<generated>
	library framebufferTexture: target with: attachment with: texture with: level.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> framebufferTextureLayer: target with: attachment with: texture with: level with: layer [

	<generated>
	library framebufferTextureLayer: target with: attachment with: texture with: level with: layer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> frontFace: mode [

	<generated>
	library frontFace: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> frustum: left with: right with: bottom with: top with: zNear with: zFar [

	<generated>
	library frustum: left with: right with: bottom with: top with: zNear with: zFar.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> frustumf: l with: r with: b with: t with: n with: f [

	<generated>
	library frustumf: l with: r with: b with: t with: n with: f.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> frustumx: l with: r with: b with: t with: n with: f [

	<generated>
	library frustumx: l with: r with: b with: t with: n with: f.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> genBuffers: n with: buffers [

	<generated>
	library genBuffers: n with: buffers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> genFramebuffers: n with: framebuffers [

	<generated>
	library genFramebuffers: n with: framebuffers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> genLists: range [

	<generated>
	library genLists: range.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> genProgramPipelines: n with: pipelines [

	<generated>
	library genProgramPipelines: n with: pipelines.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> genQueries: n with: ids [

	<generated>
	library genQueries: n with: ids.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> genRenderbuffers: n with: renderbuffers [

	<generated>
	library genRenderbuffers: n with: renderbuffers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> genSamplers: count with: samplers [

	<generated>
	library genSamplers: count with: samplers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> genTextures: n with: textures [

	<generated>
	library genTextures: n with: textures.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> genTransformFeedbacks: n with: ids [

	<generated>
	library genTransformFeedbacks: n with: ids.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> genVertexArrays: n with: arrays [

	<generated>
	library genVertexArrays: n with: arrays.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> generateMipmap: target [

	<generated>
	library generateMipmap: target.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> generateTextureMipmap: texture [

	<generated>
	library generateTextureMipmap: texture.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getActiveAtomicCounterBufferiv: program with: bufferIndex with: pname with: params [

	<generated>
	library getActiveAtomicCounterBufferiv: program with: bufferIndex with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getActiveAttrib: program with: index with: bufSize with: length with: size with: type with: name [

	<generated>
	library getActiveAttrib: program with: index with: bufSize with: length with: size with: type with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getActiveSubroutineName: program with: shadertype with: index with: bufSize with: length with: name [

	<generated>
	library getActiveSubroutineName: program with: shadertype with: index with: bufSize with: length with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getActiveSubroutineUniformName: program with: shadertype with: index with: bufSize with: length with: name [

	<generated>
	library getActiveSubroutineUniformName: program with: shadertype with: index with: bufSize with: length with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getActiveSubroutineUniformiv: program with: shadertype with: index with: pname with: values [

	<generated>
	library getActiveSubroutineUniformiv: program with: shadertype with: index with: pname with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getActiveUniform: program with: index with: bufSize with: length with: size with: type with: name [

	<generated>
	library getActiveUniform: program with: index with: bufSize with: length with: size with: type with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getActiveUniformBlockName: program with: uniformBlockIndex with: bufSize with: length with: uniformBlockName [

	<generated>
	library getActiveUniformBlockName: program with: uniformBlockIndex with: bufSize with: length with: uniformBlockName.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getActiveUniformBlockiv: program with: uniformBlockIndex with: pname with: params [

	<generated>
	library getActiveUniformBlockiv: program with: uniformBlockIndex with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getActiveUniformName: program with: uniformIndex with: bufSize with: length with: uniformName [

	<generated>
	library getActiveUniformName: program with: uniformIndex with: bufSize with: length with: uniformName.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getActiveUniformsiv: program with: uniformCount with: uniformIndices with: pname with: params [

	<generated>
	library getActiveUniformsiv: program with: uniformCount with: uniformIndices with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getAttachedShaders: program with: maxCount with: count with: shaders [

	<generated>
	library getAttachedShaders: program with: maxCount with: count with: shaders.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getAttribLocation: program with: name [

	<generated>
	library getAttribLocation: program with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getBooleani_v: target with: index with: data [

	<generated>
	library getBooleani_v: target with: index with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getBooleanv: pname with: data [

	<generated>
	library getBooleanv: pname with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getBufferParameteri64v: target with: pname with: params [

	<generated>
	library getBufferParameteri64v: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getBufferParameteriv: target with: pname with: params [

	<generated>
	library getBufferParameteriv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getBufferPointerv: target with: pname with: params [

	<generated>
	library getBufferPointerv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getBufferSubData: target with: offset with: size with: data [

	<generated>
	library getBufferSubData: target with: offset with: size with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getClipPlane: plane with: equation [

	<generated>
	library getClipPlane: plane with: equation.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getClipPlanef: plane with: equation [

	<generated>
	library getClipPlanef: plane with: equation.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getClipPlanex: plane with: equation [

	<generated>
	library getClipPlanex: plane with: equation.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getCompressedTexImage: target with: level with: img [

	<generated>
	library getCompressedTexImage: target with: level with: img.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getCompressedTextureImage: texture with: level with: bufSize with: pixels [

	<generated>
	library getCompressedTextureImage: texture with: level with: bufSize with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getCompressedTextureSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: bufSize with: pixels [

	<generated>
	library getCompressedTextureSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: bufSize with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getDebugMessageLog: count with: bufSize with: sources with: types with: ids with: severities with: lengths with: messageLog [

	<generated>
	library getDebugMessageLog: count with: bufSize with: sources with: types with: ids with: severities with: lengths with: messageLog.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getDoublei_v: target with: index with: data [

	<generated>
	library getDoublei_v: target with: index with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getDoublev: pname with: data [

	<generated>
	library getDoublev: pname with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getError [

	<generated>
	library getError.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getFixedv: pname with: params [

	<generated>
	library getFixedv: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getFloati_v: target with: index with: data [

	<generated>
	library getFloati_v: target with: index with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getFloatv: pname with: data [

	<generated>
	library getFloatv: pname with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getFragDataIndex: program with: name [

	<generated>
	library getFragDataIndex: program with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getFragDataLocation: program with: name [

	<generated>
	library getFragDataLocation: program with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getFramebufferAttachmentParameteriv: target with: attachment with: pname with: params [

	<generated>
	library getFramebufferAttachmentParameteriv: target with: attachment with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getFramebufferParameteriv: target with: pname with: params [

	<generated>
	library getFramebufferParameteriv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getGraphicsResetStatus [

	<generated>
	library getGraphicsResetStatus.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getInteger64i_v: target with: index with: data [

	<generated>
	library getInteger64i_v: target with: index with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getInteger64v: pname with: data [

	<generated>
	library getInteger64v: pname with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getIntegeri_v: target with: index with: data [

	<generated>
	library getIntegeri_v: target with: index with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getIntegerv: pname with: data [

	<generated>
	library getIntegerv: pname with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getInternalformati64v: target with: internalformat with: pname with: count with: params [

	<generated>
	library getInternalformati64v: target with: internalformat with: pname with: count with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getInternalformativ: target with: internalformat with: pname with: count with: params [

	<generated>
	library getInternalformativ: target with: internalformat with: pname with: count with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getLightfv: light with: pname with: params [

	<generated>
	library getLightfv: light with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getLightiv: light with: pname with: params [

	<generated>
	library getLightiv: light with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getLightxv: light with: pname with: params [

	<generated>
	library getLightxv: light with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getMapdv: target with: query with: v [

	<generated>
	library getMapdv: target with: query with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getMapfv: target with: query with: v [

	<generated>
	library getMapfv: target with: query with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getMapiv: target with: query with: v [

	<generated>
	library getMapiv: target with: query with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getMaterialfv: face with: pname with: params [

	<generated>
	library getMaterialfv: face with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getMaterialiv: face with: pname with: params [

	<generated>
	library getMaterialiv: face with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getMaterialxv: face with: pname with: params [

	<generated>
	library getMaterialxv: face with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getMultisamplefv: pname with: index with: val [

	<generated>
	library getMultisamplefv: pname with: index with: val.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getNamedBufferParameteri64v: buffer with: pname with: params [

	<generated>
	library getNamedBufferParameteri64v: buffer with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getNamedBufferParameteriv: buffer with: pname with: params [

	<generated>
	library getNamedBufferParameteriv: buffer with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getNamedBufferPointerv: buffer with: pname with: params [

	<generated>
	library getNamedBufferPointerv: buffer with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getNamedBufferSubData: buffer with: offset with: size with: data [

	<generated>
	library getNamedBufferSubData: buffer with: offset with: size with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getNamedFramebufferAttachmentParameteriv: framebuffer with: attachment with: pname with: params [

	<generated>
	library getNamedFramebufferAttachmentParameteriv: framebuffer with: attachment with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getNamedFramebufferParameteriv: framebuffer with: pname with: param [

	<generated>
	library getNamedFramebufferParameteriv: framebuffer with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getNamedRenderbufferParameteriv: renderbuffer with: pname with: params [

	<generated>
	library getNamedRenderbufferParameteriv: renderbuffer with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getObjectLabel: identifier with: name with: bufSize with: length with: label [

	<generated>
	library getObjectLabel: identifier with: name with: bufSize with: length with: label.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getObjectPtrLabel: ptr with: bufSize with: length with: label [

	<generated>
	library getObjectPtrLabel: ptr with: bufSize with: length with: label.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getPixelMapfv: map with: values [

	<generated>
	library getPixelMapfv: map with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getPixelMapuiv: map with: values [

	<generated>
	library getPixelMapuiv: map with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getPixelMapusv: map with: values [

	<generated>
	library getPixelMapusv: map with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getPointerv: pname with: params [

	<generated>
	library getPointerv: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getPolygonStipple: mask [

	<generated>
	library getPolygonStipple: mask.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getProgramBinary: program with: bufSize with: length with: binaryFormat with: binary [

	<generated>
	library getProgramBinary: program with: bufSize with: length with: binaryFormat with: binary.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getProgramInfoLog: program with: bufSize with: length with: infoLog [

	<generated>
	library getProgramInfoLog: program with: bufSize with: length with: infoLog.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getProgramInterfaceiv: program with: programInterface with: pname with: params [

	<generated>
	library getProgramInterfaceiv: program with: programInterface with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getProgramPipelineInfoLog: pipeline with: bufSize with: length with: infoLog [

	<generated>
	library getProgramPipelineInfoLog: pipeline with: bufSize with: length with: infoLog.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getProgramPipelineiv: pipeline with: pname with: params [

	<generated>
	library getProgramPipelineiv: pipeline with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getProgramResourceIndex: program with: programInterface with: name [

	<generated>
	library getProgramResourceIndex: program with: programInterface with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getProgramResourceLocation: program with: programInterface with: name [

	<generated>
	library getProgramResourceLocation: program with: programInterface with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getProgramResourceLocationIndex: program with: programInterface with: name [

	<generated>
	library getProgramResourceLocationIndex: program with: programInterface with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getProgramResourceName: program with: programInterface with: index with: bufSize with: length with: name [

	<generated>
	library getProgramResourceName: program with: programInterface with: index with: bufSize with: length with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getProgramResourceiv: program with: programInterface with: index with: propCount with: props with: count with: length with: params [

	<generated>
	library getProgramResourceiv: program with: programInterface with: index with: propCount with: props with: count with: length with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getProgramStageiv: program with: shadertype with: pname with: values [

	<generated>
	library getProgramStageiv: program with: shadertype with: pname with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getProgramiv: program with: pname with: params [

	<generated>
	library getProgramiv: program with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getQueryBufferObjecti64v: id with: buffer with: pname with: offset [

	<generated>
	library getQueryBufferObjecti64v: id with: buffer with: pname with: offset.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getQueryBufferObjectiv: id with: buffer with: pname with: offset [

	<generated>
	library getQueryBufferObjectiv: id with: buffer with: pname with: offset.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getQueryBufferObjectui64v: id with: buffer with: pname with: offset [

	<generated>
	library getQueryBufferObjectui64v: id with: buffer with: pname with: offset.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getQueryBufferObjectuiv: id with: buffer with: pname with: offset [

	<generated>
	library getQueryBufferObjectuiv: id with: buffer with: pname with: offset.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getQueryIndexediv: target with: index with: pname with: params [

	<generated>
	library getQueryIndexediv: target with: index with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getQueryObjecti64v: id with: pname with: params [

	<generated>
	library getQueryObjecti64v: id with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getQueryObjectiv: id with: pname with: params [

	<generated>
	library getQueryObjectiv: id with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getQueryObjectui64v: id with: pname with: params [

	<generated>
	library getQueryObjectui64v: id with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getQueryObjectuiv: id with: pname with: params [

	<generated>
	library getQueryObjectuiv: id with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getQueryiv: target with: pname with: params [

	<generated>
	library getQueryiv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getRenderbufferParameteriv: target with: pname with: params [

	<generated>
	library getRenderbufferParameteriv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getSamplerParameterIiv: sampler with: pname with: params [

	<generated>
	library getSamplerParameterIiv: sampler with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getSamplerParameterIuiv: sampler with: pname with: params [

	<generated>
	library getSamplerParameterIuiv: sampler with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getSamplerParameterfv: sampler with: pname with: params [

	<generated>
	library getSamplerParameterfv: sampler with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getSamplerParameteriv: sampler with: pname with: params [

	<generated>
	library getSamplerParameteriv: sampler with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getShaderInfoLog: shader with: bufSize with: length with: infoLog [

	<generated>
	library getShaderInfoLog: shader with: bufSize with: length with: infoLog.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getShaderPrecisionFormat: shadertype with: precisiontype with: range with: precision [

	<generated>
	library getShaderPrecisionFormat: shadertype with: precisiontype with: range with: precision.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getShaderSource: shader with: bufSize with: length with: source [

	<generated>
	library getShaderSource: shader with: bufSize with: length with: source.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getShaderiv: shader with: pname with: params [

	<generated>
	library getShaderiv: shader with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getString: name [

	<generated>
	library getString: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getStringi: name with: index [

	<generated>
	library getStringi: name with: index.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getSubroutineIndex: program with: shadertype with: name [

	<generated>
	library getSubroutineIndex: program with: shadertype with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getSubroutineUniformLocation: program with: shadertype with: name [

	<generated>
	library getSubroutineUniformLocation: program with: shadertype with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getSynciv: sync with: pname with: count with: length with: values [

	<generated>
	library getSynciv: sync with: pname with: count with: length with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexEnvfv: target with: pname with: params [

	<generated>
	library getTexEnvfv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexEnviv: target with: pname with: params [

	<generated>
	library getTexEnviv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexEnvxv: target with: pname with: params [

	<generated>
	library getTexEnvxv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexGendv: coord with: pname with: params [

	<generated>
	library getTexGendv: coord with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexGenfv: coord with: pname with: params [

	<generated>
	library getTexGenfv: coord with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexGeniv: coord with: pname with: params [

	<generated>
	library getTexGeniv: coord with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexImage: target with: level with: format with: type with: pixels [

	<generated>
	library getTexImage: target with: level with: format with: type with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexLevelParameterfv: target with: level with: pname with: params [

	<generated>
	library getTexLevelParameterfv: target with: level with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexLevelParameteriv: target with: level with: pname with: params [

	<generated>
	library getTexLevelParameteriv: target with: level with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexParameterIiv: target with: pname with: params [

	<generated>
	library getTexParameterIiv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexParameterIuiv: target with: pname with: params [

	<generated>
	library getTexParameterIuiv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexParameterfv: target with: pname with: params [

	<generated>
	library getTexParameterfv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexParameteriv: target with: pname with: params [

	<generated>
	library getTexParameteriv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTexParameterxv: target with: pname with: params [

	<generated>
	library getTexParameterxv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTextureImage: texture with: level with: format with: type with: bufSize with: pixels [

	<generated>
	library getTextureImage: texture with: level with: format with: type with: bufSize with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTextureLevelParameterfv: texture with: level with: pname with: params [

	<generated>
	library getTextureLevelParameterfv: texture with: level with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTextureLevelParameteriv: texture with: level with: pname with: params [

	<generated>
	library getTextureLevelParameteriv: texture with: level with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTextureParameterIiv: texture with: pname with: params [

	<generated>
	library getTextureParameterIiv: texture with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTextureParameterIuiv: texture with: pname with: params [

	<generated>
	library getTextureParameterIuiv: texture with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTextureParameterfv: texture with: pname with: params [

	<generated>
	library getTextureParameterfv: texture with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTextureParameteriv: texture with: pname with: params [

	<generated>
	library getTextureParameteriv: texture with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTextureSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: bufSize with: pixels [

	<generated>
	library getTextureSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: bufSize with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTransformFeedbackVarying: program with: index with: bufSize with: length with: size with: type with: name [

	<generated>
	library getTransformFeedbackVarying: program with: index with: bufSize with: length with: size with: type with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTransformFeedbacki64_v: xfb with: pname with: index with: param [

	<generated>
	library getTransformFeedbacki64_v: xfb with: pname with: index with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTransformFeedbacki_v: xfb with: pname with: index with: param [

	<generated>
	library getTransformFeedbacki_v: xfb with: pname with: index with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getTransformFeedbackiv: xfb with: pname with: param [

	<generated>
	library getTransformFeedbackiv: xfb with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getUniformBlockIndex: program with: uniformBlockName [

	<generated>
	library getUniformBlockIndex: program with: uniformBlockName.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getUniformIndices: program with: uniformCount with: uniformNames with: uniformIndices [

	<generated>
	library getUniformIndices: program with: uniformCount with: uniformNames with: uniformIndices.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getUniformLocation: program with: name [

	<generated>
	library getUniformLocation: program with: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getUniformSubroutineuiv: shadertype with: location with: params [

	<generated>
	library getUniformSubroutineuiv: shadertype with: location with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getUniformdv: program with: location with: params [

	<generated>
	library getUniformdv: program with: location with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getUniformfv: program with: location with: params [

	<generated>
	library getUniformfv: program with: location with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getUniformiv: program with: location with: params [

	<generated>
	library getUniformiv: program with: location with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getUniformuiv: program with: location with: params [

	<generated>
	library getUniformuiv: program with: location with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getVertexArrayIndexed64iv: vaobj with: index with: pname with: param [

	<generated>
	library getVertexArrayIndexed64iv: vaobj with: index with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getVertexArrayIndexediv: vaobj with: index with: pname with: param [

	<generated>
	library getVertexArrayIndexediv: vaobj with: index with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getVertexArrayiv: vaobj with: pname with: param [

	<generated>
	library getVertexArrayiv: vaobj with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getVertexAttribIiv: index with: pname with: params [

	<generated>
	library getVertexAttribIiv: index with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getVertexAttribIuiv: index with: pname with: params [

	<generated>
	library getVertexAttribIuiv: index with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getVertexAttribLdv: index with: pname with: params [

	<generated>
	library getVertexAttribLdv: index with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getVertexAttribPointerv: index with: pname with: pointer [

	<generated>
	library getVertexAttribPointerv: index with: pname with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getVertexAttribdv: index with: pname with: params [

	<generated>
	library getVertexAttribdv: index with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getVertexAttribfv: index with: pname with: params [

	<generated>
	library getVertexAttribfv: index with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getVertexAttribiv: index with: pname with: params [

	<generated>
	library getVertexAttribiv: index with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnColorTable: target with: format with: type with: bufSize with: table [

	<generated>
	library getnColorTable: target with: format with: type with: bufSize with: table.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnCompressedTexImage: target with: lod with: bufSize with: pixels [

	<generated>
	library getnCompressedTexImage: target with: lod with: bufSize with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnConvolutionFilter: target with: format with: type with: bufSize with: image [

	<generated>
	library getnConvolutionFilter: target with: format with: type with: bufSize with: image.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnHistogram: target with: reset with: format with: type with: bufSize with: values [

	<generated>
	library getnHistogram: target with: reset with: format with: type with: bufSize with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnMapdv: target with: query with: bufSize with: v [

	<generated>
	library getnMapdv: target with: query with: bufSize with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnMapfv: target with: query with: bufSize with: v [

	<generated>
	library getnMapfv: target with: query with: bufSize with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnMapiv: target with: query with: bufSize with: v [

	<generated>
	library getnMapiv: target with: query with: bufSize with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnMinmax: target with: reset with: format with: type with: bufSize with: values [

	<generated>
	library getnMinmax: target with: reset with: format with: type with: bufSize with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnPixelMapfv: map with: bufSize with: values [

	<generated>
	library getnPixelMapfv: map with: bufSize with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnPixelMapuiv: map with: bufSize with: values [

	<generated>
	library getnPixelMapuiv: map with: bufSize with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnPixelMapusv: map with: bufSize with: values [

	<generated>
	library getnPixelMapusv: map with: bufSize with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnPolygonStipple: bufSize with: pattern [

	<generated>
	library getnPolygonStipple: bufSize with: pattern.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnSeparableFilter: target with: format with: type with: rowBufSize with: row with: columnBufSize with: column with: span [

	<generated>
	library getnSeparableFilter: target with: format with: type with: rowBufSize with: row with: columnBufSize with: column with: span.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnTexImage: target with: level with: format with: type with: bufSize with: pixels [

	<generated>
	library getnTexImage: target with: level with: format with: type with: bufSize with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnUniformdv: program with: location with: bufSize with: params [

	<generated>
	library getnUniformdv: program with: location with: bufSize with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnUniformfv: program with: location with: bufSize with: params [

	<generated>
	library getnUniformfv: program with: location with: bufSize with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnUniformiv: program with: location with: bufSize with: params [

	<generated>
	library getnUniformiv: program with: location with: bufSize with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> getnUniformuiv: program with: location with: bufSize with: params [

	<generated>
	library getnUniformuiv: program with: location with: bufSize with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> hint: target with: mode [

	<generated>
	library hint: target with: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> indexMask: mask [

	<generated>
	library indexMask: mask.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> indexPointer: type with: stride with: pointer [

	<generated>
	library indexPointer: type with: stride with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> indexd: c [

	<generated>
	library indexd: c.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> indexdv: c [

	<generated>
	library indexdv: c.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> indexf: c [

	<generated>
	library indexf: c.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> indexfv: c [

	<generated>
	library indexfv: c.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> indexi: c [

	<generated>
	library indexi: c.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> indexiv: c [

	<generated>
	library indexiv: c.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> indexs: c [

	<generated>
	library indexs: c.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> indexsv: c [

	<generated>
	library indexsv: c.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> indexub: c [

	<generated>
	library indexub: c.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> indexubv: c [

	<generated>
	library indexubv: c.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> initNames [

	<generated>
	library initNames.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> interleavedArrays: format with: stride with: pointer [

	<generated>
	library interleavedArrays: format with: stride with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> invalidateBufferData: buffer [

	<generated>
	library invalidateBufferData: buffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> invalidateBufferSubData: buffer with: offset with: length [

	<generated>
	library invalidateBufferSubData: buffer with: offset with: length.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> invalidateFramebuffer: target with: numAttachments with: attachments [

	<generated>
	library invalidateFramebuffer: target with: numAttachments with: attachments.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> invalidateNamedFramebufferData: framebuffer with: numAttachments with: attachments [

	<generated>
	library invalidateNamedFramebufferData: framebuffer with: numAttachments with: attachments.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> invalidateNamedFramebufferSubData: framebuffer with: numAttachments with: attachments with: x with: y with: width with: height [

	<generated>
	library invalidateNamedFramebufferSubData: framebuffer with: numAttachments with: attachments with: x with: y with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> invalidateSubFramebuffer: target with: numAttachments with: attachments with: x with: y with: width with: height [

	<generated>
	library invalidateSubFramebuffer: target with: numAttachments with: attachments with: x with: y with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> invalidateTexImage: texture with: level [

	<generated>
	library invalidateTexImage: texture with: level.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> invalidateTexSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth [

	<generated>
	library invalidateTexSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isBuffer: buffer [

	<generated>
	library isBuffer: buffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isEnabled: cap [

	<generated>
	library isEnabled: cap.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isEnabledi: target with: index [

	<generated>
	library isEnabledi: target with: index.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isFramebuffer: framebuffer [

	<generated>
	library isFramebuffer: framebuffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isList: list [

	<generated>
	library isList: list.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isProgram: program [

	<generated>
	library isProgram: program.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isProgramPipeline: pipeline [

	<generated>
	library isProgramPipeline: pipeline.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isQuery: id [

	<generated>
	library isQuery: id.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isRenderbuffer: renderbuffer [

	<generated>
	library isRenderbuffer: renderbuffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isSampler: sampler [

	<generated>
	library isSampler: sampler.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isShader: shader [

	<generated>
	library isShader: shader.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isSync: sync [

	<generated>
	library isSync: sync.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isTexture: texture [

	<generated>
	library isTexture: texture.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isTransformFeedback: id [

	<generated>
	library isTransformFeedback: id.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> isVertexArray: array [

	<generated>
	library isVertexArray: array.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lightModelf: pname with: param [

	<generated>
	library lightModelf: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lightModelfv: pname with: params [

	<generated>
	library lightModelfv: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lightModeli: pname with: param [

	<generated>
	library lightModeli: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lightModeliv: pname with: params [

	<generated>
	library lightModeliv: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lightModelx: pname with: param [

	<generated>
	library lightModelx: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lightModelxv: pname with: param [

	<generated>
	library lightModelxv: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lightf: light with: pname with: param [

	<generated>
	library lightf: light with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lightfv: light with: pname with: params [

	<generated>
	library lightfv: light with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lighti: light with: pname with: param [

	<generated>
	library lighti: light with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lightiv: light with: pname with: params [

	<generated>
	library lightiv: light with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lightx: light with: pname with: param [

	<generated>
	library lightx: light with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lightxv: light with: pname with: params [

	<generated>
	library lightxv: light with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lineStipple: factor with: pattern [

	<generated>
	library lineStipple: factor with: pattern.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lineWidth: width [

	<generated>
	library lineWidth: width.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> lineWidthx: width [

	<generated>
	library lineWidthx: width.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> linkProgram: program [

	<generated>
	library linkProgram: program.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> listBase: base [

	<generated>
	library listBase: base.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> loadIdentity [

	<generated>
	library loadIdentity.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> loadMatrixd: m [

	<generated>
	library loadMatrixd: m.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> loadMatrixf: m [

	<generated>
	library loadMatrixf: m.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> loadMatrixx: m [

	<generated>
	library loadMatrixx: m.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> loadName: name [

	<generated>
	library loadName: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> loadTransposeMatrixd: m [

	<generated>
	library loadTransposeMatrixd: m.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> loadTransposeMatrixf: m [

	<generated>
	library loadTransposeMatrixf: m.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> logicOp: opcode [

	<generated>
	library logicOp: opcode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> map1d: target with: u1 with: u2 with: stride with: order with: points [

	<generated>
	library map1d: target with: u1 with: u2 with: stride with: order with: points.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> map1f: target with: u1 with: u2 with: stride with: order with: points [

	<generated>
	library map1f: target with: u1 with: u2 with: stride with: order with: points.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> map2d: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	<generated>
	library map2d: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> map2f: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	<generated>
	library map2f: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> mapBuffer: target with: access [

	<generated>
	library mapBuffer: target with: access.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> mapBufferRange: target with: offset with: length with: access [

	<generated>
	library mapBufferRange: target with: offset with: length with: access.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> mapGrid1d: un with: u1 with: u2 [

	<generated>
	library mapGrid1d: un with: u1 with: u2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> mapGrid1f: un with: u1 with: u2 [

	<generated>
	library mapGrid1f: un with: u1 with: u2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> mapGrid2d: un with: u1 with: u2 with: vn with: v1 with: v2 [

	<generated>
	library mapGrid2d: un with: u1 with: u2 with: vn with: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> mapGrid2f: un with: u1 with: u2 with: vn with: v1 with: v2 [

	<generated>
	library mapGrid2f: un with: u1 with: u2 with: vn with: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> mapNamedBuffer: buffer with: access [

	<generated>
	library mapNamedBuffer: buffer with: access.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> mapNamedBufferRange: buffer with: offset with: length with: access [

	<generated>
	library mapNamedBufferRange: buffer with: offset with: length with: access.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> materialf: face with: pname with: param [

	<generated>
	library materialf: face with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> materialfv: face with: pname with: params [

	<generated>
	library materialfv: face with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> materiali: face with: pname with: param [

	<generated>
	library materiali: face with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> materialiv: face with: pname with: params [

	<generated>
	library materialiv: face with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> materialx: face with: pname with: param [

	<generated>
	library materialx: face with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> materialxv: face with: pname with: param [

	<generated>
	library materialxv: face with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> matrixMode: mode [

	<generated>
	library matrixMode: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> memoryBarrier: barriers [

	<generated>
	library memoryBarrier: barriers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> memoryBarrierByRegion: barriers [

	<generated>
	library memoryBarrierByRegion: barriers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> minSampleShading: value [

	<generated>
	library minSampleShading: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multMatrixd: m [

	<generated>
	library multMatrixd: m.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multMatrixf: m [

	<generated>
	library multMatrixf: m.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multMatrixx: m [

	<generated>
	library multMatrixx: m.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multTransposeMatrixd: m [

	<generated>
	library multTransposeMatrixd: m.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multTransposeMatrixf: m [

	<generated>
	library multTransposeMatrixf: m.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiDrawArrays: mode with: first with: count with: drawcount [

	<generated>
	library multiDrawArrays: mode with: first with: count with: drawcount.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiDrawArraysIndirect: mode with: indirect with: drawcount with: stride [

	<generated>
	library multiDrawArraysIndirect: mode with: indirect with: drawcount with: stride.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiDrawArraysIndirectCount: mode with: indirect with: drawcount with: maxdrawcount with: stride [

	<generated>
	library multiDrawArraysIndirectCount: mode with: indirect with: drawcount with: maxdrawcount with: stride.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiDrawElements: mode with: count with: type with: indices with: drawcount [

	<generated>
	library multiDrawElements: mode with: count with: type with: indices with: drawcount.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiDrawElementsBaseVertex: mode with: count with: type with: indices with: drawcount with: basevertex [

	<generated>
	library multiDrawElementsBaseVertex: mode with: count with: type with: indices with: drawcount with: basevertex.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiDrawElementsIndirect: mode with: type with: indirect with: drawcount with: stride [

	<generated>
	library multiDrawElementsIndirect: mode with: type with: indirect with: drawcount with: stride.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiDrawElementsIndirectCount: mode with: type with: indirect with: drawcount with: maxdrawcount with: stride [

	<generated>
	library multiDrawElementsIndirectCount: mode with: type with: indirect with: drawcount with: maxdrawcount with: stride.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord1d: target with: s [

	<generated>
	library multiTexCoord1d: target with: s.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord1dv: target with: v [

	<generated>
	library multiTexCoord1dv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord1f: target with: s [

	<generated>
	library multiTexCoord1f: target with: s.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord1fv: target with: v [

	<generated>
	library multiTexCoord1fv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord1i: target with: s [

	<generated>
	library multiTexCoord1i: target with: s.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord1iv: target with: v [

	<generated>
	library multiTexCoord1iv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord1s: target with: s [

	<generated>
	library multiTexCoord1s: target with: s.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord1sv: target with: v [

	<generated>
	library multiTexCoord1sv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord2d: target with: s with: t [

	<generated>
	library multiTexCoord2d: target with: s with: t.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord2dv: target with: v [

	<generated>
	library multiTexCoord2dv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord2f: target with: s with: t [

	<generated>
	library multiTexCoord2f: target with: s with: t.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord2fv: target with: v [

	<generated>
	library multiTexCoord2fv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord2i: target with: s with: t [

	<generated>
	library multiTexCoord2i: target with: s with: t.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord2iv: target with: v [

	<generated>
	library multiTexCoord2iv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord2s: target with: s with: t [

	<generated>
	library multiTexCoord2s: target with: s with: t.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord2sv: target with: v [

	<generated>
	library multiTexCoord2sv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord3d: target with: s with: t with: r [

	<generated>
	library multiTexCoord3d: target with: s with: t with: r.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord3dv: target with: v [

	<generated>
	library multiTexCoord3dv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord3f: target with: s with: t with: r [

	<generated>
	library multiTexCoord3f: target with: s with: t with: r.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord3fv: target with: v [

	<generated>
	library multiTexCoord3fv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord3i: target with: s with: t with: r [

	<generated>
	library multiTexCoord3i: target with: s with: t with: r.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord3iv: target with: v [

	<generated>
	library multiTexCoord3iv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord3s: target with: s with: t with: r [

	<generated>
	library multiTexCoord3s: target with: s with: t with: r.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord3sv: target with: v [

	<generated>
	library multiTexCoord3sv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord4d: target with: s with: t with: r with: q [

	<generated>
	library multiTexCoord4d: target with: s with: t with: r with: q.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord4dv: target with: v [

	<generated>
	library multiTexCoord4dv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord4f: target with: s with: t with: r with: q [

	<generated>
	library multiTexCoord4f: target with: s with: t with: r with: q.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord4fv: target with: v [

	<generated>
	library multiTexCoord4fv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord4i: target with: s with: t with: r with: q [

	<generated>
	library multiTexCoord4i: target with: s with: t with: r with: q.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord4iv: target with: v [

	<generated>
	library multiTexCoord4iv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord4s: target with: s with: t with: r with: q [

	<generated>
	library multiTexCoord4s: target with: s with: t with: r with: q.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord4sv: target with: v [

	<generated>
	library multiTexCoord4sv: target with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoord4x: texture with: s with: t with: r with: q [

	<generated>
	library multiTexCoord4x: texture with: s with: t with: r with: q.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoordP1ui: texture with: type with: coords [

	<generated>
	library multiTexCoordP1ui: texture with: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoordP1uiv: texture with: type with: coords [

	<generated>
	library multiTexCoordP1uiv: texture with: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoordP2ui: texture with: type with: coords [

	<generated>
	library multiTexCoordP2ui: texture with: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoordP2uiv: texture with: type with: coords [

	<generated>
	library multiTexCoordP2uiv: texture with: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoordP3ui: texture with: type with: coords [

	<generated>
	library multiTexCoordP3ui: texture with: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoordP3uiv: texture with: type with: coords [

	<generated>
	library multiTexCoordP3uiv: texture with: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoordP4ui: texture with: type with: coords [

	<generated>
	library multiTexCoordP4ui: texture with: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> multiTexCoordP4uiv: texture with: type with: coords [

	<generated>
	library multiTexCoordP4uiv: texture with: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> namedBufferData: buffer with: size with: data with: usage [

	<generated>
	library namedBufferData: buffer with: size with: data with: usage.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> namedBufferStorage: buffer with: size with: data with: flags [

	<generated>
	library namedBufferStorage: buffer with: size with: data with: flags.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> namedBufferSubData: buffer with: offset with: size with: data [

	<generated>
	library namedBufferSubData: buffer with: offset with: size with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> namedFramebufferDrawBuffer: framebuffer with: buf [

	<generated>
	library namedFramebufferDrawBuffer: framebuffer with: buf.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> namedFramebufferDrawBuffers: framebuffer with: n with: bufs [

	<generated>
	library namedFramebufferDrawBuffers: framebuffer with: n with: bufs.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> namedFramebufferParameteri: framebuffer with: pname with: param [

	<generated>
	library namedFramebufferParameteri: framebuffer with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> namedFramebufferReadBuffer: framebuffer with: src [

	<generated>
	library namedFramebufferReadBuffer: framebuffer with: src.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> namedFramebufferRenderbuffer: framebuffer with: attachment with: renderbuffertarget with: renderbuffer [

	<generated>
	library namedFramebufferRenderbuffer: framebuffer with: attachment with: renderbuffertarget with: renderbuffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> namedFramebufferTexture: framebuffer with: attachment with: texture with: level [

	<generated>
	library namedFramebufferTexture: framebuffer with: attachment with: texture with: level.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> namedFramebufferTextureLayer: framebuffer with: attachment with: texture with: level with: layer [

	<generated>
	library namedFramebufferTextureLayer: framebuffer with: attachment with: texture with: level with: layer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> namedRenderbufferStorage: renderbuffer with: internalformat with: width with: height [

	<generated>
	library namedRenderbufferStorage: renderbuffer with: internalformat with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> namedRenderbufferStorageMultisample: renderbuffer with: samples with: internalformat with: width with: height [

	<generated>
	library namedRenderbufferStorageMultisample: renderbuffer with: samples with: internalformat with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> newList: list with: mode [

	<generated>
	library newList: list with: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normal3b: nx with: ny with: nz [

	<generated>
	library normal3b: nx with: ny with: nz.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normal3bv: v [

	<generated>
	library normal3bv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normal3d: nx with: ny with: nz [

	<generated>
	library normal3d: nx with: ny with: nz.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normal3dv: v [

	<generated>
	library normal3dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normal3f: nx with: ny with: nz [

	<generated>
	library normal3f: nx with: ny with: nz.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normal3fv: v [

	<generated>
	library normal3fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normal3i: nx with: ny with: nz [

	<generated>
	library normal3i: nx with: ny with: nz.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normal3iv: v [

	<generated>
	library normal3iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normal3s: nx with: ny with: nz [

	<generated>
	library normal3s: nx with: ny with: nz.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normal3sv: v [

	<generated>
	library normal3sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normal3x: nx with: ny with: nz [

	<generated>
	library normal3x: nx with: ny with: nz.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normalP3ui: type with: coords [

	<generated>
	library normalP3ui: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normalP3uiv: type with: coords [

	<generated>
	library normalP3uiv: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> normalPointer: type with: stride with: pointer [

	<generated>
	library normalPointer: type with: stride with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> objectLabel: identifier with: name with: length with: label [

	<generated>
	library objectLabel: identifier with: name with: length with: label.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> objectPtrLabel: ptr with: length with: label [

	<generated>
	library objectPtrLabel: ptr with: length with: label.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> ortho: left with: right with: bottom with: top with: zNear with: zFar [

	<generated>
	library ortho: left with: right with: bottom with: top with: zNear with: zFar.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> orthof: l with: r with: b with: t with: n with: f [

	<generated>
	library orthof: l with: r with: b with: t with: n with: f.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> orthox: l with: r with: b with: t with: n with: f [

	<generated>
	library orthox: l with: r with: b with: t with: n with: f.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> passThrough: token [

	<generated>
	library passThrough: token.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> patchParameterfv: pname with: values [

	<generated>
	library patchParameterfv: pname with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> patchParameteri: pname with: value [

	<generated>
	library patchParameteri: pname with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pauseTransformFeedback [

	<generated>
	library pauseTransformFeedback.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pixelMapfv: map with: mapsize with: values [

	<generated>
	library pixelMapfv: map with: mapsize with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pixelMapuiv: map with: mapsize with: values [

	<generated>
	library pixelMapuiv: map with: mapsize with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pixelMapusv: map with: mapsize with: values [

	<generated>
	library pixelMapusv: map with: mapsize with: values.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pixelStoref: pname with: param [

	<generated>
	library pixelStoref: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pixelStorei: pname with: param [

	<generated>
	library pixelStorei: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pixelTransferf: pname with: param [

	<generated>
	library pixelTransferf: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pixelTransferi: pname with: param [

	<generated>
	library pixelTransferi: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pixelZoom: xfactor with: yfactor [

	<generated>
	library pixelZoom: xfactor with: yfactor.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pointParameterf: pname with: param [

	<generated>
	library pointParameterf: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pointParameterfv: pname with: params [

	<generated>
	library pointParameterfv: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pointParameteri: pname with: param [

	<generated>
	library pointParameteri: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pointParameteriv: pname with: params [

	<generated>
	library pointParameteriv: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pointParameterx: pname with: param [

	<generated>
	library pointParameterx: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pointParameterxv: pname with: params [

	<generated>
	library pointParameterxv: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pointSize: size [

	<generated>
	library pointSize: size.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pointSizex: size [

	<generated>
	library pointSizex: size.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> polygonMode: face with: mode [

	<generated>
	library polygonMode: face with: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> polygonOffset: factor with: units [

	<generated>
	library polygonOffset: factor with: units.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> polygonOffsetClamp: factor with: units with: clamp [

	<generated>
	library polygonOffsetClamp: factor with: units with: clamp.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> polygonOffsetx: factor with: units [

	<generated>
	library polygonOffsetx: factor with: units.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> polygonStipple: mask [

	<generated>
	library polygonStipple: mask.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> popAttrib [

	<generated>
	library popAttrib.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> popClientAttrib [

	<generated>
	library popClientAttrib.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> popDebugGroup [

	<generated>
	library popDebugGroup.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> popMatrix [

	<generated>
	library popMatrix.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> popName [

	<generated>
	library popName.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> primitiveBoundingBox: minX with: minY with: minZ with: minW with: maxX with: maxY with: maxZ with: maxW [

	<generated>
	library primitiveBoundingBox: minX with: minY with: minZ with: minW with: maxX with: maxY with: maxZ with: maxW.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> primitiveRestartIndex: index [

	<generated>
	library primitiveRestartIndex: index.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> prioritizeTextures: n with: textures with: priorities [

	<generated>
	library prioritizeTextures: n with: textures with: priorities.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programBinary: program with: binaryFormat with: binary with: length [

	<generated>
	library programBinary: program with: binaryFormat with: binary with: length.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programParameteri: program with: pname with: value [

	<generated>
	library programParameteri: program with: pname with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform1d: program with: location with: v0 [

	<generated>
	library programUniform1d: program with: location with: v0.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform1dv: program with: location with: count with: value [

	<generated>
	library programUniform1dv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform1f: program with: location with: v0 [

	<generated>
	library programUniform1f: program with: location with: v0.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform1fv: program with: location with: count with: value [

	<generated>
	library programUniform1fv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform1i: program with: location with: v0 [

	<generated>
	library programUniform1i: program with: location with: v0.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform1iv: program with: location with: count with: value [

	<generated>
	library programUniform1iv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform1ui: program with: location with: v0 [

	<generated>
	library programUniform1ui: program with: location with: v0.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform1uiv: program with: location with: count with: value [

	<generated>
	library programUniform1uiv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform2d: program with: location with: v0 with: v1 [

	<generated>
	library programUniform2d: program with: location with: v0 with: v1.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform2dv: program with: location with: count with: value [

	<generated>
	library programUniform2dv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform2f: program with: location with: v0 with: v1 [

	<generated>
	library programUniform2f: program with: location with: v0 with: v1.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform2fv: program with: location with: count with: value [

	<generated>
	library programUniform2fv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform2i: program with: location with: v0 with: v1 [

	<generated>
	library programUniform2i: program with: location with: v0 with: v1.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform2iv: program with: location with: count with: value [

	<generated>
	library programUniform2iv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform2ui: program with: location with: v0 with: v1 [

	<generated>
	library programUniform2ui: program with: location with: v0 with: v1.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform2uiv: program with: location with: count with: value [

	<generated>
	library programUniform2uiv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform3d: program with: location with: v0 with: v1 with: v2 [

	<generated>
	library programUniform3d: program with: location with: v0 with: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform3dv: program with: location with: count with: value [

	<generated>
	library programUniform3dv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform3f: program with: location with: v0 with: v1 with: v2 [

	<generated>
	library programUniform3f: program with: location with: v0 with: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform3fv: program with: location with: count with: value [

	<generated>
	library programUniform3fv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform3i: program with: location with: v0 with: v1 with: v2 [

	<generated>
	library programUniform3i: program with: location with: v0 with: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform3iv: program with: location with: count with: value [

	<generated>
	library programUniform3iv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform3ui: program with: location with: v0 with: v1 with: v2 [

	<generated>
	library programUniform3ui: program with: location with: v0 with: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform3uiv: program with: location with: count with: value [

	<generated>
	library programUniform3uiv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform4d: program with: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	library programUniform4d: program with: location with: v0 with: v1 with: v2 with: v3.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform4dv: program with: location with: count with: value [

	<generated>
	library programUniform4dv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform4f: program with: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	library programUniform4f: program with: location with: v0 with: v1 with: v2 with: v3.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform4fv: program with: location with: count with: value [

	<generated>
	library programUniform4fv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform4i: program with: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	library programUniform4i: program with: location with: v0 with: v1 with: v2 with: v3.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform4iv: program with: location with: count with: value [

	<generated>
	library programUniform4iv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform4ui: program with: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	library programUniform4ui: program with: location with: v0 with: v1 with: v2 with: v3.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniform4uiv: program with: location with: count with: value [

	<generated>
	library programUniform4uiv: program with: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix2dv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix2dv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix2fv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix2fv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix2x3dv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix2x3dv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix2x3fv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix2x3fv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix2x4dv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix2x4dv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix2x4fv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix2x4fv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix3dv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix3dv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix3fv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix3fv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix3x2dv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix3x2dv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix3x2fv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix3x2fv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix3x4dv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix3x4dv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix3x4fv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix3x4fv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix4dv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix4dv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix4fv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix4fv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix4x2dv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix4x2dv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix4x2fv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix4x2fv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix4x3dv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix4x3dv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> programUniformMatrix4x3fv: program with: location with: count with: transpose with: value [

	<generated>
	library programUniformMatrix4x3fv: program with: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> provokingVertex: mode [

	<generated>
	library provokingVertex: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pushAttrib: mask [

	<generated>
	library pushAttrib: mask.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pushClientAttrib: mask [

	<generated>
	library pushClientAttrib: mask.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pushDebugGroup: source with: id with: length with: message [

	<generated>
	library pushDebugGroup: source with: id with: length with: message.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pushMatrix [

	<generated>
	library pushMatrix.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> pushName: name [

	<generated>
	library pushName: name.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> queryCounter: id with: target [

	<generated>
	library queryCounter: id with: target.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos2d: x with: y [

	<generated>
	library rasterPos2d: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos2dv: v [

	<generated>
	library rasterPos2dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos2f: x with: y [

	<generated>
	library rasterPos2f: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos2fv: v [

	<generated>
	library rasterPos2fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos2i: x with: y [

	<generated>
	library rasterPos2i: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos2iv: v [

	<generated>
	library rasterPos2iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos2s: x with: y [

	<generated>
	library rasterPos2s: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos2sv: v [

	<generated>
	library rasterPos2sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos3d: x with: y with: z [

	<generated>
	library rasterPos3d: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos3dv: v [

	<generated>
	library rasterPos3dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos3f: x with: y with: z [

	<generated>
	library rasterPos3f: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos3fv: v [

	<generated>
	library rasterPos3fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos3i: x with: y with: z [

	<generated>
	library rasterPos3i: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos3iv: v [

	<generated>
	library rasterPos3iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos3s: x with: y with: z [

	<generated>
	library rasterPos3s: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos3sv: v [

	<generated>
	library rasterPos3sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos4d: x with: y with: z with: w [

	<generated>
	library rasterPos4d: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos4dv: v [

	<generated>
	library rasterPos4dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos4f: x with: y with: z with: w [

	<generated>
	library rasterPos4f: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos4fv: v [

	<generated>
	library rasterPos4fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos4i: x with: y with: z with: w [

	<generated>
	library rasterPos4i: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos4iv: v [

	<generated>
	library rasterPos4iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos4s: x with: y with: z with: w [

	<generated>
	library rasterPos4s: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rasterPos4sv: v [

	<generated>
	library rasterPos4sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> readBuffer: src [

	<generated>
	library readBuffer: src.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> readPixels: x with: y with: width with: height with: format with: type with: pixels [

	<generated>
	library readPixels: x with: y with: width with: height with: format with: type with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> readnPixels: x with: y with: width with: height with: format with: type with: bufSize with: data [

	<generated>
	library readnPixels: x with: y with: width with: height with: format with: type with: bufSize with: data.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rectd: x1 with: y1 with: x2 with: y2 [

	<generated>
	library rectd: x1 with: y1 with: x2 with: y2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rectdv: v1 with: v2 [

	<generated>
	library rectdv: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rectf: x1 with: y1 with: x2 with: y2 [

	<generated>
	library rectf: x1 with: y1 with: x2 with: y2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rectfv: v1 with: v2 [

	<generated>
	library rectfv: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> recti: x1 with: y1 with: x2 with: y2 [

	<generated>
	library recti: x1 with: y1 with: x2 with: y2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rectiv: v1 with: v2 [

	<generated>
	library rectiv: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rects: x1 with: y1 with: x2 with: y2 [

	<generated>
	library rects: x1 with: y1 with: x2 with: y2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rectsv: v1 with: v2 [

	<generated>
	library rectsv: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> releaseShaderCompiler [

	<generated>
	library releaseShaderCompiler.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> renderMode: mode [

	<generated>
	library renderMode: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> renderbufferStorage: target with: internalformat with: width with: height [

	<generated>
	library renderbufferStorage: target with: internalformat with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> renderbufferStorageMultisample: target with: samples with: internalformat with: width with: height [

	<generated>
	library renderbufferStorageMultisample: target with: samples with: internalformat with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> resumeTransformFeedback [

	<generated>
	library resumeTransformFeedback.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rotated: angle with: x with: y with: z [

	<generated>
	library rotated: angle with: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rotatef: angle with: x with: y with: z [

	<generated>
	library rotatef: angle with: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> rotatex: angle with: x with: y with: z [

	<generated>
	library rotatex: angle with: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> sampleCoverage: value with: invert [

	<generated>
	library sampleCoverage: value with: invert.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> sampleCoveragex: value with: invert [

	<generated>
	library sampleCoveragex: value with: invert.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> sampleMaski: maskNumber with: mask [

	<generated>
	library sampleMaski: maskNumber with: mask.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> samplerParameterIiv: sampler with: pname with: param [

	<generated>
	library samplerParameterIiv: sampler with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> samplerParameterIuiv: sampler with: pname with: param [

	<generated>
	library samplerParameterIuiv: sampler with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> samplerParameterf: sampler with: pname with: param [

	<generated>
	library samplerParameterf: sampler with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> samplerParameterfv: sampler with: pname with: param [

	<generated>
	library samplerParameterfv: sampler with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> samplerParameteri: sampler with: pname with: param [

	<generated>
	library samplerParameteri: sampler with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> samplerParameteriv: sampler with: pname with: param [

	<generated>
	library samplerParameteriv: sampler with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> scaled: x with: y with: z [

	<generated>
	library scaled: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> scalef: x with: y with: z [

	<generated>
	library scalef: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> scalex: x with: y with: z [

	<generated>
	library scalex: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> scissor: x with: y with: width with: height [

	<generated>
	library scissor: x with: y with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> scissorArrayv: first with: count with: v [

	<generated>
	library scissorArrayv: first with: count with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> scissorIndexed: index with: left with: bottom with: width with: height [

	<generated>
	library scissorIndexed: index with: left with: bottom with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> scissorIndexedv: index with: v [

	<generated>
	library scissorIndexedv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3b: red with: green with: blue [

	<generated>
	library secondaryColor3b: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3bv: v [

	<generated>
	library secondaryColor3bv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3d: red with: green with: blue [

	<generated>
	library secondaryColor3d: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3dv: v [

	<generated>
	library secondaryColor3dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3f: red with: green with: blue [

	<generated>
	library secondaryColor3f: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3fv: v [

	<generated>
	library secondaryColor3fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3i: red with: green with: blue [

	<generated>
	library secondaryColor3i: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3iv: v [

	<generated>
	library secondaryColor3iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3s: red with: green with: blue [

	<generated>
	library secondaryColor3s: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3sv: v [

	<generated>
	library secondaryColor3sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3ub: red with: green with: blue [

	<generated>
	library secondaryColor3ub: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3ubv: v [

	<generated>
	library secondaryColor3ubv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3ui: red with: green with: blue [

	<generated>
	library secondaryColor3ui: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3uiv: v [

	<generated>
	library secondaryColor3uiv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3us: red with: green with: blue [

	<generated>
	library secondaryColor3us: red with: green with: blue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColor3usv: v [

	<generated>
	library secondaryColor3usv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColorP3ui: type with: color [

	<generated>
	library secondaryColorP3ui: type with: color.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColorP3uiv: type with: color [

	<generated>
	library secondaryColorP3uiv: type with: color.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> secondaryColorPointer: size with: type with: stride with: pointer [

	<generated>
	library secondaryColorPointer: size with: type with: stride with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> selectBuffer: size with: buffer [

	<generated>
	library selectBuffer: size with: buffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> shadeModel: mode [

	<generated>
	library shadeModel: mode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> shaderBinary: count with: shaders with: binaryFormat with: binary with: length [

	<generated>
	library shaderBinary: count with: shaders with: binaryFormat with: binary with: length.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> shaderSource: shader with: count with: string with: length [

	<generated>
	library shaderSource: shader with: count with: string with: length.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> shaderStorageBlockBinding: program with: storageBlockIndex with: storageBlockBinding [

	<generated>
	library shaderStorageBlockBinding: program with: storageBlockIndex with: storageBlockBinding.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> specializeShader: shader with: pEntryPoint with: numSpecializationConstants with: pConstantIndex with: pConstantValue [

	<generated>
	library specializeShader: shader with: pEntryPoint with: numSpecializationConstants with: pConstantIndex with: pConstantValue.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> stencilFunc: func with: ref with: mask [

	<generated>
	library stencilFunc: func with: ref with: mask.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> stencilFuncSeparate: face with: func with: ref with: mask [

	<generated>
	library stencilFuncSeparate: face with: func with: ref with: mask.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> stencilMask: mask [

	<generated>
	library stencilMask: mask.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> stencilMaskSeparate: face with: mask [

	<generated>
	library stencilMaskSeparate: face with: mask.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> stencilOp: fail with: zfail with: zpass [

	<generated>
	library stencilOp: fail with: zfail with: zpass.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> stencilOpSeparate: face with: sfail with: dpfail with: dppass [

	<generated>
	library stencilOpSeparate: face with: sfail with: dpfail with: dppass.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texBuffer: target with: internalformat with: buffer [

	<generated>
	library texBuffer: target with: internalformat with: buffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texBufferRange: target with: internalformat with: buffer with: offset with: size [

	<generated>
	library texBufferRange: target with: internalformat with: buffer with: offset with: size.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord1d: s [

	<generated>
	library texCoord1d: s.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord1dv: v [

	<generated>
	library texCoord1dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord1f: s [

	<generated>
	library texCoord1f: s.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord1fv: v [

	<generated>
	library texCoord1fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord1i: s [

	<generated>
	library texCoord1i: s.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord1iv: v [

	<generated>
	library texCoord1iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord1s: s [

	<generated>
	library texCoord1s: s.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord1sv: v [

	<generated>
	library texCoord1sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord2d: s with: t [

	<generated>
	library texCoord2d: s with: t.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord2dv: v [

	<generated>
	library texCoord2dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord2f: s with: t [

	<generated>
	library texCoord2f: s with: t.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord2fv: v [

	<generated>
	library texCoord2fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord2i: s with: t [

	<generated>
	library texCoord2i: s with: t.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord2iv: v [

	<generated>
	library texCoord2iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord2s: s with: t [

	<generated>
	library texCoord2s: s with: t.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord2sv: v [

	<generated>
	library texCoord2sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord3d: s with: t with: r [

	<generated>
	library texCoord3d: s with: t with: r.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord3dv: v [

	<generated>
	library texCoord3dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord3f: s with: t with: r [

	<generated>
	library texCoord3f: s with: t with: r.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord3fv: v [

	<generated>
	library texCoord3fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord3i: s with: t with: r [

	<generated>
	library texCoord3i: s with: t with: r.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord3iv: v [

	<generated>
	library texCoord3iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord3s: s with: t with: r [

	<generated>
	library texCoord3s: s with: t with: r.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord3sv: v [

	<generated>
	library texCoord3sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord4d: s with: t with: r with: q [

	<generated>
	library texCoord4d: s with: t with: r with: q.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord4dv: v [

	<generated>
	library texCoord4dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord4f: s with: t with: r with: q [

	<generated>
	library texCoord4f: s with: t with: r with: q.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord4fv: v [

	<generated>
	library texCoord4fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord4i: s with: t with: r with: q [

	<generated>
	library texCoord4i: s with: t with: r with: q.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord4iv: v [

	<generated>
	library texCoord4iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord4s: s with: t with: r with: q [

	<generated>
	library texCoord4s: s with: t with: r with: q.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoord4sv: v [

	<generated>
	library texCoord4sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoordP1ui: type with: coords [

	<generated>
	library texCoordP1ui: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoordP1uiv: type with: coords [

	<generated>
	library texCoordP1uiv: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoordP2ui: type with: coords [

	<generated>
	library texCoordP2ui: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoordP2uiv: type with: coords [

	<generated>
	library texCoordP2uiv: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoordP3ui: type with: coords [

	<generated>
	library texCoordP3ui: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoordP3uiv: type with: coords [

	<generated>
	library texCoordP3uiv: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoordP4ui: type with: coords [

	<generated>
	library texCoordP4ui: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoordP4uiv: type with: coords [

	<generated>
	library texCoordP4uiv: type with: coords.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texCoordPointer: size with: type with: stride with: pointer [

	<generated>
	library texCoordPointer: size with: type with: stride with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texEnvf: target with: pname with: param [

	<generated>
	library texEnvf: target with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texEnvfv: target with: pname with: params [

	<generated>
	library texEnvfv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texEnvi: target with: pname with: param [

	<generated>
	library texEnvi: target with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texEnviv: target with: pname with: params [

	<generated>
	library texEnviv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texEnvx: target with: pname with: param [

	<generated>
	library texEnvx: target with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texEnvxv: target with: pname with: params [

	<generated>
	library texEnvxv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texGend: coord with: pname with: param [

	<generated>
	library texGend: coord with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texGendv: coord with: pname with: params [

	<generated>
	library texGendv: coord with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texGenf: coord with: pname with: param [

	<generated>
	library texGenf: coord with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texGenfv: coord with: pname with: params [

	<generated>
	library texGenfv: coord with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texGeni: coord with: pname with: param [

	<generated>
	library texGeni: coord with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texGeniv: coord with: pname with: params [

	<generated>
	library texGeniv: coord with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texImage1D: target with: level with: internalformat with: width with: border with: format with: type with: pixels [

	<generated>
	library texImage1D: target with: level with: internalformat with: width with: border with: format with: type with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texImage2D: target with: level with: internalformat with: width with: height with: border with: format with: type with: pixels [

	<generated>
	library texImage2D: target with: level with: internalformat with: width with: height with: border with: format with: type with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texImage2DMultisample: target with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<generated>
	library texImage2DMultisample: target with: samples with: internalformat with: width with: height with: fixedsamplelocations.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texImage3D: target with: level with: internalformat with: width with: height with: depth with: border with: format with: type with: pixels [

	<generated>
	library texImage3D: target with: level with: internalformat with: width with: height with: depth with: border with: format with: type with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texImage3DMultisample: target with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<generated>
	library texImage3DMultisample: target with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texParameterIiv: target with: pname with: params [

	<generated>
	library texParameterIiv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texParameterIuiv: target with: pname with: params [

	<generated>
	library texParameterIuiv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texParameterf: target with: pname with: param [

	<generated>
	library texParameterf: target with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texParameterfv: target with: pname with: params [

	<generated>
	library texParameterfv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texParameteri: target with: pname with: param [

	<generated>
	library texParameteri: target with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texParameteriv: target with: pname with: params [

	<generated>
	library texParameteriv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texParameterx: target with: pname with: param [

	<generated>
	library texParameterx: target with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texParameterxv: target with: pname with: params [

	<generated>
	library texParameterxv: target with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texStorage1D: target with: levels with: internalformat with: width [

	<generated>
	library texStorage1D: target with: levels with: internalformat with: width.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texStorage2D: target with: levels with: internalformat with: width with: height [

	<generated>
	library texStorage2D: target with: levels with: internalformat with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texStorage2DMultisample: target with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<generated>
	library texStorage2DMultisample: target with: samples with: internalformat with: width with: height with: fixedsamplelocations.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texStorage3D: target with: levels with: internalformat with: width with: height with: depth [

	<generated>
	library texStorage3D: target with: levels with: internalformat with: width with: height with: depth.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texStorage3DMultisample: target with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<generated>
	library texStorage3DMultisample: target with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texSubImage1D: target with: level with: xoffset with: width with: format with: type with: pixels [

	<generated>
	library texSubImage1D: target with: level with: xoffset with: width with: format with: type with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: type with: pixels [

	<generated>
	library texSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: type with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> texSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: pixels [

	<generated>
	library texSubImage3D: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureBarrier [

	<generated>
	library textureBarrier.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureBuffer: texture with: internalformat with: buffer [

	<generated>
	library textureBuffer: texture with: internalformat with: buffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureBufferRange: texture with: internalformat with: buffer with: offset with: size [

	<generated>
	library textureBufferRange: texture with: internalformat with: buffer with: offset with: size.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureParameterIiv: texture with: pname with: params [

	<generated>
	library textureParameterIiv: texture with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureParameterIuiv: texture with: pname with: params [

	<generated>
	library textureParameterIuiv: texture with: pname with: params.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureParameterf: texture with: pname with: param [

	<generated>
	library textureParameterf: texture with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureParameterfv: texture with: pname with: param [

	<generated>
	library textureParameterfv: texture with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureParameteri: texture with: pname with: param [

	<generated>
	library textureParameteri: texture with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureParameteriv: texture with: pname with: param [

	<generated>
	library textureParameteriv: texture with: pname with: param.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureStorage1D: texture with: levels with: internalformat with: width [

	<generated>
	library textureStorage1D: texture with: levels with: internalformat with: width.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureStorage2D: texture with: levels with: internalformat with: width with: height [

	<generated>
	library textureStorage2D: texture with: levels with: internalformat with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureStorage2DMultisample: texture with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<generated>
	library textureStorage2DMultisample: texture with: samples with: internalformat with: width with: height with: fixedsamplelocations.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureStorage3D: texture with: levels with: internalformat with: width with: height with: depth [

	<generated>
	library textureStorage3D: texture with: levels with: internalformat with: width with: height with: depth.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureStorage3DMultisample: texture with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<generated>
	library textureStorage3DMultisample: texture with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureSubImage1D: texture with: level with: xoffset with: width with: format with: type with: pixels [

	<generated>
	library textureSubImage1D: texture with: level with: xoffset with: width with: format with: type with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureSubImage2D: texture with: level with: xoffset with: yoffset with: width with: height with: format with: type with: pixels [

	<generated>
	library textureSubImage2D: texture with: level with: xoffset with: yoffset with: width with: height with: format with: type with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureSubImage3D: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: pixels [

	<generated>
	library textureSubImage3D: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: format with: type with: pixels.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> textureView: texture with: target with: origtexture with: internalformat with: minlevel with: numlevels with: minlayer with: numlayers [

	<generated>
	library textureView: texture with: target with: origtexture with: internalformat with: minlevel with: numlevels with: minlayer with: numlayers.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> transformFeedbackBufferBase: xfb with: index with: buffer [

	<generated>
	library transformFeedbackBufferBase: xfb with: index with: buffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> transformFeedbackBufferRange: xfb with: index with: buffer with: offset with: size [

	<generated>
	library transformFeedbackBufferRange: xfb with: index with: buffer with: offset with: size.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> transformFeedbackVaryings: program with: count with: varyings with: bufferMode [

	<generated>
	library transformFeedbackVaryings: program with: count with: varyings with: bufferMode.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> translated: x with: y with: z [

	<generated>
	library translated: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> translatef: x with: y with: z [

	<generated>
	library translatef: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> translatex: x with: y with: z [

	<generated>
	library translatex: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform1d: location with: x [

	<generated>
	library uniform1d: location with: x.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform1dv: location with: count with: value [

	<generated>
	library uniform1dv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform1f: location with: v0 [

	<generated>
	library uniform1f: location with: v0.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform1fv: location with: count with: value [

	<generated>
	library uniform1fv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform1i: location with: v0 [

	<generated>
	library uniform1i: location with: v0.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform1iv: location with: count with: value [

	<generated>
	library uniform1iv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform1ui: location with: v0 [

	<generated>
	library uniform1ui: location with: v0.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform1uiv: location with: count with: value [

	<generated>
	library uniform1uiv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform2d: location with: x with: y [

	<generated>
	library uniform2d: location with: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform2dv: location with: count with: value [

	<generated>
	library uniform2dv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform2f: location with: v0 with: v1 [

	<generated>
	library uniform2f: location with: v0 with: v1.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform2fv: location with: count with: value [

	<generated>
	library uniform2fv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform2i: location with: v0 with: v1 [

	<generated>
	library uniform2i: location with: v0 with: v1.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform2iv: location with: count with: value [

	<generated>
	library uniform2iv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform2ui: location with: v0 with: v1 [

	<generated>
	library uniform2ui: location with: v0 with: v1.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform2uiv: location with: count with: value [

	<generated>
	library uniform2uiv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform3d: location with: x with: y with: z [

	<generated>
	library uniform3d: location with: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform3dv: location with: count with: value [

	<generated>
	library uniform3dv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform3f: location with: v0 with: v1 with: v2 [

	<generated>
	library uniform3f: location with: v0 with: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform3fv: location with: count with: value [

	<generated>
	library uniform3fv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform3i: location with: v0 with: v1 with: v2 [

	<generated>
	library uniform3i: location with: v0 with: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform3iv: location with: count with: value [

	<generated>
	library uniform3iv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform3ui: location with: v0 with: v1 with: v2 [

	<generated>
	library uniform3ui: location with: v0 with: v1 with: v2.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform3uiv: location with: count with: value [

	<generated>
	library uniform3uiv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform4d: location with: x with: y with: z with: w [

	<generated>
	library uniform4d: location with: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform4dv: location with: count with: value [

	<generated>
	library uniform4dv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform4f: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	library uniform4f: location with: v0 with: v1 with: v2 with: v3.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform4fv: location with: count with: value [

	<generated>
	library uniform4fv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform4i: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	library uniform4i: location with: v0 with: v1 with: v2 with: v3.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform4iv: location with: count with: value [

	<generated>
	library uniform4iv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform4ui: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	library uniform4ui: location with: v0 with: v1 with: v2 with: v3.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniform4uiv: location with: count with: value [

	<generated>
	library uniform4uiv: location with: count with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformBlockBinding: program with: uniformBlockIndex with: uniformBlockBinding [

	<generated>
	library uniformBlockBinding: program with: uniformBlockIndex with: uniformBlockBinding.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix2dv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix2dv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix2fv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix2fv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix2x3dv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix2x3dv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix2x3fv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix2x3fv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix2x4dv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix2x4dv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix2x4fv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix2x4fv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix3dv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix3dv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix3fv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix3fv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix3x2dv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix3x2dv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix3x2fv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix3x2fv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix3x4dv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix3x4dv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix3x4fv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix3x4fv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix4dv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix4dv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix4fv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix4fv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix4x2dv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix4x2dv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix4x2fv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix4x2fv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix4x3dv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix4x3dv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformMatrix4x3fv: location with: count with: transpose with: value [

	<generated>
	library uniformMatrix4x3fv: location with: count with: transpose with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> uniformSubroutinesuiv: shadertype with: count with: indices [

	<generated>
	library uniformSubroutinesuiv: shadertype with: count with: indices.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> unmapBuffer: target [

	<generated>
	library unmapBuffer: target.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> unmapNamedBuffer: buffer [

	<generated>
	library unmapNamedBuffer: buffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> useProgram: program [

	<generated>
	library useProgram: program.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> useProgramStages: pipeline with: stages with: program [

	<generated>
	library useProgramStages: pipeline with: stages with: program.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> validateProgram: program [

	<generated>
	library validateProgram: program.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> validateProgramPipeline: pipeline [

	<generated>
	library validateProgramPipeline: pipeline.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex2d: x with: y [

	<generated>
	library vertex2d: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex2dv: v [

	<generated>
	library vertex2dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex2f: x with: y [

	<generated>
	library vertex2f: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex2fv: v [

	<generated>
	library vertex2fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex2i: x with: y [

	<generated>
	library vertex2i: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex2iv: v [

	<generated>
	library vertex2iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex2s: x with: y [

	<generated>
	library vertex2s: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex2sv: v [

	<generated>
	library vertex2sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex3d: x with: y with: z [

	<generated>
	library vertex3d: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex3dv: v [

	<generated>
	library vertex3dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex3f: x with: y with: z [

	<generated>
	library vertex3f: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex3fv: v [

	<generated>
	library vertex3fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex3i: x with: y with: z [

	<generated>
	library vertex3i: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex3iv: v [

	<generated>
	library vertex3iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex3s: x with: y with: z [

	<generated>
	library vertex3s: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex3sv: v [

	<generated>
	library vertex3sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex4d: x with: y with: z with: w [

	<generated>
	library vertex4d: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex4dv: v [

	<generated>
	library vertex4dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex4f: x with: y with: z with: w [

	<generated>
	library vertex4f: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex4fv: v [

	<generated>
	library vertex4fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex4i: x with: y with: z with: w [

	<generated>
	library vertex4i: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex4iv: v [

	<generated>
	library vertex4iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex4s: x with: y with: z with: w [

	<generated>
	library vertex4s: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertex4sv: v [

	<generated>
	library vertex4sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexArrayAttribBinding: vaobj with: attribindex with: bindingindex [

	<generated>
	library vertexArrayAttribBinding: vaobj with: attribindex with: bindingindex.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexArrayAttribFormat: vaobj with: attribindex with: size with: type with: normalized with: relativeoffset [

	<generated>
	library vertexArrayAttribFormat: vaobj with: attribindex with: size with: type with: normalized with: relativeoffset.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexArrayAttribIFormat: vaobj with: attribindex with: size with: type with: relativeoffset [

	<generated>
	library vertexArrayAttribIFormat: vaobj with: attribindex with: size with: type with: relativeoffset.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexArrayAttribLFormat: vaobj with: attribindex with: size with: type with: relativeoffset [

	<generated>
	library vertexArrayAttribLFormat: vaobj with: attribindex with: size with: type with: relativeoffset.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexArrayBindingDivisor: vaobj with: bindingindex with: divisor [

	<generated>
	library vertexArrayBindingDivisor: vaobj with: bindingindex with: divisor.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexArrayElementBuffer: vaobj with: buffer [

	<generated>
	library vertexArrayElementBuffer: vaobj with: buffer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexArrayVertexBuffer: vaobj with: bindingindex with: buffer with: offset with: stride [

	<generated>
	library vertexArrayVertexBuffer: vaobj with: bindingindex with: buffer with: offset with: stride.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexArrayVertexBuffers: vaobj with: first with: count with: buffers with: offsets with: strides [

	<generated>
	library vertexArrayVertexBuffers: vaobj with: first with: count with: buffers with: offsets with: strides.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib1d: index with: x [

	<generated>
	library vertexAttrib1d: index with: x.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib1dv: index with: v [

	<generated>
	library vertexAttrib1dv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib1f: index with: x [

	<generated>
	library vertexAttrib1f: index with: x.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib1fv: index with: v [

	<generated>
	library vertexAttrib1fv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib1s: index with: x [

	<generated>
	library vertexAttrib1s: index with: x.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib1sv: index with: v [

	<generated>
	library vertexAttrib1sv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib2d: index with: x with: y [

	<generated>
	library vertexAttrib2d: index with: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib2dv: index with: v [

	<generated>
	library vertexAttrib2dv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib2f: index with: x with: y [

	<generated>
	library vertexAttrib2f: index with: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib2fv: index with: v [

	<generated>
	library vertexAttrib2fv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib2s: index with: x with: y [

	<generated>
	library vertexAttrib2s: index with: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib2sv: index with: v [

	<generated>
	library vertexAttrib2sv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib3d: index with: x with: y with: z [

	<generated>
	library vertexAttrib3d: index with: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib3dv: index with: v [

	<generated>
	library vertexAttrib3dv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib3f: index with: x with: y with: z [

	<generated>
	library vertexAttrib3f: index with: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib3fv: index with: v [

	<generated>
	library vertexAttrib3fv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib3s: index with: x with: y with: z [

	<generated>
	library vertexAttrib3s: index with: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib3sv: index with: v [

	<generated>
	library vertexAttrib3sv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4Nbv: index with: v [

	<generated>
	library vertexAttrib4Nbv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4Niv: index with: v [

	<generated>
	library vertexAttrib4Niv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4Nsv: index with: v [

	<generated>
	library vertexAttrib4Nsv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4Nub: index with: x with: y with: z with: w [

	<generated>
	library vertexAttrib4Nub: index with: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4Nubv: index with: v [

	<generated>
	library vertexAttrib4Nubv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4Nuiv: index with: v [

	<generated>
	library vertexAttrib4Nuiv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4Nusv: index with: v [

	<generated>
	library vertexAttrib4Nusv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4bv: index with: v [

	<generated>
	library vertexAttrib4bv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4d: index with: x with: y with: z with: w [

	<generated>
	library vertexAttrib4d: index with: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4dv: index with: v [

	<generated>
	library vertexAttrib4dv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4f: index with: x with: y with: z with: w [

	<generated>
	library vertexAttrib4f: index with: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4fv: index with: v [

	<generated>
	library vertexAttrib4fv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4iv: index with: v [

	<generated>
	library vertexAttrib4iv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4s: index with: x with: y with: z with: w [

	<generated>
	library vertexAttrib4s: index with: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4sv: index with: v [

	<generated>
	library vertexAttrib4sv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4ubv: index with: v [

	<generated>
	library vertexAttrib4ubv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4uiv: index with: v [

	<generated>
	library vertexAttrib4uiv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttrib4usv: index with: v [

	<generated>
	library vertexAttrib4usv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribBinding: attribindex with: bindingindex [

	<generated>
	library vertexAttribBinding: attribindex with: bindingindex.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribDivisor: index with: divisor [

	<generated>
	library vertexAttribDivisor: index with: divisor.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribFormat: attribindex with: size with: type with: normalized with: relativeoffset [

	<generated>
	library vertexAttribFormat: attribindex with: size with: type with: normalized with: relativeoffset.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI1i: index with: x [

	<generated>
	library vertexAttribI1i: index with: x.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI1iv: index with: v [

	<generated>
	library vertexAttribI1iv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI1ui: index with: x [

	<generated>
	library vertexAttribI1ui: index with: x.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI1uiv: index with: v [

	<generated>
	library vertexAttribI1uiv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI2i: index with: x with: y [

	<generated>
	library vertexAttribI2i: index with: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI2iv: index with: v [

	<generated>
	library vertexAttribI2iv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI2ui: index with: x with: y [

	<generated>
	library vertexAttribI2ui: index with: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI2uiv: index with: v [

	<generated>
	library vertexAttribI2uiv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI3i: index with: x with: y with: z [

	<generated>
	library vertexAttribI3i: index with: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI3iv: index with: v [

	<generated>
	library vertexAttribI3iv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI3ui: index with: x with: y with: z [

	<generated>
	library vertexAttribI3ui: index with: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI3uiv: index with: v [

	<generated>
	library vertexAttribI3uiv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI4bv: index with: v [

	<generated>
	library vertexAttribI4bv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI4i: index with: x with: y with: z with: w [

	<generated>
	library vertexAttribI4i: index with: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI4iv: index with: v [

	<generated>
	library vertexAttribI4iv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI4sv: index with: v [

	<generated>
	library vertexAttribI4sv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI4ubv: index with: v [

	<generated>
	library vertexAttribI4ubv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI4ui: index with: x with: y with: z with: w [

	<generated>
	library vertexAttribI4ui: index with: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI4uiv: index with: v [

	<generated>
	library vertexAttribI4uiv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribI4usv: index with: v [

	<generated>
	library vertexAttribI4usv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribIFormat: attribindex with: size with: type with: relativeoffset [

	<generated>
	library vertexAttribIFormat: attribindex with: size with: type with: relativeoffset.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribIPointer: index with: size with: type with: stride with: pointer [

	<generated>
	library vertexAttribIPointer: index with: size with: type with: stride with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribL1d: index with: x [

	<generated>
	library vertexAttribL1d: index with: x.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribL1dv: index with: v [

	<generated>
	library vertexAttribL1dv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribL2d: index with: x with: y [

	<generated>
	library vertexAttribL2d: index with: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribL2dv: index with: v [

	<generated>
	library vertexAttribL2dv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribL3d: index with: x with: y with: z [

	<generated>
	library vertexAttribL3d: index with: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribL3dv: index with: v [

	<generated>
	library vertexAttribL3dv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribL4d: index with: x with: y with: z with: w [

	<generated>
	library vertexAttribL4d: index with: x with: y with: z with: w.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribL4dv: index with: v [

	<generated>
	library vertexAttribL4dv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribLFormat: attribindex with: size with: type with: relativeoffset [

	<generated>
	library vertexAttribLFormat: attribindex with: size with: type with: relativeoffset.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribLPointer: index with: size with: type with: stride with: pointer [

	<generated>
	library vertexAttribLPointer: index with: size with: type with: stride with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribP1ui: index with: type with: normalized with: value [

	<generated>
	library vertexAttribP1ui: index with: type with: normalized with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribP1uiv: index with: type with: normalized with: value [

	<generated>
	library vertexAttribP1uiv: index with: type with: normalized with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribP2ui: index with: type with: normalized with: value [

	<generated>
	library vertexAttribP2ui: index with: type with: normalized with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribP2uiv: index with: type with: normalized with: value [

	<generated>
	library vertexAttribP2uiv: index with: type with: normalized with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribP3ui: index with: type with: normalized with: value [

	<generated>
	library vertexAttribP3ui: index with: type with: normalized with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribP3uiv: index with: type with: normalized with: value [

	<generated>
	library vertexAttribP3uiv: index with: type with: normalized with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribP4ui: index with: type with: normalized with: value [

	<generated>
	library vertexAttribP4ui: index with: type with: normalized with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribP4uiv: index with: type with: normalized with: value [

	<generated>
	library vertexAttribP4uiv: index with: type with: normalized with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexAttribPointer: index with: size with: type with: normalized with: stride with: pointer [

	<generated>
	library vertexAttribPointer: index with: size with: type with: normalized with: stride with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexBindingDivisor: bindingindex with: divisor [

	<generated>
	library vertexBindingDivisor: bindingindex with: divisor.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexP2ui: type with: value [

	<generated>
	library vertexP2ui: type with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexP2uiv: type with: value [

	<generated>
	library vertexP2uiv: type with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexP3ui: type with: value [

	<generated>
	library vertexP3ui: type with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexP3uiv: type with: value [

	<generated>
	library vertexP3uiv: type with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexP4ui: type with: value [

	<generated>
	library vertexP4ui: type with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexP4uiv: type with: value [

	<generated>
	library vertexP4uiv: type with: value.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> vertexPointer: size with: type with: stride with: pointer [

	<generated>
	library vertexPointer: size with: type with: stride with: pointer.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> viewport: x with: y with: width with: height [

	<generated>
	library viewport: x with: y with: width with: height.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> viewportArrayv: first with: count with: v [

	<generated>
	library viewportArrayv: first with: count with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> viewportIndexedf: index with: x with: y with: w with: h [

	<generated>
	library viewportIndexedf: index with: x with: y with: w with: h.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> viewportIndexedfv: index with: v [

	<generated>
	library viewportIndexedfv: index with: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> waitSync: sync with: flags with: timeout [

	<generated>
	library waitSync: sync with: flags with: timeout.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos2d: x with: y [

	<generated>
	library windowPos2d: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos2dv: v [

	<generated>
	library windowPos2dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos2f: x with: y [

	<generated>
	library windowPos2f: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos2fv: v [

	<generated>
	library windowPos2fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos2i: x with: y [

	<generated>
	library windowPos2i: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos2iv: v [

	<generated>
	library windowPos2iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos2s: x with: y [

	<generated>
	library windowPos2s: x with: y.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos2sv: v [

	<generated>
	library windowPos2sv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos3d: x with: y with: z [

	<generated>
	library windowPos3d: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos3dv: v [

	<generated>
	library windowPos3dv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos3f: x with: y with: z [

	<generated>
	library windowPos3f: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos3fv: v [

	<generated>
	library windowPos3fv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos3i: x with: y with: z [

	<generated>
	library windowPos3i: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos3iv: v [

	<generated>
	library windowPos3iv: v.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos3s: x with: y with: z [

	<generated>
	library windowPos3s: x with: y with: z.
	library checkForError
]

{
	#category : #'api - commands',
	#timestamp : 'stlu 2/22/2021 13:46'
}
GLDebugLibrary >> windowPos3sv: v [

	<generated>
	library windowPos3sv: v.
	library checkForError
]
