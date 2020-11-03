Class {
	#name : #'GL3_2',
	#superclass : #'GL3_1',
	#category : #'OpenGL-API-GL'
}

{ #category : #accessing }
GL3_2 class >> majorVersion [

	^ 3
]

{ #category : #accessing }
GL3_2 class >> minorVersion [

	^ 2
]

{ #category : #accessing }
GL3_2 class >> versionNumber [

	^ 32
]

{ #category : #'constants - removed' }
GL3_2 >> ACCUM [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ACCUM
]

{ #category : #'constants - removed' }
GL3_2 >> ACCUM_ALPHA_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ACCUM_ALPHA_BITS
]

{ #category : #'constants - removed' }
GL3_2 >> ACCUM_BLUE_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ACCUM_BLUE_BITS
]

{ #category : #'constants - removed' }
GL3_2 >> ACCUM_BUFFER_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ACCUM_BUFFER_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> ACCUM_CLEAR_VALUE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ACCUM_CLEAR_VALUE
]

{ #category : #'constants - removed' }
GL3_2 >> ACCUM_GREEN_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ACCUM_GREEN_BITS
]

{ #category : #'constants - removed' }
GL3_2 >> ACCUM_RED_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ACCUM_RED_BITS
]

{ #category : #'constants - removed' }
GL3_2 >> ADD [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ADD
]

{ #category : #'constants - removed' }
GL3_2 >> ADD_SIGNED [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ADD_SIGNED
]

{ #category : #'constants - removed' }
GL3_2 >> ALIASED_POINT_SIZE_RANGE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALIASED_POINT_SIZE_RANGE
]

{ #category : #'constants - removed' }
GL3_2 >> ALL_ATTRIB_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALL_ATTRIB_BITS
]

{ #category : #'constants - removed' }
GL3_2 >> ALPHA12 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALPHA12
]

{ #category : #'constants - removed' }
GL3_2 >> ALPHA16 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALPHA16
]

{ #category : #'constants - removed' }
GL3_2 >> ALPHA4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALPHA4
]

{ #category : #'constants - removed' }
GL3_2 >> ALPHA8 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALPHA8
]

{ #category : #'constants - removed' }
GL3_2 >> ALPHA_BIAS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALPHA_BIAS
]

{ #category : #'constants - removed' }
GL3_2 >> ALPHA_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALPHA_BITS
]

{ #category : #'constants - removed' }
GL3_2 >> ALPHA_INTEGER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALPHA_INTEGER
]

{ #category : #'constants - removed' }
GL3_2 >> ALPHA_SCALE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALPHA_SCALE
]

{ #category : #'constants - removed' }
GL3_2 >> ALPHA_TEST [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALPHA_TEST
]

{ #category : #'constants - removed' }
GL3_2 >> ALPHA_TEST_FUNC [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALPHA_TEST_FUNC
]

{ #category : #'constants - removed' }
GL3_2 >> ALPHA_TEST_REF [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ALPHA_TEST_REF
]

{ #category : #'constants - required' }
GL3_2 >> ALREADY_SIGNALED [

	<generated>
	^ GL_ALREADY_SIGNALED
]

{ #category : #'constants - removed' }
GL3_2 >> AMBIENT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super AMBIENT
]

{ #category : #'constants - removed' }
GL3_2 >> AMBIENT_AND_DIFFUSE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super AMBIENT_AND_DIFFUSE
]

{ #category : #'constants - removed' }
GL3_2 >> ATTRIB_STACK_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ATTRIB_STACK_DEPTH
]

{ #category : #'constants - removed' }
GL3_2 >> AUTO_NORMAL [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super AUTO_NORMAL
]

{ #category : #'constants - removed' }
GL3_2 >> AUX0 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super AUX0
]

{ #category : #'constants - removed' }
GL3_2 >> AUX1 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super AUX1
]

{ #category : #'constants - removed' }
GL3_2 >> AUX2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super AUX2
]

{ #category : #'constants - removed' }
GL3_2 >> AUX3 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super AUX3
]

{ #category : #'constants - removed' }
GL3_2 >> AUX_BUFFERS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super AUX_BUFFERS
]

{ #category : #'constants - removed' }
GL3_2 >> BITMAP [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super BITMAP
]

{ #category : #'constants - removed' }
GL3_2 >> BITMAP_TOKEN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super BITMAP_TOKEN
]

{ #category : #'constants - removed' }
GL3_2 >> BLUE_BIAS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super BLUE_BIAS
]

{ #category : #'constants - removed' }
GL3_2 >> BLUE_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super BLUE_BITS
]

{ #category : #'constants - removed' }
GL3_2 >> BLUE_SCALE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super BLUE_SCALE
]

{ #category : #'constants - removed' }
GL3_2 >> C3F_V3F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super C3F_V3F
]

{ #category : #'constants - removed' }
GL3_2 >> C4F_N3F_V3F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super C4F_N3F_V3F
]

{ #category : #'constants - removed' }
GL3_2 >> C4UB_V2F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super C4UB_V2F
]

{ #category : #'constants - removed' }
GL3_2 >> C4UB_V3F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super C4UB_V3F
]

{ #category : #'constants - removed' }
GL3_2 >> CLAMP [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLAMP
]

{ #category : #'constants - removed' }
GL3_2 >> CLAMP_FRAGMENT_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLAMP_FRAGMENT_COLOR
]

{ #category : #'constants - removed' }
GL3_2 >> CLAMP_VERTEX_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLAMP_VERTEX_COLOR
]

{ #category : #'constants - removed' }
GL3_2 >> CLIENT_ACTIVE_TEXTURE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLIENT_ACTIVE_TEXTURE
]

{ #category : #'constants - removed' }
GL3_2 >> CLIENT_ALL_ATTRIB_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLIENT_ALL_ATTRIB_BITS
]

{ #category : #'constants - removed' }
GL3_2 >> CLIENT_ATTRIB_STACK_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLIENT_ATTRIB_STACK_DEPTH
]

{ #category : #'constants - removed' }
GL3_2 >> CLIENT_PIXEL_STORE_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLIENT_PIXEL_STORE_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> CLIENT_VERTEX_ARRAY_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLIENT_VERTEX_ARRAY_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> CLIP_PLANE0 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLIP_PLANE0
]

{ #category : #'constants - removed' }
GL3_2 >> CLIP_PLANE1 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLIP_PLANE1
]

{ #category : #'constants - removed' }
GL3_2 >> CLIP_PLANE2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLIP_PLANE2
]

{ #category : #'constants - removed' }
GL3_2 >> CLIP_PLANE3 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLIP_PLANE3
]

{ #category : #'constants - removed' }
GL3_2 >> CLIP_PLANE4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLIP_PLANE4
]

{ #category : #'constants - removed' }
GL3_2 >> CLIP_PLANE5 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CLIP_PLANE5
]

{ #category : #'constants - removed' }
GL3_2 >> COEFF [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COEFF
]

{ #category : #'constants - removed' }
GL3_2 >> COLOR_ARRAY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COLOR_ARRAY
]

{ #category : #'constants - removed' }
GL3_2 >> COLOR_ARRAY_BUFFER_BINDING [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COLOR_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - removed' }
GL3_2 >> COLOR_ARRAY_POINTER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COLOR_ARRAY_POINTER
]

{ #category : #'constants - removed' }
GL3_2 >> COLOR_ARRAY_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COLOR_ARRAY_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> COLOR_ARRAY_STRIDE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COLOR_ARRAY_STRIDE
]

{ #category : #'constants - removed' }
GL3_2 >> COLOR_ARRAY_TYPE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COLOR_ARRAY_TYPE
]

{ #category : #'constants - removed' }
GL3_2 >> COLOR_INDEX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COLOR_INDEX
]

{ #category : #'constants - removed' }
GL3_2 >> COLOR_INDEXES [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COLOR_INDEXES
]

{ #category : #'constants - removed' }
GL3_2 >> COLOR_MATERIAL [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COLOR_MATERIAL
]

{ #category : #'constants - removed' }
GL3_2 >> COLOR_MATERIAL_FACE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COLOR_MATERIAL_FACE
]

{ #category : #'constants - removed' }
GL3_2 >> COLOR_MATERIAL_PARAMETER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COLOR_MATERIAL_PARAMETER
]

{ #category : #'constants - removed' }
GL3_2 >> COLOR_SUM [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COLOR_SUM
]

{ #category : #'constants - removed' }
GL3_2 >> COMBINE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COMBINE
]

{ #category : #'constants - removed' }
GL3_2 >> COMBINE_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COMBINE_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> COMBINE_RGB [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COMBINE_RGB
]

{ #category : #'constants - removed' }
GL3_2 >> COMPARE_R_TO_TEXTURE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COMPARE_R_TO_TEXTURE
]

{ #category : #'constants - removed' }
GL3_2 >> COMPILE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COMPILE
]

{ #category : #'constants - removed' }
GL3_2 >> COMPILE_AND_EXECUTE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COMPILE_AND_EXECUTE
]

{ #category : #'constants - removed' }
GL3_2 >> COMPRESSED_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COMPRESSED_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> COMPRESSED_INTENSITY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COMPRESSED_INTENSITY
]

{ #category : #'constants - removed' }
GL3_2 >> COMPRESSED_LUMINANCE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COMPRESSED_LUMINANCE
]

{ #category : #'constants - removed' }
GL3_2 >> COMPRESSED_LUMINANCE_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COMPRESSED_LUMINANCE_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> COMPRESSED_SLUMINANCE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COMPRESSED_SLUMINANCE
]

{ #category : #'constants - removed' }
GL3_2 >> COMPRESSED_SLUMINANCE_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COMPRESSED_SLUMINANCE_ALPHA
]

{ #category : #'constants - required' }
GL3_2 >> CONDITION_SATISFIED [

	<generated>
	^ GL_CONDITION_SATISFIED
]

{ #category : #'constants - removed' }
GL3_2 >> CONSTANT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CONSTANT
]

{ #category : #'constants - removed' }
GL3_2 >> CONSTANT_ATTENUATION [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CONSTANT_ATTENUATION
]

{ #category : #'constants - required' }
GL3_2 >> CONTEXT_COMPATIBILITY_PROFILE_BIT [

	<generated>
	^ GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
]

{ #category : #'constants - required' }
GL3_2 >> CONTEXT_CORE_PROFILE_BIT [

	<generated>
	^ GL_CONTEXT_CORE_PROFILE_BIT
]

{ #category : #'constants - required' }
GL3_2 >> CONTEXT_PROFILE_MASK [

	<generated>
	^ GL_CONTEXT_PROFILE_MASK
]

{ #category : #'constants - removed' }
GL3_2 >> COORD_REPLACE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COORD_REPLACE
]

{ #category : #'constants - removed' }
GL3_2 >> COPY_PIXEL_TOKEN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super COPY_PIXEL_TOKEN
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_COLOR
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_FOG_COORD [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_FOG_COORD
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_FOG_COORDINATE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_FOG_COORDINATE
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_INDEX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_INDEX
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_NORMAL [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_NORMAL
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_RASTER_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_RASTER_COLOR
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_RASTER_DISTANCE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_RASTER_DISTANCE
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_RASTER_INDEX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_RASTER_INDEX
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_RASTER_POSITION [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_RASTER_POSITION
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_RASTER_POSITION_VALID [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_RASTER_POSITION_VALID
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_RASTER_SECONDARY_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_RASTER_SECONDARY_COLOR
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_RASTER_TEXTURE_COORDS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_RASTER_TEXTURE_COORDS
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_SECONDARY_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_SECONDARY_COLOR
]

{ #category : #'constants - removed' }
GL3_2 >> CURRENT_TEXTURE_COORDS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super CURRENT_TEXTURE_COORDS
]

{ #category : #'constants - removed' }
GL3_2 >> DECAL [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super DECAL
]

{ #category : #'constants - removed' }
GL3_2 >> DEPTH_BIAS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super DEPTH_BIAS
]

{ #category : #'constants - removed' }
GL3_2 >> DEPTH_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super DEPTH_BITS
]

{ #category : #'constants - required' }
GL3_2 >> DEPTH_CLAMP [

	<generated>
	^ GL_DEPTH_CLAMP
]

{ #category : #'constants - removed' }
GL3_2 >> DEPTH_SCALE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super DEPTH_SCALE
]

{ #category : #'constants - removed' }
GL3_2 >> DEPTH_TEXTURE_MODE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super DEPTH_TEXTURE_MODE
]

{ #category : #'constants - removed' }
GL3_2 >> DIFFUSE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super DIFFUSE
]

{ #category : #'constants - removed' }
GL3_2 >> DOMAIN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super DOMAIN
]

{ #category : #'constants - removed' }
GL3_2 >> DOT3_RGB [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super DOT3_RGB
]

{ #category : #'constants - removed' }
GL3_2 >> DOT3_RGBA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super DOT3_RGBA
]

{ #category : #'constants - removed' }
GL3_2 >> DRAW_PIXEL_TOKEN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super DRAW_PIXEL_TOKEN
]

{ #category : #'constants - removed' }
GL3_2 >> EDGE_FLAG [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super EDGE_FLAG
]

{ #category : #'constants - removed' }
GL3_2 >> EDGE_FLAG_ARRAY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super EDGE_FLAG_ARRAY
]

{ #category : #'constants - removed' }
GL3_2 >> EDGE_FLAG_ARRAY_BUFFER_BINDING [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super EDGE_FLAG_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - removed' }
GL3_2 >> EDGE_FLAG_ARRAY_POINTER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super EDGE_FLAG_ARRAY_POINTER
]

{ #category : #'constants - removed' }
GL3_2 >> EDGE_FLAG_ARRAY_STRIDE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super EDGE_FLAG_ARRAY_STRIDE
]

{ #category : #'constants - removed' }
GL3_2 >> EMISSION [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super EMISSION
]

{ #category : #'constants - removed' }
GL3_2 >> ENABLE_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ENABLE_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> EVAL_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super EVAL_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> EXP [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super EXP
]

{ #category : #'constants - removed' }
GL3_2 >> EXP2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super EXP2
]

{ #category : #'constants - removed' }
GL3_2 >> EYE_LINEAR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super EYE_LINEAR
]

{ #category : #'constants - removed' }
GL3_2 >> EYE_PLANE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super EYE_PLANE
]

{ #category : #'constants - removed' }
GL3_2 >> FEEDBACK [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FEEDBACK
]

{ #category : #'constants - removed' }
GL3_2 >> FEEDBACK_BUFFER_POINTER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FEEDBACK_BUFFER_POINTER
]

{ #category : #'constants - removed' }
GL3_2 >> FEEDBACK_BUFFER_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FEEDBACK_BUFFER_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> FEEDBACK_BUFFER_TYPE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FEEDBACK_BUFFER_TYPE
]

{ #category : #'constants - required' }
GL3_2 >> FIRST_VERTEX_CONVENTION [

	<generated>
	^ GL_FIRST_VERTEX_CONVENTION
]

{ #category : #'constants - removed' }
GL3_2 >> FLAT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FLAT
]

{ #category : #'constants - removed' }
GL3_2 >> FOG [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COLOR
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORD [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORD
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORDINATE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORDINATE
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORDINATE_ARRAY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORDINATE_ARRAY
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORDINATE_ARRAY_BUFFER_BINDING [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORDINATE_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORDINATE_ARRAY_POINTER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORDINATE_ARRAY_POINTER
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORDINATE_ARRAY_STRIDE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORDINATE_ARRAY_STRIDE
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORDINATE_ARRAY_TYPE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORDINATE_ARRAY_TYPE
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORDINATE_SOURCE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORDINATE_SOURCE
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORD_ARRAY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORD_ARRAY
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORD_ARRAY_BUFFER_BINDING [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORD_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORD_ARRAY_POINTER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORD_ARRAY_POINTER
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORD_ARRAY_STRIDE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORD_ARRAY_STRIDE
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORD_ARRAY_TYPE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORD_ARRAY_TYPE
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_COORD_SRC [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_COORD_SRC
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_DENSITY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_DENSITY
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_END [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_END
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_HINT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_HINT
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_INDEX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_INDEX
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_MODE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_MODE
]

{ #category : #'constants - removed' }
GL3_2 >> FOG_START [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FOG_START
]

{ #category : #'constants - removed' }
GL3_2 >> FRAGMENT_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super FRAGMENT_DEPTH
]

{ #category : #'constants - required' }
GL3_2 >> FRAMEBUFFER_ATTACHMENT_LAYERED [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_LAYERED
]

{ #category : #'constants - required' }
GL3_2 >> FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
]

{ #category : #'constants - removed' }
GL3_2 >> GENERATE_MIPMAP [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GENERATE_MIPMAP
]

{ #category : #'constants - removed' }
GL3_2 >> GENERATE_MIPMAP_HINT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GENERATE_MIPMAP_HINT
]

{ #category : #'constants - required' }
GL3_2 >> GEOMETRY_INPUT_TYPE [

	<generated>
	^ GL_GEOMETRY_INPUT_TYPE
]

{ #category : #'constants - required' }
GL3_2 >> GEOMETRY_OUTPUT_TYPE [

	<generated>
	^ GL_GEOMETRY_OUTPUT_TYPE
]

{ #category : #'constants - required' }
GL3_2 >> GEOMETRY_SHADER [

	<generated>
	^ GL_GEOMETRY_SHADER
]

{ #category : #'constants - required' }
GL3_2 >> GEOMETRY_VERTICES_OUT [

	<generated>
	^ GL_GEOMETRY_VERTICES_OUT
]

{ #category : #'constants - removed' }
GL3_2 >> GL_2D [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GL_2D
]

{ #category : #'constants - removed' }
GL3_2 >> GL_2_BYTES [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GL_2_BYTES
]

{ #category : #'constants - removed' }
GL3_2 >> GL_3D [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GL_3D
]

{ #category : #'constants - removed' }
GL3_2 >> GL_3D_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GL_3D_COLOR
]

{ #category : #'constants - removed' }
GL3_2 >> GL_3D_COLOR_TEXTURE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GL_3D_COLOR_TEXTURE
]

{ #category : #'constants - removed' }
GL3_2 >> GL_3_BYTES [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GL_3_BYTES
]

{ #category : #'constants - removed' }
GL3_2 >> GL_4D_COLOR_TEXTURE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GL_4D_COLOR_TEXTURE
]

{ #category : #'constants - removed' }
GL3_2 >> GL_4_BYTES [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GL_4_BYTES
]

{ #category : #'constants - removed' }
GL3_2 >> GREEN_BIAS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GREEN_BIAS
]

{ #category : #'constants - removed' }
GL3_2 >> GREEN_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GREEN_BITS
]

{ #category : #'constants - removed' }
GL3_2 >> GREEN_SCALE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super GREEN_SCALE
]

{ #category : #'constants - removed' }
GL3_2 >> HINT_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super HINT_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX_ARRAY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX_ARRAY
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX_ARRAY_BUFFER_BINDING [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX_ARRAY_POINTER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX_ARRAY_POINTER
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX_ARRAY_STRIDE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX_ARRAY_STRIDE
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX_ARRAY_TYPE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX_ARRAY_TYPE
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX_BITS
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX_CLEAR_VALUE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX_CLEAR_VALUE
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX_LOGIC_OP [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX_LOGIC_OP
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX_MODE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX_MODE
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX_OFFSET [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX_OFFSET
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX_SHIFT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX_SHIFT
]

{ #category : #'constants - removed' }
GL3_2 >> INDEX_WRITEMASK [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INDEX_WRITEMASK
]

{ #category : #'constants - removed' }
GL3_2 >> INTENSITY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INTENSITY
]

{ #category : #'constants - removed' }
GL3_2 >> INTENSITY12 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INTENSITY12
]

{ #category : #'constants - removed' }
GL3_2 >> INTENSITY16 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INTENSITY16
]

{ #category : #'constants - removed' }
GL3_2 >> INTENSITY4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INTENSITY4
]

{ #category : #'constants - removed' }
GL3_2 >> INTENSITY8 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INTENSITY8
]

{ #category : #'constants - removed' }
GL3_2 >> INTERPOLATE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super INTERPOLATE
]

{ #category : #'constants - required' }
GL3_2 >> INT_SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_INT_SAMPLER_2D_MULTISAMPLE
]

{ #category : #'constants - required' }
GL3_2 >> INT_SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{ #category : #'constants - required' }
GL3_2 >> LAST_VERTEX_CONVENTION [

	<generated>
	^ GL_LAST_VERTEX_CONVENTION
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHT0 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHT0
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHT1 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHT1
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHT2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHT2
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHT3 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHT3
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHT4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHT4
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHT5 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHT5
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHT6 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHT6
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHT7 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHT7
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHTING [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHTING
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHTING_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHTING_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHT_MODEL_AMBIENT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHT_MODEL_AMBIENT
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHT_MODEL_COLOR_CONTROL [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHT_MODEL_COLOR_CONTROL
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHT_MODEL_LOCAL_VIEWER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHT_MODEL_LOCAL_VIEWER
]

{ #category : #'constants - removed' }
GL3_2 >> LIGHT_MODEL_TWO_SIDE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIGHT_MODEL_TWO_SIDE
]

{ #category : #'constants - removed' }
GL3_2 >> LINEAR_ATTENUATION [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LINEAR_ATTENUATION
]

{ #category : #'constants - required' }
GL3_2 >> LINES_ADJACENCY [

	<generated>
	^ GL_LINES_ADJACENCY
]

{ #category : #'constants - removed' }
GL3_2 >> LINE_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LINE_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> LINE_RESET_TOKEN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LINE_RESET_TOKEN
]

{ #category : #'constants - removed' }
GL3_2 >> LINE_STIPPLE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LINE_STIPPLE
]

{ #category : #'constants - removed' }
GL3_2 >> LINE_STIPPLE_PATTERN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LINE_STIPPLE_PATTERN
]

{ #category : #'constants - removed' }
GL3_2 >> LINE_STIPPLE_REPEAT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LINE_STIPPLE_REPEAT
]

{ #category : #'constants - required' }
GL3_2 >> LINE_STRIP_ADJACENCY [

	<generated>
	^ GL_LINE_STRIP_ADJACENCY
]

{ #category : #'constants - removed' }
GL3_2 >> LINE_TOKEN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LINE_TOKEN
]

{ #category : #'constants - removed' }
GL3_2 >> LIST_BASE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIST_BASE
]

{ #category : #'constants - removed' }
GL3_2 >> LIST_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIST_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> LIST_INDEX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIST_INDEX
]

{ #category : #'constants - removed' }
GL3_2 >> LIST_MODE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LIST_MODE
]

{ #category : #'constants - removed' }
GL3_2 >> LOAD [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LOAD
]

{ #category : #'constants - removed' }
GL3_2 >> LOGIC_OP [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LOGIC_OP
]

{ #category : #'constants - removed' }
GL3_2 >> LUMINANCE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LUMINANCE
]

{ #category : #'constants - removed' }
GL3_2 >> LUMINANCE12 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LUMINANCE12
]

{ #category : #'constants - removed' }
GL3_2 >> LUMINANCE12_ALPHA12 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LUMINANCE12_ALPHA12
]

{ #category : #'constants - removed' }
GL3_2 >> LUMINANCE12_ALPHA4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LUMINANCE12_ALPHA4
]

{ #category : #'constants - removed' }
GL3_2 >> LUMINANCE16 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LUMINANCE16
]

{ #category : #'constants - removed' }
GL3_2 >> LUMINANCE16_ALPHA16 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LUMINANCE16_ALPHA16
]

{ #category : #'constants - removed' }
GL3_2 >> LUMINANCE4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LUMINANCE4
]

{ #category : #'constants - removed' }
GL3_2 >> LUMINANCE4_ALPHA4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LUMINANCE4_ALPHA4
]

{ #category : #'constants - removed' }
GL3_2 >> LUMINANCE6_ALPHA2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LUMINANCE6_ALPHA2
]

{ #category : #'constants - removed' }
GL3_2 >> LUMINANCE8 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LUMINANCE8
]

{ #category : #'constants - removed' }
GL3_2 >> LUMINANCE8_ALPHA8 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LUMINANCE8_ALPHA8
]

{ #category : #'constants - removed' }
GL3_2 >> LUMINANCE_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super LUMINANCE_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> MAP1_COLOR_4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP1_COLOR_4
]

{ #category : #'constants - removed' }
GL3_2 >> MAP1_GRID_DOMAIN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP1_GRID_DOMAIN
]

{ #category : #'constants - removed' }
GL3_2 >> MAP1_GRID_SEGMENTS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP1_GRID_SEGMENTS
]

{ #category : #'constants - removed' }
GL3_2 >> MAP1_INDEX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP1_INDEX
]

{ #category : #'constants - removed' }
GL3_2 >> MAP1_NORMAL [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP1_NORMAL
]

{ #category : #'constants - removed' }
GL3_2 >> MAP1_TEXTURE_COORD_1 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP1_TEXTURE_COORD_1
]

{ #category : #'constants - removed' }
GL3_2 >> MAP1_TEXTURE_COORD_2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP1_TEXTURE_COORD_2
]

{ #category : #'constants - removed' }
GL3_2 >> MAP1_TEXTURE_COORD_3 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP1_TEXTURE_COORD_3
]

{ #category : #'constants - removed' }
GL3_2 >> MAP1_TEXTURE_COORD_4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP1_TEXTURE_COORD_4
]

{ #category : #'constants - removed' }
GL3_2 >> MAP1_VERTEX_3 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP1_VERTEX_3
]

{ #category : #'constants - removed' }
GL3_2 >> MAP1_VERTEX_4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP1_VERTEX_4
]

{ #category : #'constants - removed' }
GL3_2 >> MAP2_COLOR_4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP2_COLOR_4
]

{ #category : #'constants - removed' }
GL3_2 >> MAP2_GRID_DOMAIN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP2_GRID_DOMAIN
]

{ #category : #'constants - removed' }
GL3_2 >> MAP2_GRID_SEGMENTS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP2_GRID_SEGMENTS
]

{ #category : #'constants - removed' }
GL3_2 >> MAP2_INDEX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP2_INDEX
]

{ #category : #'constants - removed' }
GL3_2 >> MAP2_NORMAL [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP2_NORMAL
]

{ #category : #'constants - removed' }
GL3_2 >> MAP2_TEXTURE_COORD_1 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP2_TEXTURE_COORD_1
]

{ #category : #'constants - removed' }
GL3_2 >> MAP2_TEXTURE_COORD_2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP2_TEXTURE_COORD_2
]

{ #category : #'constants - removed' }
GL3_2 >> MAP2_TEXTURE_COORD_3 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP2_TEXTURE_COORD_3
]

{ #category : #'constants - removed' }
GL3_2 >> MAP2_TEXTURE_COORD_4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP2_TEXTURE_COORD_4
]

{ #category : #'constants - removed' }
GL3_2 >> MAP2_VERTEX_3 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP2_VERTEX_3
]

{ #category : #'constants - removed' }
GL3_2 >> MAP2_VERTEX_4 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP2_VERTEX_4
]

{ #category : #'constants - removed' }
GL3_2 >> MAP_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP_COLOR
]

{ #category : #'constants - removed' }
GL3_2 >> MAP_STENCIL [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAP_STENCIL
]

{ #category : #'constants - removed' }
GL3_2 >> MATRIX_MODE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MATRIX_MODE
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_ATTRIB_STACK_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_ATTRIB_STACK_DEPTH
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_CLIENT_ATTRIB_STACK_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_CLIENT_ATTRIB_STACK_DEPTH
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_CLIP_PLANES [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_CLIP_PLANES
]

{ #category : #'constants - required' }
GL3_2 >> MAX_COLOR_TEXTURE_SAMPLES [

	<generated>
	^ GL_MAX_COLOR_TEXTURE_SAMPLES
]

{ #category : #'constants - required' }
GL3_2 >> MAX_DEPTH_TEXTURE_SAMPLES [

	<generated>
	^ GL_MAX_DEPTH_TEXTURE_SAMPLES
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_EVAL_ORDER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_EVAL_ORDER
]

{ #category : #'constants - required' }
GL3_2 >> MAX_FRAGMENT_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_FRAGMENT_INPUT_COMPONENTS
]

{ #category : #'constants - required' }
GL3_2 >> MAX_GEOMETRY_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_INPUT_COMPONENTS
]

{ #category : #'constants - required' }
GL3_2 >> MAX_GEOMETRY_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
]

{ #category : #'constants - required' }
GL3_2 >> MAX_GEOMETRY_OUTPUT_VERTICES [

	<generated>
	^ GL_MAX_GEOMETRY_OUTPUT_VERTICES
]

{ #category : #'constants - required' }
GL3_2 >> MAX_GEOMETRY_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
]

{ #category : #'constants - required' }
GL3_2 >> MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
]

{ #category : #'constants - required' }
GL3_2 >> MAX_GEOMETRY_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
]

{ #category : #'constants - required' }
GL3_2 >> MAX_INTEGER_SAMPLES [

	<generated>
	^ GL_MAX_INTEGER_SAMPLES
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_LIGHTS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_LIGHTS
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_LIST_NESTING [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_LIST_NESTING
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_MODELVIEW_STACK_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_MODELVIEW_STACK_DEPTH
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_NAME_STACK_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_NAME_STACK_DEPTH
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_PIXEL_MAP_TABLE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_PIXEL_MAP_TABLE
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_PROJECTION_STACK_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_PROJECTION_STACK_DEPTH
]

{ #category : #'constants - required' }
GL3_2 >> MAX_SAMPLE_MASK_WORDS [

	<generated>
	^ GL_MAX_SAMPLE_MASK_WORDS
]

{ #category : #'constants - required' }
GL3_2 >> MAX_SERVER_WAIT_TIMEOUT [

	<generated>
	^ GL_MAX_SERVER_WAIT_TIMEOUT
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_TEXTURE_COORDS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_TEXTURE_COORDS
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_TEXTURE_STACK_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_TEXTURE_STACK_DEPTH
]

{ #category : #'constants - removed' }
GL3_2 >> MAX_TEXTURE_UNITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MAX_TEXTURE_UNITS
]

{ #category : #'constants - required' }
GL3_2 >> MAX_VERTEX_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_VERTEX_OUTPUT_COMPONENTS
]

{ #category : #'constants - removed' }
GL3_2 >> MODELVIEW [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MODELVIEW
]

{ #category : #'constants - removed' }
GL3_2 >> MODELVIEW_MATRIX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MODELVIEW_MATRIX
]

{ #category : #'constants - removed' }
GL3_2 >> MODELVIEW_STACK_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MODELVIEW_STACK_DEPTH
]

{ #category : #'constants - removed' }
GL3_2 >> MODULATE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MODULATE
]

{ #category : #'constants - removed' }
GL3_2 >> MULT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MULT
]

{ #category : #'constants - removed' }
GL3_2 >> MULTISAMPLE_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super MULTISAMPLE_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> N3F_V3F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super N3F_V3F
]

{ #category : #'constants - removed' }
GL3_2 >> NAME_STACK_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super NAME_STACK_DEPTH
]

{ #category : #'constants - removed' }
GL3_2 >> NORMALIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super NORMALIZE
]

{ #category : #'constants - removed' }
GL3_2 >> NORMAL_ARRAY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super NORMAL_ARRAY
]

{ #category : #'constants - removed' }
GL3_2 >> NORMAL_ARRAY_BUFFER_BINDING [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super NORMAL_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - removed' }
GL3_2 >> NORMAL_ARRAY_POINTER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super NORMAL_ARRAY_POINTER
]

{ #category : #'constants - removed' }
GL3_2 >> NORMAL_ARRAY_STRIDE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super NORMAL_ARRAY_STRIDE
]

{ #category : #'constants - removed' }
GL3_2 >> NORMAL_ARRAY_TYPE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super NORMAL_ARRAY_TYPE
]

{ #category : #'constants - removed' }
GL3_2 >> NORMAL_MAP [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super NORMAL_MAP
]

{ #category : #'constants - removed' }
GL3_2 >> OBJECT_LINEAR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super OBJECT_LINEAR
]

{ #category : #'constants - removed' }
GL3_2 >> OBJECT_PLANE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super OBJECT_PLANE
]

{ #category : #'constants - required' }
GL3_2 >> OBJECT_TYPE [

	<generated>
	^ GL_OBJECT_TYPE
]

{ #category : #'constants - removed' }
GL3_2 >> OPERAND0_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super OPERAND0_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> OPERAND0_RGB [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super OPERAND0_RGB
]

{ #category : #'constants - removed' }
GL3_2 >> OPERAND1_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super OPERAND1_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> OPERAND1_RGB [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super OPERAND1_RGB
]

{ #category : #'constants - removed' }
GL3_2 >> OPERAND2_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super OPERAND2_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> OPERAND2_RGB [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super OPERAND2_RGB
]

{ #category : #'constants - removed' }
GL3_2 >> ORDER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ORDER
]

{ #category : #'constants - removed' }
GL3_2 >> PASS_THROUGH_TOKEN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PASS_THROUGH_TOKEN
]

{ #category : #'constants - removed' }
GL3_2 >> PERSPECTIVE_CORRECTION_HINT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PERSPECTIVE_CORRECTION_HINT
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_A_TO_A [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_A_TO_A
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_A_TO_A_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_A_TO_A_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_B_TO_B [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_B_TO_B
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_B_TO_B_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_B_TO_B_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_G_TO_G [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_G_TO_G
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_G_TO_G_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_G_TO_G_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_I_TO_A [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_I_TO_A
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_I_TO_A_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_I_TO_A_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_I_TO_B [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_I_TO_B
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_I_TO_B_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_I_TO_B_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_I_TO_G [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_I_TO_G
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_I_TO_G_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_I_TO_G_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_I_TO_I [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_I_TO_I
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_I_TO_I_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_I_TO_I_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_I_TO_R [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_I_TO_R
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_I_TO_R_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_I_TO_R_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_R_TO_R [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_R_TO_R
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_R_TO_R_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_R_TO_R_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_S_TO_S [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_S_TO_S
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MAP_S_TO_S_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MAP_S_TO_S_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> PIXEL_MODE_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PIXEL_MODE_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> POINT_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POINT_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> POINT_DISTANCE_ATTENUATION [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POINT_DISTANCE_ATTENUATION
]

{ #category : #'constants - removed' }
GL3_2 >> POINT_SIZE_MAX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POINT_SIZE_MAX
]

{ #category : #'constants - removed' }
GL3_2 >> POINT_SIZE_MIN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POINT_SIZE_MIN
]

{ #category : #'constants - removed' }
GL3_2 >> POINT_SMOOTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POINT_SMOOTH
]

{ #category : #'constants - removed' }
GL3_2 >> POINT_SMOOTH_HINT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POINT_SMOOTH_HINT
]

{ #category : #'constants - removed' }
GL3_2 >> POINT_SPRITE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POINT_SPRITE
]

{ #category : #'constants - removed' }
GL3_2 >> POINT_TOKEN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POINT_TOKEN
]

{ #category : #'constants - removed' }
GL3_2 >> POLYGON [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POLYGON
]

{ #category : #'constants - removed' }
GL3_2 >> POLYGON_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POLYGON_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> POLYGON_STIPPLE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POLYGON_STIPPLE
]

{ #category : #'constants - removed' }
GL3_2 >> POLYGON_STIPPLE_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POLYGON_STIPPLE_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> POLYGON_TOKEN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POLYGON_TOKEN
]

{ #category : #'constants - removed' }
GL3_2 >> POSITION [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super POSITION
]

{ #category : #'constants - removed' }
GL3_2 >> PREVIOUS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PREVIOUS
]

{ #category : #'constants - removed' }
GL3_2 >> PRIMARY_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PRIMARY_COLOR
]

{ #category : #'constants - required' }
GL3_2 >> PROGRAM_POINT_SIZE [

	<generated>
	^ GL_PROGRAM_POINT_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> PROJECTION [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PROJECTION
]

{ #category : #'constants - removed' }
GL3_2 >> PROJECTION_MATRIX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PROJECTION_MATRIX
]

{ #category : #'constants - removed' }
GL3_2 >> PROJECTION_STACK_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super PROJECTION_STACK_DEPTH
]

{ #category : #'constants - required' }
GL3_2 >> PROVOKING_VERTEX [

	<generated>
	^ GL_PROVOKING_VERTEX
]

{ #category : #'constants - required' }
GL3_2 >> PROXY_TEXTURE_2D_MULTISAMPLE [

	<generated>
	^ GL_PROXY_TEXTURE_2D_MULTISAMPLE
]

{ #category : #'constants - required' }
GL3_2 >> PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
]

{ #category : #'constants - removed' }
GL3_2 >> Q [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super Q
]

{ #category : #'constants - removed' }
GL3_2 >> QUADRATIC_ATTENUATION [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super QUADRATIC_ATTENUATION
]

{ #category : #'constants - removed' }
GL3_2 >> QUADS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super QUADS
]

{ #category : #'constants - required' }
GL3_2 >> QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION [

	<generated>
	^ GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
]

{ #category : #'constants - removed' }
GL3_2 >> QUAD_STRIP [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super QUAD_STRIP
]

{ #category : #'constants - removed' }
GL3_2 >> R [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super R
]

{ #category : #'constants - removed' }
GL3_2 >> RED_BIAS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super RED_BIAS
]

{ #category : #'constants - removed' }
GL3_2 >> RED_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super RED_BITS
]

{ #category : #'constants - removed' }
GL3_2 >> RED_SCALE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super RED_SCALE
]

{ #category : #'constants - removed' }
GL3_2 >> REFLECTION_MAP [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super REFLECTION_MAP
]

{ #category : #'constants - removed' }
GL3_2 >> RENDER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super RENDER
]

{ #category : #'constants - removed' }
GL3_2 >> RENDER_MODE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super RENDER_MODE
]

{ #category : #'constants - removed' }
GL3_2 >> RESCALE_NORMAL [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super RESCALE_NORMAL
]

{ #category : #'constants - removed' }
GL3_2 >> RETURN [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super RETURN
]

{ #category : #'constants - removed' }
GL3_2 >> RGBA_MODE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super RGBA_MODE
]

{ #category : #'constants - removed' }
GL3_2 >> RGB_SCALE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super RGB_SCALE
]

{ #category : #'constants - removed' }
GL3_2 >> S [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super S
]

{ #category : #'constants - required' }
GL3_2 >> SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_SAMPLER_2D_MULTISAMPLE
]

{ #category : #'constants - required' }
GL3_2 >> SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{ #category : #'constants - required' }
GL3_2 >> SAMPLE_MASK [

	<generated>
	^ GL_SAMPLE_MASK
]

{ #category : #'constants - required' }
GL3_2 >> SAMPLE_MASK_VALUE [

	<generated>
	^ GL_SAMPLE_MASK_VALUE
]

{ #category : #'constants - required' }
GL3_2 >> SAMPLE_POSITION [

	<generated>
	^ GL_SAMPLE_POSITION
]

{ #category : #'constants - removed' }
GL3_2 >> SCISSOR_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SCISSOR_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> SECONDARY_COLOR_ARRAY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SECONDARY_COLOR_ARRAY
]

{ #category : #'constants - removed' }
GL3_2 >> SECONDARY_COLOR_ARRAY_BUFFER_BINDING [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SECONDARY_COLOR_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - removed' }
GL3_2 >> SECONDARY_COLOR_ARRAY_POINTER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SECONDARY_COLOR_ARRAY_POINTER
]

{ #category : #'constants - removed' }
GL3_2 >> SECONDARY_COLOR_ARRAY_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SECONDARY_COLOR_ARRAY_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> SECONDARY_COLOR_ARRAY_STRIDE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SECONDARY_COLOR_ARRAY_STRIDE
]

{ #category : #'constants - removed' }
GL3_2 >> SECONDARY_COLOR_ARRAY_TYPE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SECONDARY_COLOR_ARRAY_TYPE
]

{ #category : #'constants - removed' }
GL3_2 >> SELECT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SELECT
]

{ #category : #'constants - removed' }
GL3_2 >> SELECTION_BUFFER_POINTER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SELECTION_BUFFER_POINTER
]

{ #category : #'constants - removed' }
GL3_2 >> SELECTION_BUFFER_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SELECTION_BUFFER_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> SEPARATE_SPECULAR_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SEPARATE_SPECULAR_COLOR
]

{ #category : #'constants - removed' }
GL3_2 >> SHADE_MODEL [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SHADE_MODEL
]

{ #category : #'constants - removed' }
GL3_2 >> SHININESS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SHININESS
]

{ #category : #'constants - required' }
GL3_2 >> SIGNALED [

	<generated>
	^ GL_SIGNALED
]

{ #category : #'constants - removed' }
GL3_2 >> SINGLE_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SINGLE_COLOR
]

{ #category : #'constants - removed' }
GL3_2 >> SLUMINANCE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SLUMINANCE
]

{ #category : #'constants - removed' }
GL3_2 >> SLUMINANCE8 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SLUMINANCE8
]

{ #category : #'constants - removed' }
GL3_2 >> SLUMINANCE8_ALPHA8 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SLUMINANCE8_ALPHA8
]

{ #category : #'constants - removed' }
GL3_2 >> SLUMINANCE_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SLUMINANCE_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> SMOOTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SMOOTH
]

{ #category : #'constants - removed' }
GL3_2 >> SOURCE0_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SOURCE0_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> SOURCE0_RGB [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SOURCE0_RGB
]

{ #category : #'constants - removed' }
GL3_2 >> SOURCE1_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SOURCE1_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> SOURCE1_RGB [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SOURCE1_RGB
]

{ #category : #'constants - removed' }
GL3_2 >> SOURCE2_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SOURCE2_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> SOURCE2_RGB [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SOURCE2_RGB
]

{ #category : #'constants - removed' }
GL3_2 >> SPECULAR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SPECULAR
]

{ #category : #'constants - removed' }
GL3_2 >> SPHERE_MAP [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SPHERE_MAP
]

{ #category : #'constants - removed' }
GL3_2 >> SPOT_CUTOFF [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SPOT_CUTOFF
]

{ #category : #'constants - removed' }
GL3_2 >> SPOT_DIRECTION [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SPOT_DIRECTION
]

{ #category : #'constants - removed' }
GL3_2 >> SPOT_EXPONENT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SPOT_EXPONENT
]

{ #category : #'constants - removed' }
GL3_2 >> SRC0_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SRC0_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> SRC0_RGB [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SRC0_RGB
]

{ #category : #'constants - removed' }
GL3_2 >> SRC1_RGB [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SRC1_RGB
]

{ #category : #'constants - removed' }
GL3_2 >> SRC2_ALPHA [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SRC2_ALPHA
]

{ #category : #'constants - removed' }
GL3_2 >> SRC2_RGB [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SRC2_RGB
]

{ #category : #'constants - removed' }
GL3_2 >> STACK_OVERFLOW [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super STACK_OVERFLOW
]

{ #category : #'constants - removed' }
GL3_2 >> STACK_UNDERFLOW [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super STACK_UNDERFLOW
]

{ #category : #'constants - removed' }
GL3_2 >> STENCIL_BITS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super STENCIL_BITS
]

{ #category : #'constants - removed' }
GL3_2 >> SUBTRACT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super SUBTRACT
]

{ #category : #'constants - required' }
GL3_2 >> SYNC_CONDITION [

	<generated>
	^ GL_SYNC_CONDITION
]

{ #category : #'constants - required' }
GL3_2 >> SYNC_FENCE [

	<generated>
	^ GL_SYNC_FENCE
]

{ #category : #'constants - required' }
GL3_2 >> SYNC_FLAGS [

	<generated>
	^ GL_SYNC_FLAGS
]

{ #category : #'constants - required' }
GL3_2 >> SYNC_FLUSH_COMMANDS_BIT [

	<generated>
	^ GL_SYNC_FLUSH_COMMANDS_BIT
]

{ #category : #'constants - required' }
GL3_2 >> SYNC_GPU_COMMANDS_COMPLETE [

	<generated>
	^ GL_SYNC_GPU_COMMANDS_COMPLETE
]

{ #category : #'constants - required' }
GL3_2 >> SYNC_STATUS [

	<generated>
	^ GL_SYNC_STATUS
]

{ #category : #'constants - removed' }
GL3_2 >> T [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super T
]

{ #category : #'constants - removed' }
GL3_2 >> T2F_C3F_V3F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super T2F_C3F_V3F
]

{ #category : #'constants - removed' }
GL3_2 >> T2F_C4F_N3F_V3F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super T2F_C4F_N3F_V3F
]

{ #category : #'constants - removed' }
GL3_2 >> T2F_C4UB_V3F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super T2F_C4UB_V3F
]

{ #category : #'constants - removed' }
GL3_2 >> T2F_N3F_V3F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super T2F_N3F_V3F
]

{ #category : #'constants - removed' }
GL3_2 >> T2F_V3F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super T2F_V3F
]

{ #category : #'constants - removed' }
GL3_2 >> T4F_C4F_N3F_V4F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super T4F_C4F_N3F_V4F
]

{ #category : #'constants - removed' }
GL3_2 >> T4F_V4F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super T4F_V4F
]

{ #category : #'constants - required' }
GL3_2 >> TEXTURE_2D_MULTISAMPLE [

	<generated>
	^ GL_TEXTURE_2D_MULTISAMPLE
]

{ #category : #'constants - required' }
GL3_2 >> TEXTURE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_TEXTURE_2D_MULTISAMPLE_ARRAY
]

{ #category : #'constants - required' }
GL3_2 >> TEXTURE_BINDING_2D_MULTISAMPLE [

	<generated>
	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE
]

{ #category : #'constants - required' }
GL3_2 >> TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_BORDER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_BORDER
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_COMPONENTS [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_COMPONENTS
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_COORD_ARRAY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_COORD_ARRAY
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_COORD_ARRAY_BUFFER_BINDING [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_COORD_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_COORD_ARRAY_POINTER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_COORD_ARRAY_POINTER
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_COORD_ARRAY_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_COORD_ARRAY_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_COORD_ARRAY_STRIDE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_COORD_ARRAY_STRIDE
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_COORD_ARRAY_TYPE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_COORD_ARRAY_TYPE
]

{ #category : #'constants - required' }
GL3_2 >> TEXTURE_CUBE_MAP_SEAMLESS [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_SEAMLESS
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_ENV [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_ENV
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_ENV_COLOR [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_ENV_COLOR
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_ENV_MODE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_ENV_MODE
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_FILTER_CONTROL [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_FILTER_CONTROL
]

{ #category : #'constants - required' }
GL3_2 >> TEXTURE_FIXED_SAMPLE_LOCATIONS [

	<generated>
	^ GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_GEN_MODE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_GEN_MODE
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_GEN_Q [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_GEN_Q
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_GEN_R [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_GEN_R
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_GEN_S [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_GEN_S
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_GEN_T [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_GEN_T
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_INTENSITY_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_INTENSITY_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_INTENSITY_TYPE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_INTENSITY_TYPE
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_LUMINANCE_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_LUMINANCE_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_LUMINANCE_TYPE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_LUMINANCE_TYPE
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_MATRIX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_MATRIX
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_PRIORITY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_PRIORITY
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_RESIDENT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_RESIDENT
]

{ #category : #'constants - required' }
GL3_2 >> TEXTURE_SAMPLES [

	<generated>
	^ GL_TEXTURE_SAMPLES
]

{ #category : #'constants - removed' }
GL3_2 >> TEXTURE_STACK_DEPTH [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TEXTURE_STACK_DEPTH
]

{ #category : #'constants - required' }
GL3_2 >> TIMEOUT_EXPIRED [

	<generated>
	^ GL_TIMEOUT_EXPIRED
]

{ #category : #'constants - required' }
GL3_2 >> TIMEOUT_IGNORED [

	<generated>
	^ GL_TIMEOUT_IGNORED
]

{ #category : #'constants - removed' }
GL3_2 >> TRANSFORM_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TRANSFORM_BIT
]

{ #category : #'constants - removed' }
GL3_2 >> TRANSPOSE_COLOR_MATRIX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TRANSPOSE_COLOR_MATRIX
]

{ #category : #'constants - removed' }
GL3_2 >> TRANSPOSE_MODELVIEW_MATRIX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TRANSPOSE_MODELVIEW_MATRIX
]

{ #category : #'constants - removed' }
GL3_2 >> TRANSPOSE_PROJECTION_MATRIX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TRANSPOSE_PROJECTION_MATRIX
]

{ #category : #'constants - removed' }
GL3_2 >> TRANSPOSE_TEXTURE_MATRIX [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super TRANSPOSE_TEXTURE_MATRIX
]

{ #category : #'constants - required' }
GL3_2 >> TRIANGLES_ADJACENCY [

	<generated>
	^ GL_TRIANGLES_ADJACENCY
]

{ #category : #'constants - required' }
GL3_2 >> TRIANGLE_STRIP_ADJACENCY [

	<generated>
	^ GL_TRIANGLE_STRIP_ADJACENCY
]

{ #category : #'constants - required' }
GL3_2 >> UNSIGNALED [

	<generated>
	^ GL_UNSIGNALED
]

{ #category : #'constants - required' }
GL3_2 >> UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
]

{ #category : #'constants - required' }
GL3_2 >> UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{ #category : #'constants - removed' }
GL3_2 >> V2F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super V2F
]

{ #category : #'constants - removed' }
GL3_2 >> V3F [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super V3F
]

{ #category : #'constants - removed' }
GL3_2 >> VERTEX_ARRAY [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super VERTEX_ARRAY
]

{ #category : #'constants - removed' }
GL3_2 >> VERTEX_ARRAY_BUFFER_BINDING [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super VERTEX_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - removed' }
GL3_2 >> VERTEX_ARRAY_POINTER [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super VERTEX_ARRAY_POINTER
]

{ #category : #'constants - removed' }
GL3_2 >> VERTEX_ARRAY_SIZE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super VERTEX_ARRAY_SIZE
]

{ #category : #'constants - removed' }
GL3_2 >> VERTEX_ARRAY_STRIDE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super VERTEX_ARRAY_STRIDE
]

{ #category : #'constants - removed' }
GL3_2 >> VERTEX_ARRAY_TYPE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super VERTEX_ARRAY_TYPE
]

{ #category : #'constants - removed' }
GL3_2 >> VERTEX_PROGRAM_TWO_SIDE [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super VERTEX_PROGRAM_TWO_SIDE
]

{ #category : #'constants - removed' }
GL3_2 >> VIEWPORT_BIT [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super VIEWPORT_BIT
]

{ #category : #'constants - required' }
GL3_2 >> WAIT_FAILED [

	<generated>
	^ GL_WAIT_FAILED
]

{ #category : #'constants - removed' }
GL3_2 >> WEIGHT_ARRAY_BUFFER_BINDING [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super WEIGHT_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - removed' }
GL3_2 >> ZOOM_X [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ZOOM_X
]

{ #category : #'constants - removed' }
GL3_2 >> ZOOM_Y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ZOOM_Y
]

{ #category : #'api - removed' }
GL3_2 >> accum: op with: value [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super accum: op with: value
]

{ #category : #'api - removed' }
GL3_2 >> alphaFunc: func with: ref [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super alphaFunc: func with: ref
]

{ #category : #'api - removed' }
GL3_2 >> areTexturesResident: n with: textures with: residences [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super areTexturesResident: n with: textures with: residences
]

{ #category : #'api - removed' }
GL3_2 >> arrayElement: i [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super arrayElement: i
]

{ #category : #'api - removed' }
GL3_2 >> begin: mode [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super begin: mode
]

{ #category : #'api - removed' }
GL3_2 >> bitmap: width with: height with: xorig with: yorig with: xmove with: ymove with: bitmap [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super bitmap: width with: height with: xorig with: yorig with: xmove with: ymove with: bitmap
]

{ #category : #'api - removed' }
GL3_2 >> callList: list [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super callList: list
]

{ #category : #'api - removed' }
GL3_2 >> callLists: n with: type with: lists [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super callLists: n with: type with: lists
]

{ #category : #'api - removed' }
GL3_2 >> clearAccum: red with: green with: blue with: alpha [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super clearAccum: red with: green with: blue with: alpha
]

{ #category : #'api - removed' }
GL3_2 >> clearIndex: c [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super clearIndex: c
]

{ #category : #'api - removed' }
GL3_2 >> clientActiveTexture: texture [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super clientActiveTexture: texture
]

{ #category : #'api - required' }
GL3_2 >> clientWaitSync: sync with: flags with: timeout [

	<generated>
	<apicall: GLenum 'glClientWaitSync' (GLsync GLbitfield GLuint64)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> clipPlane: plane with: equation [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super clipPlane: plane with: equation
]

{ #category : #'api - removed' }
GL3_2 >> color3b: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3b: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> color3bv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3bv: v
]

{ #category : #'api - removed' }
GL3_2 >> color3d: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3d: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> color3dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3dv: v
]

{ #category : #'api - removed' }
GL3_2 >> color3f: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3f: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> color3fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3fv: v
]

{ #category : #'api - removed' }
GL3_2 >> color3i: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3i: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> color3iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3iv: v
]

{ #category : #'api - removed' }
GL3_2 >> color3s: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3s: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> color3sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3sv: v
]

{ #category : #'api - removed' }
GL3_2 >> color3ub: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3ub: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> color3ubv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3ubv: v
]

{ #category : #'api - removed' }
GL3_2 >> color3ui: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3ui: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> color3uiv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3uiv: v
]

{ #category : #'api - removed' }
GL3_2 >> color3us: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3us: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> color3usv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color3usv: v
]

{ #category : #'api - removed' }
GL3_2 >> color4b: red with: green with: blue with: alpha [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4b: red with: green with: blue with: alpha
]

{ #category : #'api - removed' }
GL3_2 >> color4bv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4bv: v
]

{ #category : #'api - removed' }
GL3_2 >> color4d: red with: green with: blue with: alpha [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4d: red with: green with: blue with: alpha
]

{ #category : #'api - removed' }
GL3_2 >> color4dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4dv: v
]

{ #category : #'api - removed' }
GL3_2 >> color4f: red with: green with: blue with: alpha [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4f: red with: green with: blue with: alpha
]

{ #category : #'api - removed' }
GL3_2 >> color4fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4fv: v
]

{ #category : #'api - removed' }
GL3_2 >> color4i: red with: green with: blue with: alpha [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4i: red with: green with: blue with: alpha
]

{ #category : #'api - removed' }
GL3_2 >> color4iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4iv: v
]

{ #category : #'api - removed' }
GL3_2 >> color4s: red with: green with: blue with: alpha [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4s: red with: green with: blue with: alpha
]

{ #category : #'api - removed' }
GL3_2 >> color4sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4sv: v
]

{ #category : #'api - removed' }
GL3_2 >> color4ub: red with: green with: blue with: alpha [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4ub: red with: green with: blue with: alpha
]

{ #category : #'api - removed' }
GL3_2 >> color4ubv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4ubv: v
]

{ #category : #'api - removed' }
GL3_2 >> color4ui: red with: green with: blue with: alpha [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4ui: red with: green with: blue with: alpha
]

{ #category : #'api - removed' }
GL3_2 >> color4uiv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4uiv: v
]

{ #category : #'api - removed' }
GL3_2 >> color4us: red with: green with: blue with: alpha [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4us: red with: green with: blue with: alpha
]

{ #category : #'api - removed' }
GL3_2 >> color4usv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super color4usv: v
]

{ #category : #'api - removed' }
GL3_2 >> colorMaterial: face with: mode [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super colorMaterial: face with: mode
]

{ #category : #'api - removed' }
GL3_2 >> colorPointer: size with: type with: stride with: pointer [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super colorPointer: size with: type with: stride with: pointer
]

{ #category : #'api - removed' }
GL3_2 >> copyPixels: x with: y with: width with: height with: type [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super copyPixels: x with: y with: width with: height with: type
]

{ #category : #'api - removed' }
GL3_2 >> deleteLists: list with: range [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super deleteLists: list with: range
]

{ #category : #'api - required' }
GL3_2 >> deleteSync: sync [

	<generated>
	<apicall: void 'glDeleteSync' (GLsync)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> disableClientState: array [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super disableClientState: array
]

{ #category : #'api - required' }
GL3_2 >> drawElementsBaseVertex: mode with: count with: type with: indices with: basevertex [

	<generated>
	<apicall: void 'glDrawElementsBaseVertex' (GLenum GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL3_2 >> drawElementsInstancedBaseVertex: mode with: count with: type with: indices with: instancecount with: basevertex [

	<generated>
	<apicall: void 'glDrawElementsInstancedBaseVertex' (GLenum GLsizei GLenum void* GLsizei GLint)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> drawPixels: width with: height with: format with: type with: pixels [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super drawPixels: width with: height with: format with: type with: pixels
]

{ #category : #'api - required' }
GL3_2 >> drawRangeElementsBaseVertex: mode with: start with: end with: count with: type with: indices with: basevertex [

	<generated>
	<apicall: void 'glDrawRangeElementsBaseVertex' (GLenum GLuint GLuint GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> edgeFlag: flag [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super edgeFlag: flag
]

{ #category : #'api - removed' }
GL3_2 >> edgeFlagPointer: stride with: pointer [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super edgeFlagPointer: stride with: pointer
]

{ #category : #'api - removed' }
GL3_2 >> edgeFlagv: flag [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super edgeFlagv: flag
]

{ #category : #'api - removed' }
GL3_2 >> enableClientState: array [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super enableClientState: array
]

{ #category : #'api - removed' }
GL3_2 >> end [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super end
]

{ #category : #'api - removed' }
GL3_2 >> endList [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super endList
]

{ #category : #'api - removed' }
GL3_2 >> evalCoord1d: u [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super evalCoord1d: u
]

{ #category : #'api - removed' }
GL3_2 >> evalCoord1dv: u [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super evalCoord1dv: u
]

{ #category : #'api - removed' }
GL3_2 >> evalCoord1f: u [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super evalCoord1f: u
]

{ #category : #'api - removed' }
GL3_2 >> evalCoord1fv: u [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super evalCoord1fv: u
]

{ #category : #'api - removed' }
GL3_2 >> evalCoord2d: u with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super evalCoord2d: u with: v
]

{ #category : #'api - removed' }
GL3_2 >> evalCoord2dv: u [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super evalCoord2dv: u
]

{ #category : #'api - removed' }
GL3_2 >> evalCoord2f: u with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super evalCoord2f: u with: v
]

{ #category : #'api - removed' }
GL3_2 >> evalCoord2fv: u [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super evalCoord2fv: u
]

{ #category : #'api - removed' }
GL3_2 >> evalMesh1: mode with: i1 with: i2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super evalMesh1: mode with: i1 with: i2
]

{ #category : #'api - removed' }
GL3_2 >> evalMesh2: mode with: i1 with: i2 with: j1 with: j2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super evalMesh2: mode with: i1 with: i2 with: j1 with: j2
]

{ #category : #'api - removed' }
GL3_2 >> evalPoint1: i [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super evalPoint1: i
]

{ #category : #'api - removed' }
GL3_2 >> evalPoint2: i with: j [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super evalPoint2: i with: j
]

{ #category : #'api - removed' }
GL3_2 >> feedbackBuffer: size with: type with: buffer [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super feedbackBuffer: size with: type with: buffer
]

{ #category : #'api - required' }
GL3_2 >> fenceSync: condition with: flags [

	<generated>
	<apicall: GLsync 'glFenceSync' (GLenum GLbitfield)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> fogCoordPointer: type with: stride with: pointer [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super fogCoordPointer: type with: stride with: pointer
]

{ #category : #'api - removed' }
GL3_2 >> fogCoordd: coord [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super fogCoordd: coord
]

{ #category : #'api - removed' }
GL3_2 >> fogCoorddv: coord [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super fogCoorddv: coord
]

{ #category : #'api - removed' }
GL3_2 >> fogCoordf: coord [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super fogCoordf: coord
]

{ #category : #'api - removed' }
GL3_2 >> fogCoordfv: coord [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super fogCoordfv: coord
]

{ #category : #'api - removed' }
GL3_2 >> fogf: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super fogf: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> fogfv: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super fogfv: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> fogi: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super fogi: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> fogiv: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super fogiv: pname with: params
]

{ #category : #'api - required' }
GL3_2 >> framebufferTexture: target with: attachment with: texture with: level [

	<generated>
	<apicall: void 'glFramebufferTexture' (GLenum GLenum GLuint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> frustum: left with: right with: bottom with: top with: zNear with: zFar [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super frustum: left with: right with: bottom with: top with: zNear with: zFar
]

{ #category : #'api - removed' }
GL3_2 >> genLists: range [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super genLists: range
]

{ #category : #'api - required' }
GL3_2 >> getBufferParameteri64v: target with: pname with: params [

	<generated>
	<apicall: void 'glGetBufferParameteri64v' (GLenum GLenum GLint64*)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> getClipPlane: plane with: equation [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getClipPlane: plane with: equation
]

{ #category : #'api - required' }
GL3_2 >> getInteger64i_v: target with: index with: data [

	<generated>
	<apicall: void 'glGetInteger64i_v' (GLenum GLuint GLint64*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL3_2 >> getInteger64v: pname with: data [

	<generated>
	<apicall: void 'glGetInteger64v' (GLenum GLint64*)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> getLightfv: light with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getLightfv: light with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> getLightiv: light with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getLightiv: light with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> getMapdv: target with: query with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getMapdv: target with: query with: v
]

{ #category : #'api - removed' }
GL3_2 >> getMapfv: target with: query with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getMapfv: target with: query with: v
]

{ #category : #'api - removed' }
GL3_2 >> getMapiv: target with: query with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getMapiv: target with: query with: v
]

{ #category : #'api - removed' }
GL3_2 >> getMaterialfv: face with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getMaterialfv: face with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> getMaterialiv: face with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getMaterialiv: face with: pname with: params
]

{ #category : #'api - required' }
GL3_2 >> getMultisamplefv: pname with: index with: val [

	<generated>
	<apicall: void 'glGetMultisamplefv' (GLenum GLuint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> getPixelMapfv: map with: values [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getPixelMapfv: map with: values
]

{ #category : #'api - removed' }
GL3_2 >> getPixelMapuiv: map with: values [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getPixelMapuiv: map with: values
]

{ #category : #'api - removed' }
GL3_2 >> getPixelMapusv: map with: values [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getPixelMapusv: map with: values
]

{ #category : #'api - removed' }
GL3_2 >> getPointerv: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getPointerv: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> getPolygonStipple: mask [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getPolygonStipple: mask
]

{ #category : #'api - required' }
GL3_2 >> getSynciv: sync with: pname with: count with: length with: values [

	<generated>
	<apicall: void 'glGetSynciv' (GLsync GLenum GLsizei GLsizei* GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> getTexEnvfv: target with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getTexEnvfv: target with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> getTexEnviv: target with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getTexEnviv: target with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> getTexGendv: coord with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getTexGendv: coord with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> getTexGenfv: coord with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getTexGenfv: coord with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> getTexGeniv: coord with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super getTexGeniv: coord with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> indexMask: mask [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super indexMask: mask
]

{ #category : #'api - removed' }
GL3_2 >> indexPointer: type with: stride with: pointer [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super indexPointer: type with: stride with: pointer
]

{ #category : #'api - removed' }
GL3_2 >> indexd: c [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super indexd: c
]

{ #category : #'api - removed' }
GL3_2 >> indexdv: c [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super indexdv: c
]

{ #category : #'api - removed' }
GL3_2 >> indexf: c [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super indexf: c
]

{ #category : #'api - removed' }
GL3_2 >> indexfv: c [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super indexfv: c
]

{ #category : #'api - removed' }
GL3_2 >> indexi: c [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super indexi: c
]

{ #category : #'api - removed' }
GL3_2 >> indexiv: c [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super indexiv: c
]

{ #category : #'api - removed' }
GL3_2 >> indexs: c [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super indexs: c
]

{ #category : #'api - removed' }
GL3_2 >> indexsv: c [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super indexsv: c
]

{ #category : #'api - removed' }
GL3_2 >> indexub: c [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super indexub: c
]

{ #category : #'api - removed' }
GL3_2 >> indexubv: c [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super indexubv: c
]

{ #category : #'api - removed' }
GL3_2 >> initNames [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super initNames
]

{ #category : #'api - removed' }
GL3_2 >> interleavedArrays: format with: stride with: pointer [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super interleavedArrays: format with: stride with: pointer
]

{ #category : #'api - removed' }
GL3_2 >> isList: list [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super isList: list
]

{ #category : #'api - required' }
GL3_2 >> isSync: sync [

	<generated>
	<apicall: GLboolean 'glIsSync' (GLsync)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> lightModelf: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super lightModelf: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> lightModelfv: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super lightModelfv: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> lightModeli: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super lightModeli: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> lightModeliv: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super lightModeliv: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> lightf: light with: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super lightf: light with: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> lightfv: light with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super lightfv: light with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> lighti: light with: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super lighti: light with: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> lightiv: light with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super lightiv: light with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> lineStipple: factor with: pattern [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super lineStipple: factor with: pattern
]

{ #category : #'api - removed' }
GL3_2 >> listBase: base [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super listBase: base
]

{ #category : #'api - removed' }
GL3_2 >> loadIdentity [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super loadIdentity
]

{ #category : #'api - removed' }
GL3_2 >> loadMatrixd: m [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super loadMatrixd: m
]

{ #category : #'api - removed' }
GL3_2 >> loadMatrixf: m [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super loadMatrixf: m
]

{ #category : #'api - removed' }
GL3_2 >> loadName: name [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super loadName: name
]

{ #category : #'api - removed' }
GL3_2 >> loadTransposeMatrixd: m [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super loadTransposeMatrixd: m
]

{ #category : #'api - removed' }
GL3_2 >> loadTransposeMatrixf: m [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super loadTransposeMatrixf: m
]

{ #category : #'api - removed' }
GL3_2 >> map1d: target with: u1 with: u2 with: stride with: order with: points [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super map1d: target with: u1 with: u2 with: stride with: order with: points
]

{ #category : #'api - removed' }
GL3_2 >> map1f: target with: u1 with: u2 with: stride with: order with: points [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super map1f: target with: u1 with: u2 with: stride with: order with: points
]

{ #category : #'api - removed' }
GL3_2 >> map2d: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super map2d: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points
]

{ #category : #'api - removed' }
GL3_2 >> map2f: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super map2f: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points
]

{ #category : #'api - removed' }
GL3_2 >> mapGrid1d: un with: u1 with: u2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super mapGrid1d: un with: u1 with: u2
]

{ #category : #'api - removed' }
GL3_2 >> mapGrid1f: un with: u1 with: u2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super mapGrid1f: un with: u1 with: u2
]

{ #category : #'api - removed' }
GL3_2 >> mapGrid2d: un with: u1 with: u2 with: vn with: v1 with: v2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super mapGrid2d: un with: u1 with: u2 with: vn with: v1 with: v2
]

{ #category : #'api - removed' }
GL3_2 >> mapGrid2f: un with: u1 with: u2 with: vn with: v1 with: v2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super mapGrid2f: un with: u1 with: u2 with: vn with: v1 with: v2
]

{ #category : #'api - removed' }
GL3_2 >> materialf: face with: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super materialf: face with: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> materialfv: face with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super materialfv: face with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> materiali: face with: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super materiali: face with: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> materialiv: face with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super materialiv: face with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> matrixMode: mode [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super matrixMode: mode
]

{ #category : #'api - removed' }
GL3_2 >> multMatrixd: m [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multMatrixd: m
]

{ #category : #'api - removed' }
GL3_2 >> multMatrixf: m [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multMatrixf: m
]

{ #category : #'api - removed' }
GL3_2 >> multTransposeMatrixd: m [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multTransposeMatrixd: m
]

{ #category : #'api - removed' }
GL3_2 >> multTransposeMatrixf: m [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multTransposeMatrixf: m
]

{ #category : #'api - required' }
GL3_2 >> multiDrawElementsBaseVertex: mode with: count with: type with: indices with: drawcount with: basevertex [

	<generated>
	<apicall: void 'glMultiDrawElementsBaseVertex' (GLenum GLsizei* GLenum void** GLsizei GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord1d: target with: s [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord1d: target with: s
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord1dv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord1dv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord1f: target with: s [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord1f: target with: s
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord1fv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord1fv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord1i: target with: s [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord1i: target with: s
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord1iv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord1iv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord1s: target with: s [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord1s: target with: s
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord1sv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord1sv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord2d: target with: s with: t [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord2d: target with: s with: t
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord2dv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord2dv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord2f: target with: s with: t [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord2f: target with: s with: t
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord2fv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord2fv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord2i: target with: s with: t [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord2i: target with: s with: t
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord2iv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord2iv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord2s: target with: s with: t [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord2s: target with: s with: t
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord2sv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord2sv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord3d: target with: s with: t with: r [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord3d: target with: s with: t with: r
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord3dv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord3dv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord3f: target with: s with: t with: r [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord3f: target with: s with: t with: r
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord3fv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord3fv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord3i: target with: s with: t with: r [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord3i: target with: s with: t with: r
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord3iv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord3iv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord3s: target with: s with: t with: r [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord3s: target with: s with: t with: r
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord3sv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord3sv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord4d: target with: s with: t with: r with: q [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord4d: target with: s with: t with: r with: q
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord4dv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord4dv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord4f: target with: s with: t with: r with: q [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord4f: target with: s with: t with: r with: q
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord4fv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord4fv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord4i: target with: s with: t with: r with: q [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord4i: target with: s with: t with: r with: q
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord4iv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord4iv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord4s: target with: s with: t with: r with: q [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord4s: target with: s with: t with: r with: q
]

{ #category : #'api - removed' }
GL3_2 >> multiTexCoord4sv: target with: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super multiTexCoord4sv: target with: v
]

{ #category : #'api - removed' }
GL3_2 >> newList: list with: mode [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super newList: list with: mode
]

{ #category : #'api - removed' }
GL3_2 >> normal3b: nx with: ny with: nz [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super normal3b: nx with: ny with: nz
]

{ #category : #'api - removed' }
GL3_2 >> normal3bv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super normal3bv: v
]

{ #category : #'api - removed' }
GL3_2 >> normal3d: nx with: ny with: nz [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super normal3d: nx with: ny with: nz
]

{ #category : #'api - removed' }
GL3_2 >> normal3dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super normal3dv: v
]

{ #category : #'api - removed' }
GL3_2 >> normal3f: nx with: ny with: nz [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super normal3f: nx with: ny with: nz
]

{ #category : #'api - removed' }
GL3_2 >> normal3fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super normal3fv: v
]

{ #category : #'api - removed' }
GL3_2 >> normal3i: nx with: ny with: nz [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super normal3i: nx with: ny with: nz
]

{ #category : #'api - removed' }
GL3_2 >> normal3iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super normal3iv: v
]

{ #category : #'api - removed' }
GL3_2 >> normal3s: nx with: ny with: nz [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super normal3s: nx with: ny with: nz
]

{ #category : #'api - removed' }
GL3_2 >> normal3sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super normal3sv: v
]

{ #category : #'api - removed' }
GL3_2 >> normalPointer: type with: stride with: pointer [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super normalPointer: type with: stride with: pointer
]

{ #category : #'api - removed' }
GL3_2 >> ortho: left with: right with: bottom with: top with: zNear with: zFar [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super ortho: left with: right with: bottom with: top with: zNear with: zFar
]

{ #category : #'api - removed' }
GL3_2 >> passThrough: token [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super passThrough: token
]

{ #category : #'api - removed' }
GL3_2 >> pixelMapfv: map with: mapsize with: values [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super pixelMapfv: map with: mapsize with: values
]

{ #category : #'api - removed' }
GL3_2 >> pixelMapuiv: map with: mapsize with: values [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super pixelMapuiv: map with: mapsize with: values
]

{ #category : #'api - removed' }
GL3_2 >> pixelMapusv: map with: mapsize with: values [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super pixelMapusv: map with: mapsize with: values
]

{ #category : #'api - removed' }
GL3_2 >> pixelTransferf: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super pixelTransferf: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> pixelTransferi: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super pixelTransferi: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> pixelZoom: xfactor with: yfactor [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super pixelZoom: xfactor with: yfactor
]

{ #category : #'api - removed' }
GL3_2 >> polygonStipple: mask [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super polygonStipple: mask
]

{ #category : #'api - removed' }
GL3_2 >> popAttrib [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super popAttrib
]

{ #category : #'api - removed' }
GL3_2 >> popClientAttrib [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super popClientAttrib
]

{ #category : #'api - removed' }
GL3_2 >> popMatrix [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super popMatrix
]

{ #category : #'api - removed' }
GL3_2 >> popName [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super popName
]

{ #category : #'api - removed' }
GL3_2 >> prioritizeTextures: n with: textures with: priorities [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super prioritizeTextures: n with: textures with: priorities
]

{ #category : #'api - required' }
GL3_2 >> provokingVertex: mode [

	<generated>
	<apicall: void 'glProvokingVertex' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> pushAttrib: mask [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super pushAttrib: mask
]

{ #category : #'api - removed' }
GL3_2 >> pushClientAttrib: mask [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super pushClientAttrib: mask
]

{ #category : #'api - removed' }
GL3_2 >> pushMatrix [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super pushMatrix
]

{ #category : #'api - removed' }
GL3_2 >> pushName: name [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super pushName: name
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos2d: x with: y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos2d: x with: y
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos2dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos2dv: v
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos2f: x with: y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos2f: x with: y
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos2fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos2fv: v
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos2i: x with: y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos2i: x with: y
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos2iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos2iv: v
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos2s: x with: y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos2s: x with: y
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos2sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos2sv: v
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos3d: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos3d: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos3dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos3dv: v
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos3f: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos3f: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos3fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos3fv: v
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos3i: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos3i: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos3iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos3iv: v
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos3s: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos3s: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos3sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos3sv: v
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos4d: x with: y with: z with: w [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos4d: x with: y with: z with: w
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos4dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos4dv: v
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos4f: x with: y with: z with: w [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos4f: x with: y with: z with: w
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos4fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos4fv: v
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos4i: x with: y with: z with: w [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos4i: x with: y with: z with: w
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos4iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos4iv: v
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos4s: x with: y with: z with: w [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos4s: x with: y with: z with: w
]

{ #category : #'api - removed' }
GL3_2 >> rasterPos4sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rasterPos4sv: v
]

{ #category : #'api - removed' }
GL3_2 >> rectd: x1 with: y1 with: x2 with: y2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rectd: x1 with: y1 with: x2 with: y2
]

{ #category : #'api - removed' }
GL3_2 >> rectdv: v1 with: v2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rectdv: v1 with: v2
]

{ #category : #'api - removed' }
GL3_2 >> rectf: x1 with: y1 with: x2 with: y2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rectf: x1 with: y1 with: x2 with: y2
]

{ #category : #'api - removed' }
GL3_2 >> rectfv: v1 with: v2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rectfv: v1 with: v2
]

{ #category : #'api - removed' }
GL3_2 >> recti: x1 with: y1 with: x2 with: y2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super recti: x1 with: y1 with: x2 with: y2
]

{ #category : #'api - removed' }
GL3_2 >> rectiv: v1 with: v2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rectiv: v1 with: v2
]

{ #category : #'api - removed' }
GL3_2 >> rects: x1 with: y1 with: x2 with: y2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rects: x1 with: y1 with: x2 with: y2
]

{ #category : #'api - removed' }
GL3_2 >> rectsv: v1 with: v2 [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rectsv: v1 with: v2
]

{ #category : #'api - removed' }
GL3_2 >> renderMode: mode [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super renderMode: mode
]

{ #category : #'api - removed' }
GL3_2 >> rotated: angle with: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rotated: angle with: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> rotatef: angle with: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super rotatef: angle with: x with: y with: z
]

{ #category : #'api - required' }
GL3_2 >> sampleMaski: maskNumber with: mask [

	<generated>
	<apicall: void 'glSampleMaski' (GLuint GLbitfield)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> scaled: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super scaled: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> scalef: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super scalef: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3b: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3b: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3bv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3bv: v
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3d: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3d: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3dv: v
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3f: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3f: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3fv: v
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3i: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3i: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3iv: v
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3s: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3s: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3sv: v
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3ub: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3ub: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3ubv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3ubv: v
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3ui: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3ui: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3uiv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3uiv: v
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3us: red with: green with: blue [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3us: red with: green with: blue
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColor3usv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColor3usv: v
]

{ #category : #'api - removed' }
GL3_2 >> secondaryColorPointer: size with: type with: stride with: pointer [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super secondaryColorPointer: size with: type with: stride with: pointer
]

{ #category : #'api - removed' }
GL3_2 >> selectBuffer: size with: buffer [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super selectBuffer: size with: buffer
]

{ #category : #'api - removed' }
GL3_2 >> shadeModel: mode [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super shadeModel: mode
]

{ #category : #'api - removed' }
GL3_2 >> texCoord1d: s [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord1d: s
]

{ #category : #'api - removed' }
GL3_2 >> texCoord1dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord1dv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord1f: s [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord1f: s
]

{ #category : #'api - removed' }
GL3_2 >> texCoord1fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord1fv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord1i: s [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord1i: s
]

{ #category : #'api - removed' }
GL3_2 >> texCoord1iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord1iv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord1s: s [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord1s: s
]

{ #category : #'api - removed' }
GL3_2 >> texCoord1sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord1sv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord2d: s with: t [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord2d: s with: t
]

{ #category : #'api - removed' }
GL3_2 >> texCoord2dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord2dv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord2f: s with: t [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord2f: s with: t
]

{ #category : #'api - removed' }
GL3_2 >> texCoord2fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord2fv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord2i: s with: t [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord2i: s with: t
]

{ #category : #'api - removed' }
GL3_2 >> texCoord2iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord2iv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord2s: s with: t [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord2s: s with: t
]

{ #category : #'api - removed' }
GL3_2 >> texCoord2sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord2sv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord3d: s with: t with: r [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord3d: s with: t with: r
]

{ #category : #'api - removed' }
GL3_2 >> texCoord3dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord3dv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord3f: s with: t with: r [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord3f: s with: t with: r
]

{ #category : #'api - removed' }
GL3_2 >> texCoord3fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord3fv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord3i: s with: t with: r [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord3i: s with: t with: r
]

{ #category : #'api - removed' }
GL3_2 >> texCoord3iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord3iv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord3s: s with: t with: r [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord3s: s with: t with: r
]

{ #category : #'api - removed' }
GL3_2 >> texCoord3sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord3sv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord4d: s with: t with: r with: q [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord4d: s with: t with: r with: q
]

{ #category : #'api - removed' }
GL3_2 >> texCoord4dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord4dv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord4f: s with: t with: r with: q [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord4f: s with: t with: r with: q
]

{ #category : #'api - removed' }
GL3_2 >> texCoord4fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord4fv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord4i: s with: t with: r with: q [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord4i: s with: t with: r with: q
]

{ #category : #'api - removed' }
GL3_2 >> texCoord4iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord4iv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoord4s: s with: t with: r with: q [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord4s: s with: t with: r with: q
]

{ #category : #'api - removed' }
GL3_2 >> texCoord4sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoord4sv: v
]

{ #category : #'api - removed' }
GL3_2 >> texCoordPointer: size with: type with: stride with: pointer [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texCoordPointer: size with: type with: stride with: pointer
]

{ #category : #'api - removed' }
GL3_2 >> texEnvf: target with: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texEnvf: target with: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> texEnvfv: target with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texEnvfv: target with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> texEnvi: target with: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texEnvi: target with: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> texEnviv: target with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texEnviv: target with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> texGend: coord with: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texGend: coord with: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> texGendv: coord with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texGendv: coord with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> texGenf: coord with: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texGenf: coord with: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> texGenfv: coord with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texGenfv: coord with: pname with: params
]

{ #category : #'api - removed' }
GL3_2 >> texGeni: coord with: pname with: param [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texGeni: coord with: pname with: param
]

{ #category : #'api - removed' }
GL3_2 >> texGeniv: coord with: pname with: params [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super texGeniv: coord with: pname with: params
]

{ #category : #'api - required' }
GL3_2 >> texImage2DMultisample: target with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<generated>
	<apicall: void 'glTexImage2DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL3_2 >> texImage3DMultisample: target with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<generated>
	<apicall: void 'glTexImage3DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> translated: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super translated: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> translatef: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super translatef: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> vertex2d: x with: y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex2d: x with: y
]

{ #category : #'api - removed' }
GL3_2 >> vertex2dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex2dv: v
]

{ #category : #'api - removed' }
GL3_2 >> vertex2f: x with: y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex2f: x with: y
]

{ #category : #'api - removed' }
GL3_2 >> vertex2fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex2fv: v
]

{ #category : #'api - removed' }
GL3_2 >> vertex2i: x with: y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex2i: x with: y
]

{ #category : #'api - removed' }
GL3_2 >> vertex2iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex2iv: v
]

{ #category : #'api - removed' }
GL3_2 >> vertex2s: x with: y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex2s: x with: y
]

{ #category : #'api - removed' }
GL3_2 >> vertex2sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex2sv: v
]

{ #category : #'api - removed' }
GL3_2 >> vertex3d: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex3d: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> vertex3dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex3dv: v
]

{ #category : #'api - removed' }
GL3_2 >> vertex3f: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex3f: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> vertex3fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex3fv: v
]

{ #category : #'api - removed' }
GL3_2 >> vertex3i: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex3i: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> vertex3iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex3iv: v
]

{ #category : #'api - removed' }
GL3_2 >> vertex3s: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex3s: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> vertex3sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex3sv: v
]

{ #category : #'api - removed' }
GL3_2 >> vertex4d: x with: y with: z with: w [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex4d: x with: y with: z with: w
]

{ #category : #'api - removed' }
GL3_2 >> vertex4dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex4dv: v
]

{ #category : #'api - removed' }
GL3_2 >> vertex4f: x with: y with: z with: w [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex4f: x with: y with: z with: w
]

{ #category : #'api - removed' }
GL3_2 >> vertex4fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex4fv: v
]

{ #category : #'api - removed' }
GL3_2 >> vertex4i: x with: y with: z with: w [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex4i: x with: y with: z with: w
]

{ #category : #'api - removed' }
GL3_2 >> vertex4iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex4iv: v
]

{ #category : #'api - removed' }
GL3_2 >> vertex4s: x with: y with: z with: w [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex4s: x with: y with: z with: w
]

{ #category : #'api - removed' }
GL3_2 >> vertex4sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertex4sv: v
]

{ #category : #'api - removed' }
GL3_2 >> vertexPointer: size with: type with: stride with: pointer [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super vertexPointer: size with: type with: stride with: pointer
]

{ #category : #'api - required' }
GL3_2 >> waitSync: sync with: flags with: timeout [

	<generated>
	<apicall: void 'glWaitSync' (GLsync GLbitfield GLuint64)>
	^ self externalCallFailed
]

{ #category : #'api - removed' }
GL3_2 >> windowPos2d: x with: y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos2d: x with: y
]

{ #category : #'api - removed' }
GL3_2 >> windowPos2dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos2dv: v
]

{ #category : #'api - removed' }
GL3_2 >> windowPos2f: x with: y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos2f: x with: y
]

{ #category : #'api - removed' }
GL3_2 >> windowPos2fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos2fv: v
]

{ #category : #'api - removed' }
GL3_2 >> windowPos2i: x with: y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos2i: x with: y
]

{ #category : #'api - removed' }
GL3_2 >> windowPos2iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos2iv: v
]

{ #category : #'api - removed' }
GL3_2 >> windowPos2s: x with: y [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos2s: x with: y
]

{ #category : #'api - removed' }
GL3_2 >> windowPos2sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos2sv: v
]

{ #category : #'api - removed' }
GL3_2 >> windowPos3d: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos3d: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> windowPos3dv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos3dv: v
]

{ #category : #'api - removed' }
GL3_2 >> windowPos3f: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos3f: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> windowPos3fv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos3fv: v
]

{ #category : #'api - removed' }
GL3_2 >> windowPos3i: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos3i: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> windowPos3iv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos3iv: v
]

{ #category : #'api - removed' }
GL3_2 >> windowPos3s: x with: y with: z [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos3s: x with: y with: z
]

{ #category : #'api - removed' }
GL3_2 >> windowPos3sv: v [

	<generated>
	profile == #core ifTrue: [^ self profileError].
	^ super windowPos3sv: v
]
