Class {
	#name : #'GLES3_1',
	#superclass : #'GLES3_0',
	#category : #'OpenGL-API-GLES2',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLES3_1 class >> majorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLES3_1 class >> minorVersion [

	^ 1
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 16:11'
}
GLES3_1 class >> versionNumber [

	^ 31
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ACTIVE_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_ACTIVE_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ACTIVE_PROGRAM [

	<generated>
	^ GL_ACTIVE_PROGRAM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ACTIVE_RESOURCES [

	<generated>
	^ GL_ACTIVE_RESOURCES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ACTIVE_VARIABLES [

	<generated>
	^ GL_ACTIVE_VARIABLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ALL_BARRIER_BITS [

	<generated>
	^ GL_ALL_BARRIER_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ALL_SHADER_BITS [

	<generated>
	^ GL_ALL_SHADER_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ARRAY_SIZE [

	<generated>
	^ GL_ARRAY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ARRAY_STRIDE [

	<generated>
	^ GL_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ATOMIC_COUNTER_BARRIER_BIT [

	<generated>
	^ GL_ATOMIC_COUNTER_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ATOMIC_COUNTER_BUFFER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ATOMIC_COUNTER_BUFFER_BINDING [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ATOMIC_COUNTER_BUFFER_INDEX [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ATOMIC_COUNTER_BUFFER_SIZE [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ATOMIC_COUNTER_BUFFER_START [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_START
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> BLOCK_INDEX [

	<generated>
	^ GL_BLOCK_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> BUFFER_BINDING [

	<generated>
	^ GL_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> BUFFER_DATA_SIZE [

	<generated>
	^ GL_BUFFER_DATA_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> BUFFER_UPDATE_BARRIER_BIT [

	<generated>
	^ GL_BUFFER_UPDATE_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> BUFFER_VARIABLE [

	<generated>
	^ GL_BUFFER_VARIABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> COMMAND_BARRIER_BIT [

	<generated>
	^ GL_COMMAND_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> COMPUTE_SHADER [

	<generated>
	^ GL_COMPUTE_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> COMPUTE_SHADER_BIT [

	<generated>
	^ GL_COMPUTE_SHADER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> COMPUTE_WORK_GROUP_SIZE [

	<generated>
	^ GL_COMPUTE_WORK_GROUP_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> DEPTH_STENCIL_TEXTURE_MODE [

	<generated>
	^ GL_DEPTH_STENCIL_TEXTURE_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> DISPATCH_INDIRECT_BUFFER [

	<generated>
	^ GL_DISPATCH_INDIRECT_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> DISPATCH_INDIRECT_BUFFER_BINDING [

	<generated>
	^ GL_DISPATCH_INDIRECT_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> DRAW_INDIRECT_BUFFER [

	<generated>
	^ GL_DRAW_INDIRECT_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> DRAW_INDIRECT_BUFFER_BINDING [

	<generated>
	^ GL_DRAW_INDIRECT_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> ELEMENT_ARRAY_BARRIER_BIT [

	<generated>
	^ GL_ELEMENT_ARRAY_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> FRAGMENT_SHADER_BIT [

	<generated>
	^ GL_FRAGMENT_SHADER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> FRAMEBUFFER_BARRIER_BIT [

	<generated>
	^ GL_FRAMEBUFFER_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> FRAMEBUFFER_DEFAULT_HEIGHT [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> FRAMEBUFFER_DEFAULT_SAMPLES [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> FRAMEBUFFER_DEFAULT_WIDTH [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_2D [

	<generated>
	^ GL_IMAGE_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_2D_ARRAY [

	<generated>
	^ GL_IMAGE_2D_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_3D [

	<generated>
	^ GL_IMAGE_3D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_BINDING_ACCESS [

	<generated>
	^ GL_IMAGE_BINDING_ACCESS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_BINDING_FORMAT [

	<generated>
	^ GL_IMAGE_BINDING_FORMAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_BINDING_LAYER [

	<generated>
	^ GL_IMAGE_BINDING_LAYER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_BINDING_LAYERED [

	<generated>
	^ GL_IMAGE_BINDING_LAYERED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_BINDING_LEVEL [

	<generated>
	^ GL_IMAGE_BINDING_LEVEL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_BINDING_NAME [

	<generated>
	^ GL_IMAGE_BINDING_NAME
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_CUBE [

	<generated>
	^ GL_IMAGE_CUBE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_FORMAT_COMPATIBILITY_BY_CLASS [

	<generated>
	^ GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_FORMAT_COMPATIBILITY_BY_SIZE [

	<generated>
	^ GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IMAGE_FORMAT_COMPATIBILITY_TYPE [

	<generated>
	^ GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> INT_IMAGE_2D [

	<generated>
	^ GL_INT_IMAGE_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> INT_IMAGE_2D_ARRAY [

	<generated>
	^ GL_INT_IMAGE_2D_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> INT_IMAGE_3D [

	<generated>
	^ GL_INT_IMAGE_3D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> INT_IMAGE_CUBE [

	<generated>
	^ GL_INT_IMAGE_CUBE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> INT_SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_INT_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> IS_ROW_MAJOR [

	<generated>
	^ GL_IS_ROW_MAJOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> LOCATION [

	<generated>
	^ GL_LOCATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MATRIX_STRIDE [

	<generated>
	^ GL_MATRIX_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_ATOMIC_COUNTER_BUFFER_BINDINGS [

	<generated>
	^ GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_ATOMIC_COUNTER_BUFFER_SIZE [

	<generated>
	^ GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COLOR_TEXTURE_SAMPLES [

	<generated>
	^ GL_MAX_COLOR_TEXTURE_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMBINED_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_COMBINED_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMBINED_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMBINED_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_COMBINED_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMBINED_SHADER_OUTPUT_RESOURCES [

	<generated>
	^ GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMBINED_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMPUTE_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_COMPUTE_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMPUTE_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_COMPUTE_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMPUTE_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMPUTE_SHARED_MEMORY_SIZE [

	<generated>
	^ GL_MAX_COMPUTE_SHARED_MEMORY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMPUTE_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMPUTE_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_COMPUTE_UNIFORM_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMPUTE_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMPUTE_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMPUTE_WORK_GROUP_COUNT [

	<generated>
	^ GL_MAX_COMPUTE_WORK_GROUP_COUNT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMPUTE_WORK_GROUP_INVOCATIONS [

	<generated>
	^ GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_COMPUTE_WORK_GROUP_SIZE [

	<generated>
	^ GL_MAX_COMPUTE_WORK_GROUP_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_DEPTH_TEXTURE_SAMPLES [

	<generated>
	^ GL_MAX_DEPTH_TEXTURE_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_FRAGMENT_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_FRAGMENT_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_FRAGMENT_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_FRAGMENT_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_FRAGMENT_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_FRAMEBUFFER_HEIGHT [

	<generated>
	^ GL_MAX_FRAMEBUFFER_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_FRAMEBUFFER_SAMPLES [

	<generated>
	^ GL_MAX_FRAMEBUFFER_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_FRAMEBUFFER_WIDTH [

	<generated>
	^ GL_MAX_FRAMEBUFFER_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_IMAGE_UNITS [

	<generated>
	^ GL_MAX_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_INTEGER_SAMPLES [

	<generated>
	^ GL_MAX_INTEGER_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_NAME_LENGTH [

	<generated>
	^ GL_MAX_NAME_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_NUM_ACTIVE_VARIABLES [

	<generated>
	^ GL_MAX_NUM_ACTIVE_VARIABLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_PROGRAM_TEXTURE_GATHER_OFFSET [

	<generated>
	^ GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_SAMPLE_MASK_WORDS [

	<generated>
	^ GL_MAX_SAMPLE_MASK_WORDS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_SHADER_STORAGE_BLOCK_SIZE [

	<generated>
	^ GL_MAX_SHADER_STORAGE_BLOCK_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_SHADER_STORAGE_BUFFER_BINDINGS [

	<generated>
	^ GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_UNIFORM_LOCATIONS [

	<generated>
	^ GL_MAX_UNIFORM_LOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_VERTEX_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_VERTEX_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_VERTEX_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_VERTEX_ATTRIB_BINDINGS [

	<generated>
	^ GL_MAX_VERTEX_ATTRIB_BINDINGS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_VERTEX_ATTRIB_RELATIVE_OFFSET [

	<generated>
	^ GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_VERTEX_ATTRIB_STRIDE [

	<generated>
	^ GL_MAX_VERTEX_ATTRIB_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_VERTEX_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_VERTEX_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MAX_VERTEX_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> MIN_PROGRAM_TEXTURE_GATHER_OFFSET [

	<generated>
	^ GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> NAME_LENGTH [

	<generated>
	^ GL_NAME_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> NUM_ACTIVE_VARIABLES [

	<generated>
	^ GL_NUM_ACTIVE_VARIABLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> OFFSET [

	<generated>
	^ GL_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> PIXEL_BUFFER_BARRIER_BIT [

	<generated>
	^ GL_PIXEL_BUFFER_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> PROGRAM_INPUT [

	<generated>
	^ GL_PROGRAM_INPUT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> PROGRAM_OUTPUT [

	<generated>
	^ GL_PROGRAM_OUTPUT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> PROGRAM_PIPELINE_BINDING [

	<generated>
	^ GL_PROGRAM_PIPELINE_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> PROGRAM_SEPARABLE [

	<generated>
	^ GL_PROGRAM_SEPARABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> READ_ONLY [

	<generated>
	^ GL_READ_ONLY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> READ_WRITE [

	<generated>
	^ GL_READ_WRITE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> REFERENCED_BY_COMPUTE_SHADER [

	<generated>
	^ GL_REFERENCED_BY_COMPUTE_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> REFERENCED_BY_FRAGMENT_SHADER [

	<generated>
	^ GL_REFERENCED_BY_FRAGMENT_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> REFERENCED_BY_VERTEX_SHADER [

	<generated>
	^ GL_REFERENCED_BY_VERTEX_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> SAMPLE_MASK [

	<generated>
	^ GL_SAMPLE_MASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> SAMPLE_MASK_VALUE [

	<generated>
	^ GL_SAMPLE_MASK_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> SAMPLE_POSITION [

	<generated>
	^ GL_SAMPLE_POSITION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> SHADER_IMAGE_ACCESS_BARRIER_BIT [

	<generated>
	^ GL_SHADER_IMAGE_ACCESS_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> SHADER_STORAGE_BARRIER_BIT [

	<generated>
	^ GL_SHADER_STORAGE_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> SHADER_STORAGE_BLOCK [

	<generated>
	^ GL_SHADER_STORAGE_BLOCK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> SHADER_STORAGE_BUFFER [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> SHADER_STORAGE_BUFFER_BINDING [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> SHADER_STORAGE_BUFFER_SIZE [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> SHADER_STORAGE_BUFFER_START [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER_START
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> STENCIL_INDEX [

	<generated>
	^ GL_STENCIL_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_2D_MULTISAMPLE [

	<generated>
	^ GL_TEXTURE_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_ALPHA_SIZE [

	<generated>
	^ GL_TEXTURE_ALPHA_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_ALPHA_TYPE [

	<generated>
	^ GL_TEXTURE_ALPHA_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_BINDING_2D_MULTISAMPLE [

	<generated>
	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_BLUE_SIZE [

	<generated>
	^ GL_TEXTURE_BLUE_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_BLUE_TYPE [

	<generated>
	^ GL_TEXTURE_BLUE_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_COMPRESSED [

	<generated>
	^ GL_TEXTURE_COMPRESSED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_DEPTH [

	<generated>
	^ GL_TEXTURE_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_DEPTH_SIZE [

	<generated>
	^ GL_TEXTURE_DEPTH_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_DEPTH_TYPE [

	<generated>
	^ GL_TEXTURE_DEPTH_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_FETCH_BARRIER_BIT [

	<generated>
	^ GL_TEXTURE_FETCH_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_FIXED_SAMPLE_LOCATIONS [

	<generated>
	^ GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_GREEN_SIZE [

	<generated>
	^ GL_TEXTURE_GREEN_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_GREEN_TYPE [

	<generated>
	^ GL_TEXTURE_GREEN_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_HEIGHT [

	<generated>
	^ GL_TEXTURE_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_INTERNAL_FORMAT [

	<generated>
	^ GL_TEXTURE_INTERNAL_FORMAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_RED_SIZE [

	<generated>
	^ GL_TEXTURE_RED_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_RED_TYPE [

	<generated>
	^ GL_TEXTURE_RED_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_SAMPLES [

	<generated>
	^ GL_TEXTURE_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_SHARED_SIZE [

	<generated>
	^ GL_TEXTURE_SHARED_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_STENCIL_SIZE [

	<generated>
	^ GL_TEXTURE_STENCIL_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_UPDATE_BARRIER_BIT [

	<generated>
	^ GL_TEXTURE_UPDATE_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TEXTURE_WIDTH [

	<generated>
	^ GL_TEXTURE_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TOP_LEVEL_ARRAY_SIZE [

	<generated>
	^ GL_TOP_LEVEL_ARRAY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TOP_LEVEL_ARRAY_STRIDE [

	<generated>
	^ GL_TOP_LEVEL_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TRANSFORM_FEEDBACK_BARRIER_BIT [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TRANSFORM_FEEDBACK_VARYING [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_VARYING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> TYPE [

	<generated>
	^ GL_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> UNIFORM [

	<generated>
	^ GL_UNIFORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> UNIFORM_BARRIER_BIT [

	<generated>
	^ GL_UNIFORM_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> UNIFORM_BLOCK [

	<generated>
	^ GL_UNIFORM_BLOCK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> UNSIGNED_INT_ATOMIC_COUNTER [

	<generated>
	^ GL_UNSIGNED_INT_ATOMIC_COUNTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> UNSIGNED_INT_IMAGE_2D [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> UNSIGNED_INT_IMAGE_2D_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_2D_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> UNSIGNED_INT_IMAGE_3D [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_3D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> UNSIGNED_INT_IMAGE_CUBE [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_CUBE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> VERTEX_ATTRIB_ARRAY_BARRIER_BIT [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> VERTEX_ATTRIB_BINDING [

	<generated>
	^ GL_VERTEX_ATTRIB_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> VERTEX_ATTRIB_RELATIVE_OFFSET [

	<generated>
	^ GL_VERTEX_ATTRIB_RELATIVE_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> VERTEX_BINDING_BUFFER [

	<generated>
	^ GL_VERTEX_BINDING_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> VERTEX_BINDING_DIVISOR [

	<generated>
	^ GL_VERTEX_BINDING_DIVISOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> VERTEX_BINDING_OFFSET [

	<generated>
	^ GL_VERTEX_BINDING_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> VERTEX_BINDING_STRIDE [

	<generated>
	^ GL_VERTEX_BINDING_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> VERTEX_SHADER_BIT [

	<generated>
	^ GL_VERTEX_SHADER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> WRITE_ONLY [

	<generated>
	^ GL_WRITE_ONLY
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> activeShaderProgram: pipeline with: program [

	<generated>
	<apicall: void 'glActiveShaderProgram' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> bindImageTexture: unit with: texture with: level with: layered with: layer with: access with: format [

	<generated>
	<apicall: void 'glBindImageTexture' (GLuint GLuint GLint GLboolean GLint GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> bindProgramPipeline: pipeline [

	<generated>
	<apicall: void 'glBindProgramPipeline' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> bindVertexBuffer: bindingindex with: buffer with: offset with: stride [

	<generated>
	<apicall: void 'glBindVertexBuffer' (GLuint GLuint GLintptr GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> createShaderProgramv: type with: count with: strings [

	<generated>
	<apicall: GLuint 'glCreateShaderProgramv' (GLenum GLsizei GLchar**)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> deleteProgramPipelines: n with: pipelines [

	<generated>
	<apicall: void 'glDeleteProgramPipelines' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> dispatchCompute: num_groups_x with: num_groups_y with: num_groups_z [

	<generated>
	<apicall: void 'glDispatchCompute' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> dispatchComputeIndirect: indirect [

	<generated>
	<apicall: void 'glDispatchComputeIndirect' (GLintptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> drawArraysIndirect: mode with: indirect [

	<generated>
	<apicall: void 'glDrawArraysIndirect' (GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> drawElementsIndirect: mode with: type with: indirect [

	<generated>
	<apicall: void 'glDrawElementsIndirect' (GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> framebufferParameteri: target with: pname with: param [

	<generated>
	<apicall: void 'glFramebufferParameteri' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> genProgramPipelines: n with: pipelines [

	<generated>
	<apicall: void 'glGenProgramPipelines' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> getBooleani_v: target with: index with: data [

	<generated>
	<apicall: void 'glGetBooleani_v' (GLenum GLuint GLboolean*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> getFramebufferParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetFramebufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> getMultisamplefv: pname with: index with: val [

	<generated>
	<apicall: void 'glGetMultisamplefv' (GLenum GLuint GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> getProgramInterfaceiv: program with: programInterface with: pname with: params [

	<generated>
	<apicall: void 'glGetProgramInterfaceiv' (GLuint GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> getProgramPipelineInfoLog: pipeline with: bufSize with: length with: infoLog [

	<generated>
	<apicall: void 'glGetProgramPipelineInfoLog' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> getProgramPipelineiv: pipeline with: pname with: params [

	<generated>
	<apicall: void 'glGetProgramPipelineiv' (GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> getProgramResourceIndex: program with: programInterface with: name [

	<generated>
	<apicall: GLuint 'glGetProgramResourceIndex' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> getProgramResourceLocation: program with: programInterface with: name [

	<generated>
	<apicall: GLint 'glGetProgramResourceLocation' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> getProgramResourceName: program with: programInterface with: index with: bufSize with: length with: name [

	<generated>
	<apicall: void 'glGetProgramResourceName' (GLuint GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> getProgramResourceiv: program with: programInterface with: index with: propCount with: props with: count with: length with: params [

	<generated>
	<apicall: void 'glGetProgramResourceiv' (GLuint GLenum GLuint GLsizei GLenum* GLsizei GLsizei* GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> getTexLevelParameterfv: target with: level with: pname with: params [

	<generated>
	<apicall: void 'glGetTexLevelParameterfv' (GLenum GLint GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> getTexLevelParameteriv: target with: level with: pname with: params [

	<generated>
	<apicall: void 'glGetTexLevelParameteriv' (GLenum GLint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> isProgramPipeline: pipeline [

	<generated>
	<apicall: GLboolean 'glIsProgramPipeline' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> memoryBarrier: barriers [

	<generated>
	<apicall: void 'glMemoryBarrier' (GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> memoryBarrierByRegion: barriers [

	<generated>
	<apicall: void 'glMemoryBarrierByRegion' (GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform1f: program with: location with: v0 [

	<generated>
	<apicall: void 'glProgramUniform1f' (GLuint GLint GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform1fv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform1fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform1i: program with: location with: v0 [

	<generated>
	<apicall: void 'glProgramUniform1i' (GLuint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform1iv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform1iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform1ui: program with: location with: v0 [

	<generated>
	<apicall: void 'glProgramUniform1ui' (GLuint GLint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform1uiv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform1uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform2f: program with: location with: v0 with: v1 [

	<generated>
	<apicall: void 'glProgramUniform2f' (GLuint GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform2fv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform2fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform2i: program with: location with: v0 with: v1 [

	<generated>
	<apicall: void 'glProgramUniform2i' (GLuint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform2iv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform2iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform2ui: program with: location with: v0 with: v1 [

	<generated>
	<apicall: void 'glProgramUniform2ui' (GLuint GLint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform2uiv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform2uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform3f: program with: location with: v0 with: v1 with: v2 [

	<generated>
	<apicall: void 'glProgramUniform3f' (GLuint GLint GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform3fv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform3fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform3i: program with: location with: v0 with: v1 with: v2 [

	<generated>
	<apicall: void 'glProgramUniform3i' (GLuint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform3iv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform3iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform3ui: program with: location with: v0 with: v1 with: v2 [

	<generated>
	<apicall: void 'glProgramUniform3ui' (GLuint GLint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform3uiv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform3uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform4f: program with: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	<apicall: void 'glProgramUniform4f' (GLuint GLint GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform4fv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform4fv' (GLuint GLint GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform4i: program with: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	<apicall: void 'glProgramUniform4i' (GLuint GLint GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform4iv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform4iv' (GLuint GLint GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform4ui: program with: location with: v0 with: v1 with: v2 with: v3 [

	<generated>
	<apicall: void 'glProgramUniform4ui' (GLuint GLint GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniform4uiv: program with: location with: count with: value [

	<generated>
	<apicall: void 'glProgramUniform4uiv' (GLuint GLint GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniformMatrix2fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix2fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniformMatrix2x3fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix2x3fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniformMatrix2x4fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix2x4fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniformMatrix3fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix3fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniformMatrix3x2fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix3x2fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniformMatrix3x4fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix3x4fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniformMatrix4fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix4fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniformMatrix4x2fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix4x2fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> programUniformMatrix4x3fv: program with: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glProgramUniformMatrix4x3fv' (GLuint GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> sampleMaski: maskNumber with: mask [

	<generated>
	<apicall: void 'glSampleMaski' (GLuint GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> texStorage2DMultisample: target with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<generated>
	<apicall: void 'glTexStorage2DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> useProgramStages: pipeline with: stages with: program [

	<generated>
	<apicall: void 'glUseProgramStages' (GLuint GLbitfield GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> validateProgramPipeline: pipeline [

	<generated>
	<apicall: void 'glValidateProgramPipeline' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> vertexAttribBinding: attribindex with: bindingindex [

	<generated>
	<apicall: void 'glVertexAttribBinding' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> vertexAttribFormat: attribindex with: size with: type with: normalized with: relativeoffset [

	<generated>
	<apicall: void 'glVertexAttribFormat' (GLuint GLint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> vertexAttribIFormat: attribindex with: size with: type with: relativeoffset [

	<generated>
	<apicall: void 'glVertexAttribIFormat' (GLuint GLint GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/12/2021 00:43'
}
GLES3_1 >> vertexBindingDivisor: bindingindex with: divisor [

	<generated>
	<apicall: void 'glVertexBindingDivisor' (GLuint GLuint)>
	^ self externalCallFailed
]
