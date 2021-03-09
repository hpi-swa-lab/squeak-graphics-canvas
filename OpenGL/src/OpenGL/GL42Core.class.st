Class {
	#name : #GL42Core,
	#superclass : #GL41Core,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL42Core class >> majorVersion [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL42Core class >> minorVersion [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:52'
}
GL42Core class >> versionNumber [

	^ 42
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ACTIVE_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_ACTIVE_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ALL_BARRIER_BITS [

	<generated>
	^ GL_ALL_BARRIER_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BARRIER_BIT [

	<generated>
	^ GL_ATOMIC_COUNTER_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BUFFER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BUFFER_BINDING [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BUFFER_DATA_SIZE [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BUFFER_SIZE [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ATOMIC_COUNTER_BUFFER_START [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_START
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> BUFFER_UPDATE_BARRIER_BIT [

	<generated>
	^ GL_BUFFER_UPDATE_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> COMMAND_BARRIER_BIT [

	<generated>
	^ GL_COMMAND_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> COMPRESSED_RGBA_BPTC_UNORM [

	<generated>
	^ GL_COMPRESSED_RGBA_BPTC_UNORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> COMPRESSED_RGB_BPTC_SIGNED_FLOAT [

	<generated>
	^ GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT [

	<generated>
	^ GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> COMPRESSED_SRGB_ALPHA_BPTC_UNORM [

	<generated>
	^ GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> COPY_READ_BUFFER_BINDING [

	<generated>
	^ GL_COPY_READ_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> COPY_WRITE_BUFFER_BINDING [

	<generated>
	^ GL_COPY_WRITE_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> ELEMENT_ARRAY_BARRIER_BIT [

	<generated>
	^ GL_ELEMENT_ARRAY_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> FRAMEBUFFER_BARRIER_BIT [

	<generated>
	^ GL_FRAMEBUFFER_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_1D [

	<generated>
	^ GL_IMAGE_1D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_1D_ARRAY [

	<generated>
	^ GL_IMAGE_1D_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_2D [

	<generated>
	^ GL_IMAGE_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_2D_ARRAY [

	<generated>
	^ GL_IMAGE_2D_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_2D_MULTISAMPLE [

	<generated>
	^ GL_IMAGE_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_IMAGE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_2D_RECT [

	<generated>
	^ GL_IMAGE_2D_RECT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_3D [

	<generated>
	^ GL_IMAGE_3D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_BINDING_ACCESS [

	<generated>
	^ GL_IMAGE_BINDING_ACCESS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_BINDING_FORMAT [

	<generated>
	^ GL_IMAGE_BINDING_FORMAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_BINDING_LAYER [

	<generated>
	^ GL_IMAGE_BINDING_LAYER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_BINDING_LAYERED [

	<generated>
	^ GL_IMAGE_BINDING_LAYERED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_BINDING_LEVEL [

	<generated>
	^ GL_IMAGE_BINDING_LEVEL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_BINDING_NAME [

	<generated>
	^ GL_IMAGE_BINDING_NAME
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_BUFFER [

	<generated>
	^ GL_IMAGE_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_CUBE [

	<generated>
	^ GL_IMAGE_CUBE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_FORMAT_COMPATIBILITY_BY_CLASS [

	<generated>
	^ GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_FORMAT_COMPATIBILITY_BY_SIZE [

	<generated>
	^ GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> IMAGE_FORMAT_COMPATIBILITY_TYPE [

	<generated>
	^ GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> INT_IMAGE_1D [

	<generated>
	^ GL_INT_IMAGE_1D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> INT_IMAGE_1D_ARRAY [

	<generated>
	^ GL_INT_IMAGE_1D_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> INT_IMAGE_2D [

	<generated>
	^ GL_INT_IMAGE_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> INT_IMAGE_2D_ARRAY [

	<generated>
	^ GL_INT_IMAGE_2D_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> INT_IMAGE_2D_MULTISAMPLE [

	<generated>
	^ GL_INT_IMAGE_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> INT_IMAGE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> INT_IMAGE_2D_RECT [

	<generated>
	^ GL_INT_IMAGE_2D_RECT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> INT_IMAGE_3D [

	<generated>
	^ GL_INT_IMAGE_3D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> INT_IMAGE_BUFFER [

	<generated>
	^ GL_INT_IMAGE_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> INT_IMAGE_CUBE [

	<generated>
	^ GL_INT_IMAGE_CUBE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> INT_IMAGE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_INT_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_ATOMIC_COUNTER_BUFFER_BINDINGS [

	<generated>
	^ GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_ATOMIC_COUNTER_BUFFER_SIZE [

	<generated>
	^ GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_COMBINED_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_COMBINED_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_COMBINED_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_COMBINED_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_COMBINED_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS [

	<generated>
	^ GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_FRAGMENT_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_FRAGMENT_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_FRAGMENT_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_FRAGMENT_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_GEOMETRY_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_GEOMETRY_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_GEOMETRY_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_GEOMETRY_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_IMAGE_SAMPLES [

	<generated>
	^ GL_MAX_IMAGE_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_IMAGE_UNITS [

	<generated>
	^ GL_MAX_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_TESS_CONTROL_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_TESS_CONTROL_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_TESS_EVALUATION_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_TESS_EVALUATION_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_VERTEX_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_VERTEX_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_VERTEX_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MAX_VERTEX_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_VERTEX_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> MIN_MAP_BUFFER_ALIGNMENT [

	<generated>
	^ GL_MIN_MAP_BUFFER_ALIGNMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> NUM_SAMPLE_COUNTS [

	<generated>
	^ GL_NUM_SAMPLE_COUNTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> PACK_COMPRESSED_BLOCK_DEPTH [

	<generated>
	^ GL_PACK_COMPRESSED_BLOCK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> PACK_COMPRESSED_BLOCK_HEIGHT [

	<generated>
	^ GL_PACK_COMPRESSED_BLOCK_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> PACK_COMPRESSED_BLOCK_SIZE [

	<generated>
	^ GL_PACK_COMPRESSED_BLOCK_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> PACK_COMPRESSED_BLOCK_WIDTH [

	<generated>
	^ GL_PACK_COMPRESSED_BLOCK_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> PIXEL_BUFFER_BARRIER_BIT [

	<generated>
	^ GL_PIXEL_BUFFER_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> SHADER_IMAGE_ACCESS_BARRIER_BIT [

	<generated>
	^ GL_SHADER_IMAGE_ACCESS_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> TEXTURE_FETCH_BARRIER_BIT [

	<generated>
	^ GL_TEXTURE_FETCH_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> TEXTURE_IMMUTABLE_FORMAT [

	<generated>
	^ GL_TEXTURE_IMMUTABLE_FORMAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> TEXTURE_UPDATE_BARRIER_BIT [

	<generated>
	^ GL_TEXTURE_UPDATE_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> TRANSFORM_FEEDBACK_ACTIVE [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_ACTIVE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> TRANSFORM_FEEDBACK_BARRIER_BIT [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> TRANSFORM_FEEDBACK_PAUSED [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_PAUSED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX [

	<generated>
	^ GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNIFORM_BARRIER_BIT [

	<generated>
	^ GL_UNIFORM_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNPACK_COMPRESSED_BLOCK_DEPTH [

	<generated>
	^ GL_UNPACK_COMPRESSED_BLOCK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNPACK_COMPRESSED_BLOCK_HEIGHT [

	<generated>
	^ GL_UNPACK_COMPRESSED_BLOCK_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNPACK_COMPRESSED_BLOCK_SIZE [

	<generated>
	^ GL_UNPACK_COMPRESSED_BLOCK_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNPACK_COMPRESSED_BLOCK_WIDTH [

	<generated>
	^ GL_UNPACK_COMPRESSED_BLOCK_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNSIGNED_INT_ATOMIC_COUNTER [

	<generated>
	^ GL_UNSIGNED_INT_ATOMIC_COUNTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNSIGNED_INT_IMAGE_1D [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_1D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNSIGNED_INT_IMAGE_1D_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_1D_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNSIGNED_INT_IMAGE_2D [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNSIGNED_INT_IMAGE_2D_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_2D_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNSIGNED_INT_IMAGE_2D_MULTISAMPLE [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNSIGNED_INT_IMAGE_2D_RECT [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_2D_RECT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNSIGNED_INT_IMAGE_3D [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_3D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNSIGNED_INT_IMAGE_BUFFER [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNSIGNED_INT_IMAGE_CUBE [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_CUBE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> VERTEX_ATTRIB_ARRAY_BARRIER_BIT [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> bindImageTexture: unit with: texture with: level with: layered with: layer with: access with: format [

	<generated>
	<apicall: void 'glBindImageTexture' (GLuint GLuint GLint GLboolean GLint GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> drawArraysInstancedBaseInstance: mode with: first with: count with: instancecount with: baseinstance [

	<generated>
	<apicall: void 'glDrawArraysInstancedBaseInstance' (GLenum GLint GLsizei GLsizei GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> drawElementsInstancedBaseInstance: mode with: count with: type with: indices with: instancecount with: baseinstance [

	<generated>
	<apicall: void 'glDrawElementsInstancedBaseInstance' (GLenum GLsizei GLenum void* GLsizei GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> drawElementsInstancedBaseVertexBaseInstance: mode with: count with: type with: indices with: instancecount with: basevertex with: baseinstance [

	<generated>
	<apicall: void 'glDrawElementsInstancedBaseVertexBaseInstance' (GLenum GLsizei GLenum void* GLsizei GLint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> drawTransformFeedbackInstanced: mode with: id with: instancecount [

	<generated>
	<apicall: void 'glDrawTransformFeedbackInstanced' (GLenum GLuint GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> drawTransformFeedbackStreamInstanced: mode with: id with: stream with: instancecount [

	<generated>
	<apicall: void 'glDrawTransformFeedbackStreamInstanced' (GLenum GLuint GLuint GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> getActiveAtomicCounterBufferiv: program with: bufferIndex with: pname with: params [

	<generated>
	<apicall: void 'glGetActiveAtomicCounterBufferiv' (GLuint GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> getInternalformativ: target with: internalformat with: pname with: count with: params [

	<generated>
	<apicall: void 'glGetInternalformativ' (GLenum GLenum GLenum GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> memoryBarrier: barriers [

	<generated>
	<apicall: void 'glMemoryBarrier' (GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> texStorage1D: target with: levels with: internalformat with: width [

	<generated>
	<apicall: void 'glTexStorage1D' (GLenum GLsizei GLenum GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> texStorage2D: target with: levels with: internalformat with: width with: height [

	<generated>
	<apicall: void 'glTexStorage2D' (GLenum GLsizei GLenum GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL42Core >> texStorage3D: target with: levels with: internalformat with: width with: height with: depth [

	<generated>
	<apicall: void 'glTexStorage3D' (GLenum GLsizei GLenum GLsizei GLsizei GLsizei)>
	^ self externalCallFailed
]
