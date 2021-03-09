Class {
	#name : #GL32Core,
	#superclass : #GL31,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #testing,
	#timestamp : 'stlu 2/18/2021 22:30'
}
GL32Core class >> isProfile: aSymbol [

	^ #core = aSymbol
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL32Core class >> majorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL32Core class >> minorVersion [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:52'
}
GL32Core class >> versionNumber [

	^ 32
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ACCUM [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ACCUM_ALPHA_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ACCUM_BLUE_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ACCUM_BUFFER_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ACCUM_CLEAR_VALUE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ACCUM_GREEN_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ACCUM_RED_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ADD [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ADD_SIGNED [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALIASED_POINT_SIZE_RANGE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALL_ATTRIB_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALPHA12 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALPHA16 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALPHA4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALPHA8 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALPHA_BIAS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALPHA_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALPHA_INTEGER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALPHA_SCALE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALPHA_TEST [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALPHA_TEST_FUNC [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALPHA_TEST_REF [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ALREADY_SIGNALED [

	<generated>
	^ GL_ALREADY_SIGNALED
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> AMBIENT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> AMBIENT_AND_DIFFUSE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ATTRIB_STACK_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> AUTO_NORMAL [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> AUX0 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> AUX1 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> AUX2 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> AUX3 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> AUX_BUFFERS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> BITMAP [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> BITMAP_TOKEN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> BLUE_BIAS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> BLUE_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> BLUE_SCALE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> C3F_V3F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> C4F_N3F_V3F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> C4UB_V2F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> C4UB_V3F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLAMP [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLAMP_FRAGMENT_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLAMP_VERTEX_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLIENT_ACTIVE_TEXTURE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLIENT_ALL_ATTRIB_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLIENT_ATTRIB_STACK_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLIENT_PIXEL_STORE_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLIENT_VERTEX_ARRAY_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLIP_PLANE0 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLIP_PLANE1 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLIP_PLANE2 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLIP_PLANE3 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLIP_PLANE4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CLIP_PLANE5 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COEFF [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COLOR_ARRAY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COLOR_ARRAY_BUFFER_BINDING [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COLOR_ARRAY_POINTER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COLOR_ARRAY_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COLOR_ARRAY_STRIDE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COLOR_ARRAY_TYPE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COLOR_INDEX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COLOR_INDEXES [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COLOR_MATERIAL [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COLOR_MATERIAL_FACE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COLOR_MATERIAL_PARAMETER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COLOR_SUM [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COMBINE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COMBINE_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COMBINE_RGB [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COMPARE_R_TO_TEXTURE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COMPILE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COMPILE_AND_EXECUTE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COMPRESSED_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COMPRESSED_INTENSITY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COMPRESSED_LUMINANCE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COMPRESSED_LUMINANCE_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COMPRESSED_SLUMINANCE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COMPRESSED_SLUMINANCE_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CONDITION_SATISFIED [

	<generated>
	^ GL_CONDITION_SATISFIED
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CONSTANT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CONSTANT_ATTENUATION [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CONTEXT_COMPATIBILITY_PROFILE_BIT [

	<generated>
	^ GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CONTEXT_CORE_PROFILE_BIT [

	<generated>
	^ GL_CONTEXT_CORE_PROFILE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CONTEXT_PROFILE_MASK [

	<generated>
	^ GL_CONTEXT_PROFILE_MASK
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COORD_REPLACE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> COPY_PIXEL_TOKEN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_FOG_COORD [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_FOG_COORDINATE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_INDEX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_NORMAL [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_RASTER_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_RASTER_DISTANCE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_RASTER_INDEX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_RASTER_POSITION [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_RASTER_POSITION_VALID [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_RASTER_SECONDARY_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_RASTER_TEXTURE_COORDS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_SECONDARY_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> CURRENT_TEXTURE_COORDS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> DECAL [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> DEPTH_BIAS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> DEPTH_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> DEPTH_CLAMP [

	<generated>
	^ GL_DEPTH_CLAMP
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> DEPTH_SCALE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> DEPTH_TEXTURE_MODE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> DIFFUSE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> DOMAIN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> DOT3_RGB [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> DOT3_RGBA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> DRAW_PIXEL_TOKEN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> EDGE_FLAG [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> EDGE_FLAG_ARRAY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> EDGE_FLAG_ARRAY_BUFFER_BINDING [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> EDGE_FLAG_ARRAY_POINTER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> EDGE_FLAG_ARRAY_STRIDE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> EMISSION [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ENABLE_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> EVAL_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> EXP [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> EXP2 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> EYE_LINEAR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> EYE_PLANE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FEEDBACK [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FEEDBACK_BUFFER_POINTER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FEEDBACK_BUFFER_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FEEDBACK_BUFFER_TYPE [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FIRST_VERTEX_CONVENTION [

	<generated>
	^ GL_FIRST_VERTEX_CONVENTION
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FLAT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORD [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORDINATE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORDINATE_ARRAY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORDINATE_ARRAY_BUFFER_BINDING [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORDINATE_ARRAY_POINTER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORDINATE_ARRAY_STRIDE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORDINATE_ARRAY_TYPE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORDINATE_SOURCE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORD_ARRAY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORD_ARRAY_BUFFER_BINDING [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORD_ARRAY_POINTER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORD_ARRAY_STRIDE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORD_ARRAY_TYPE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_COORD_SRC [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_DENSITY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_END [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_HINT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_INDEX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_MODE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FOG_START [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FRAGMENT_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FRAMEBUFFER_ATTACHMENT_LAYERED [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_LAYERED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GENERATE_MIPMAP [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GENERATE_MIPMAP_HINT [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GEOMETRY_INPUT_TYPE [

	<generated>
	^ GL_GEOMETRY_INPUT_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GEOMETRY_OUTPUT_TYPE [

	<generated>
	^ GL_GEOMETRY_OUTPUT_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GEOMETRY_SHADER [

	<generated>
	^ GL_GEOMETRY_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GEOMETRY_VERTICES_OUT [

	<generated>
	^ GL_GEOMETRY_VERTICES_OUT
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GL_2D [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GL_2_BYTES [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GL_3D [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GL_3D_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GL_3D_COLOR_TEXTURE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GL_3_BYTES [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GL_4D_COLOR_TEXTURE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GL_4_BYTES [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GREEN_BIAS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GREEN_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> GREEN_SCALE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> HINT_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX_ARRAY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX_ARRAY_BUFFER_BINDING [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX_ARRAY_POINTER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX_ARRAY_STRIDE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX_ARRAY_TYPE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX_CLEAR_VALUE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX_LOGIC_OP [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX_MODE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX_OFFSET [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX_SHIFT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INDEX_WRITEMASK [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INTENSITY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INTENSITY12 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INTENSITY16 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INTENSITY4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INTENSITY8 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INTERPOLATE [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INT_SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_INT_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> INT_SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LAST_VERTEX_CONVENTION [

	<generated>
	^ GL_LAST_VERTEX_CONVENTION
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHT0 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHT1 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHT2 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHT3 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHT4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHT5 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHT6 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHT7 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHTING [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHTING_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHT_MODEL_AMBIENT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHT_MODEL_COLOR_CONTROL [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHT_MODEL_LOCAL_VIEWER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIGHT_MODEL_TWO_SIDE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LINEAR_ATTENUATION [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LINES_ADJACENCY [

	<generated>
	^ GL_LINES_ADJACENCY
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LINE_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LINE_RESET_TOKEN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LINE_STIPPLE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LINE_STIPPLE_PATTERN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LINE_STIPPLE_REPEAT [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LINE_STRIP_ADJACENCY [

	<generated>
	^ GL_LINE_STRIP_ADJACENCY
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LINE_TOKEN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIST_BASE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIST_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIST_INDEX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LIST_MODE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LOAD [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LOGIC_OP [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LUMINANCE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LUMINANCE12 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LUMINANCE12_ALPHA12 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LUMINANCE12_ALPHA4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LUMINANCE16 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LUMINANCE16_ALPHA16 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LUMINANCE4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LUMINANCE4_ALPHA4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LUMINANCE6_ALPHA2 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LUMINANCE8 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LUMINANCE8_ALPHA8 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> LUMINANCE_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP1_COLOR_4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP1_GRID_DOMAIN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP1_GRID_SEGMENTS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP1_INDEX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP1_NORMAL [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP1_TEXTURE_COORD_1 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP1_TEXTURE_COORD_2 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP1_TEXTURE_COORD_3 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP1_TEXTURE_COORD_4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP1_VERTEX_3 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP1_VERTEX_4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP2_COLOR_4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP2_GRID_DOMAIN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP2_GRID_SEGMENTS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP2_INDEX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP2_NORMAL [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP2_TEXTURE_COORD_1 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP2_TEXTURE_COORD_2 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP2_TEXTURE_COORD_3 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP2_TEXTURE_COORD_4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP2_VERTEX_3 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP2_VERTEX_4 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAP_STENCIL [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MATRIX_MODE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_ATTRIB_STACK_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_CLIENT_ATTRIB_STACK_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_CLIP_PLANES [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_COLOR_TEXTURE_SAMPLES [

	<generated>
	^ GL_MAX_COLOR_TEXTURE_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_DEPTH_TEXTURE_SAMPLES [

	<generated>
	^ GL_MAX_DEPTH_TEXTURE_SAMPLES
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_EVAL_ORDER [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_FRAGMENT_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_FRAGMENT_INPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_GEOMETRY_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_INPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_GEOMETRY_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_GEOMETRY_OUTPUT_VERTICES [

	<generated>
	^ GL_MAX_GEOMETRY_OUTPUT_VERTICES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_GEOMETRY_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_GEOMETRY_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_INTEGER_SAMPLES [

	<generated>
	^ GL_MAX_INTEGER_SAMPLES
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_LIGHTS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_LIST_NESTING [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_MODELVIEW_STACK_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_NAME_STACK_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_PIXEL_MAP_TABLE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_PROJECTION_STACK_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_SAMPLE_MASK_WORDS [

	<generated>
	^ GL_MAX_SAMPLE_MASK_WORDS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_SERVER_WAIT_TIMEOUT [

	<generated>
	^ GL_MAX_SERVER_WAIT_TIMEOUT
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_TEXTURE_COORDS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_TEXTURE_STACK_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_TEXTURE_UNITS [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MAX_VERTEX_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_VERTEX_OUTPUT_COMPONENTS
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MODELVIEW [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MODELVIEW_MATRIX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MODELVIEW_STACK_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MODULATE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MULT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> MULTISAMPLE_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> N3F_V3F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> NAME_STACK_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> NORMALIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> NORMAL_ARRAY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> NORMAL_ARRAY_BUFFER_BINDING [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> NORMAL_ARRAY_POINTER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> NORMAL_ARRAY_STRIDE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> NORMAL_ARRAY_TYPE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> NORMAL_MAP [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> OBJECT_LINEAR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> OBJECT_PLANE [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> OBJECT_TYPE [

	<generated>
	^ GL_OBJECT_TYPE
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> OPERAND0_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> OPERAND0_RGB [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> OPERAND1_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> OPERAND1_RGB [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> OPERAND2_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> OPERAND2_RGB [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ORDER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PASS_THROUGH_TOKEN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PERSPECTIVE_CORRECTION_HINT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_A_TO_A [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_A_TO_A_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_B_TO_B [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_B_TO_B_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_G_TO_G [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_G_TO_G_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_I_TO_A [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_I_TO_A_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_I_TO_B [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_I_TO_B_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_I_TO_G [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_I_TO_G_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_I_TO_I [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_I_TO_I_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_I_TO_R [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_I_TO_R_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_R_TO_R [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_R_TO_R_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_S_TO_S [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MAP_S_TO_S_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PIXEL_MODE_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POINT_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POINT_DISTANCE_ATTENUATION [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POINT_SIZE_MAX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POINT_SIZE_MIN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POINT_SMOOTH [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POINT_SMOOTH_HINT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POINT_SPRITE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POINT_TOKEN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POLYGON [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POLYGON_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POLYGON_STIPPLE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POLYGON_STIPPLE_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POLYGON_TOKEN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> POSITION [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PREVIOUS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PRIMARY_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PROGRAM_POINT_SIZE [

	<generated>
	^ GL_PROGRAM_POINT_SIZE
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PROJECTION [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PROJECTION_MATRIX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PROJECTION_STACK_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PROVOKING_VERTEX [

	<generated>
	^ GL_PROVOKING_VERTEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PROXY_TEXTURE_2D_MULTISAMPLE [

	<generated>
	^ GL_PROXY_TEXTURE_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> Q [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> QUADRATIC_ATTENUATION [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> QUADS [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION [

	<generated>
	^ GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> QUAD_STRIP [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> R [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> RED_BIAS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> RED_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> RED_SCALE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> REFLECTION_MAP [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> RENDER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> RENDER_MODE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> RESCALE_NORMAL [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> RETURN [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> RGBA_MODE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> RGB_SCALE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> S [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SAMPLE_MASK [

	<generated>
	^ GL_SAMPLE_MASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SAMPLE_MASK_VALUE [

	<generated>
	^ GL_SAMPLE_MASK_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SAMPLE_POSITION [

	<generated>
	^ GL_SAMPLE_POSITION
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SCISSOR_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SECONDARY_COLOR_ARRAY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SECONDARY_COLOR_ARRAY_BUFFER_BINDING [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SECONDARY_COLOR_ARRAY_POINTER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SECONDARY_COLOR_ARRAY_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SECONDARY_COLOR_ARRAY_STRIDE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SECONDARY_COLOR_ARRAY_TYPE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SELECT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SELECTION_BUFFER_POINTER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SELECTION_BUFFER_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SEPARATE_SPECULAR_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SHADE_MODEL [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SHININESS [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SIGNALED [

	<generated>
	^ GL_SIGNALED
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SINGLE_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SLUMINANCE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SLUMINANCE8 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SLUMINANCE8_ALPHA8 [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SLUMINANCE_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SMOOTH [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SOURCE0_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SOURCE0_RGB [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SOURCE1_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SOURCE1_RGB [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SOURCE2_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SOURCE2_RGB [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SPECULAR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SPHERE_MAP [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SPOT_CUTOFF [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SPOT_DIRECTION [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SPOT_EXPONENT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SRC0_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SRC0_RGB [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SRC1_RGB [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SRC2_ALPHA [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SRC2_RGB [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> STACK_OVERFLOW [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> STACK_UNDERFLOW [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> STENCIL_BITS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SUBTRACT [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SYNC_CONDITION [

	<generated>
	^ GL_SYNC_CONDITION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SYNC_FENCE [

	<generated>
	^ GL_SYNC_FENCE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SYNC_FLAGS [

	<generated>
	^ GL_SYNC_FLAGS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SYNC_FLUSH_COMMANDS_BIT [

	<generated>
	^ GL_SYNC_FLUSH_COMMANDS_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SYNC_GPU_COMMANDS_COMPLETE [

	<generated>
	^ GL_SYNC_GPU_COMMANDS_COMPLETE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> SYNC_STATUS [

	<generated>
	^ GL_SYNC_STATUS
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> T [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> T2F_C3F_V3F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> T2F_C4F_N3F_V3F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> T2F_C4UB_V3F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> T2F_N3F_V3F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> T2F_V3F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> T4F_C4F_N3F_V4F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> T4F_V4F [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_2D_MULTISAMPLE [

	<generated>
	^ GL_TEXTURE_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_TEXTURE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_BINDING_2D_MULTISAMPLE [

	<generated>
	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_BORDER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_COMPONENTS [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_COORD_ARRAY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_COORD_ARRAY_BUFFER_BINDING [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_COORD_ARRAY_POINTER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_COORD_ARRAY_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_COORD_ARRAY_STRIDE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_COORD_ARRAY_TYPE [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_CUBE_MAP_SEAMLESS [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_SEAMLESS
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_ENV [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_ENV_COLOR [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_ENV_MODE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_FILTER_CONTROL [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_FIXED_SAMPLE_LOCATIONS [

	<generated>
	^ GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_GEN_MODE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_GEN_Q [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_GEN_R [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_GEN_S [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_GEN_T [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_INTENSITY_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_INTENSITY_TYPE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_LUMINANCE_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_LUMINANCE_TYPE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_MATRIX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_PRIORITY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_RESIDENT [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_SAMPLES [

	<generated>
	^ GL_TEXTURE_SAMPLES
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TEXTURE_STACK_DEPTH [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TIMEOUT_EXPIRED [

	<generated>
	^ GL_TIMEOUT_EXPIRED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TIMEOUT_IGNORED [

	<generated>
	^ GL_TIMEOUT_IGNORED
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TRANSFORM_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TRANSPOSE_COLOR_MATRIX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TRANSPOSE_MODELVIEW_MATRIX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TRANSPOSE_PROJECTION_MATRIX [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TRANSPOSE_TEXTURE_MATRIX [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TRIANGLES_ADJACENCY [

	<generated>
	^ GL_TRIANGLES_ADJACENCY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> TRIANGLE_STRIP_ADJACENCY [

	<generated>
	^ GL_TRIANGLE_STRIP_ADJACENCY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> UNSIGNALED [

	<generated>
	^ GL_UNSIGNALED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> V2F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> V3F [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> VERTEX_ARRAY [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> VERTEX_ARRAY_BUFFER_BINDING [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> VERTEX_ARRAY_POINTER [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> VERTEX_ARRAY_SIZE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> VERTEX_ARRAY_STRIDE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> VERTEX_ARRAY_TYPE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> VERTEX_PROGRAM_TWO_SIDE [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> VIEWPORT_BIT [

	<generated>
	self profileError
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> WAIT_FAILED [

	<generated>
	^ GL_WAIT_FAILED
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> WEIGHT_ARRAY_BUFFER_BINDING [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ZOOM_X [

	<generated>
	self profileError
]

{
	#category : #'constants - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ZOOM_Y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> accum: op with: value [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> alphaFunc: func with: ref [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> areTexturesResident: n with: textures with: residences [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> arrayElement: i [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> begin: mode [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> bitmap: width with: height with: xorig with: yorig with: xmove with: ymove with: bitmap [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> callList: list [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> callLists: n with: type with: lists [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> clearAccum: red with: green with: blue with: alpha [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> clearIndex: c [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> clientActiveTexture: texture [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> clientWaitSync: sync with: flags with: timeout [

	<generated>
	<apicall: GLenum 'glClientWaitSync' (GLsync GLbitfield GLuint64)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> clipPlane: plane with: equation [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3b: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3bv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3d: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3f: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3i: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3s: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3ub: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3ubv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3ui: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3uiv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3us: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color3usv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4b: red with: green with: blue with: alpha [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4bv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4d: red with: green with: blue with: alpha [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4f: red with: green with: blue with: alpha [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4i: red with: green with: blue with: alpha [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4s: red with: green with: blue with: alpha [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4ub: red with: green with: blue with: alpha [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4ubv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4ui: red with: green with: blue with: alpha [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4uiv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4us: red with: green with: blue with: alpha [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> color4usv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> colorMaterial: face with: mode [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> colorPointer: size with: type with: stride with: pointer [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> copyPixels: x with: y with: width with: height with: type [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> deleteLists: list with: range [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> deleteSync: sync [

	<generated>
	<apicall: void 'glDeleteSync' (GLsync)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> disableClientState: array [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> drawElementsBaseVertex: mode with: count with: type with: indices with: basevertex [

	<generated>
	<apicall: void 'glDrawElementsBaseVertex' (GLenum GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> drawElementsInstancedBaseVertex: mode with: count with: type with: indices with: instancecount with: basevertex [

	<generated>
	<apicall: void 'glDrawElementsInstancedBaseVertex' (GLenum GLsizei GLenum void* GLsizei GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> drawPixels: width with: height with: format with: type with: pixels [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> drawRangeElementsBaseVertex: mode with: start with: end with: count with: type with: indices with: basevertex [

	<generated>
	<apicall: void 'glDrawRangeElementsBaseVertex' (GLenum GLuint GLuint GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> edgeFlag: flag [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> edgeFlagPointer: stride with: pointer [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> edgeFlagv: flag [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> enableClientState: array [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> end [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> endList [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> evalCoord1d: u [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> evalCoord1dv: u [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> evalCoord1f: u [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> evalCoord1fv: u [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> evalCoord2d: u with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> evalCoord2dv: u [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> evalCoord2f: u with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> evalCoord2fv: u [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> evalMesh1: mode with: i1 with: i2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> evalMesh2: mode with: i1 with: i2 with: j1 with: j2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> evalPoint1: i [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> evalPoint2: i with: j [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> feedbackBuffer: size with: type with: buffer [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> fenceSync: condition with: flags [

	<generated>
	<apicall: GLsync 'glFenceSync' (GLenum GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> fogCoordPointer: type with: stride with: pointer [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> fogCoordd: coord [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> fogCoorddv: coord [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> fogCoordf: coord [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> fogCoordfv: coord [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> fogf: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> fogfv: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> fogi: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> fogiv: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> framebufferTexture: target with: attachment with: texture with: level [

	<generated>
	<apicall: void 'glFramebufferTexture' (GLenum GLenum GLuint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> frustum: left with: right with: bottom with: top with: zNear with: zFar [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> genLists: range [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getBufferParameteri64v: target with: pname with: params [

	<generated>
	<apicall: void 'glGetBufferParameteri64v' (GLenum GLenum GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getClipPlane: plane with: equation [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getInteger64i_v: target with: index with: data [

	<generated>
	<apicall: void 'glGetInteger64i_v' (GLenum GLuint GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getInteger64v: pname with: data [

	<generated>
	<apicall: void 'glGetInteger64v' (GLenum GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getLightfv: light with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getLightiv: light with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getMapdv: target with: query with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getMapfv: target with: query with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getMapiv: target with: query with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getMaterialfv: face with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getMaterialiv: face with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getMultisamplefv: pname with: index with: val [

	<generated>
	<apicall: void 'glGetMultisamplefv' (GLenum GLuint GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getPixelMapfv: map with: values [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getPixelMapuiv: map with: values [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getPixelMapusv: map with: values [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getPointerv: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getPolygonStipple: mask [

	<generated>
	self profileError
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/12/2020 15:44'
}
GL32Core >> getProfile [

	| profileMask |
	profileMask := self getProfileMask.
	(profileMask bitAnd: GL_CONTEXT_COMPATIBILITY_PROFILE_BIT) ~= 0 ifTrue: [^ #compatibility].
	(profileMask bitAnd: GL_CONTEXT_CORE_PROFILE_BIT) ~= 0 ifTrue: [^ #core].
	self error: 'No such profile'
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/12/2020 15:22'
}
GL32Core >> getProfileMask [

	^ self getIntegerParameter: GL_CONTEXT_PROFILE_MASK
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getSynciv: sync with: pname with: count with: length with: values [

	<generated>
	<apicall: void 'glGetSynciv' (GLsync GLenum GLsizei GLsizei* GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getTexEnvfv: target with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getTexEnviv: target with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getTexGendv: coord with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getTexGenfv: coord with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> getTexGeniv: coord with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> indexMask: mask [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> indexPointer: type with: stride with: pointer [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> indexd: c [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> indexdv: c [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> indexf: c [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> indexfv: c [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> indexi: c [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> indexiv: c [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> indexs: c [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> indexsv: c [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> indexub: c [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> indexubv: c [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> initNames [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> interleavedArrays: format with: stride with: pointer [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> isList: list [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> isSync: sync [

	<generated>
	<apicall: GLboolean 'glIsSync' (GLsync)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> lightModelf: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> lightModelfv: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> lightModeli: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> lightModeliv: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> lightf: light with: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> lightfv: light with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> lighti: light with: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> lightiv: light with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> lineStipple: factor with: pattern [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> listBase: base [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> loadIdentity [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> loadMatrixd: m [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> loadMatrixf: m [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> loadName: name [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> loadTransposeMatrixd: m [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> loadTransposeMatrixf: m [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> map1d: target with: u1 with: u2 with: stride with: order with: points [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> map1f: target with: u1 with: u2 with: stride with: order with: points [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> map2d: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> map2f: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> mapGrid1d: un with: u1 with: u2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> mapGrid1f: un with: u1 with: u2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> mapGrid2d: un with: u1 with: u2 with: vn with: v1 with: v2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> mapGrid2f: un with: u1 with: u2 with: vn with: v1 with: v2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> materialf: face with: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> materialfv: face with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> materiali: face with: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> materialiv: face with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> matrixMode: mode [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multMatrixd: m [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multMatrixf: m [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multTransposeMatrixd: m [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multTransposeMatrixf: m [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiDrawElementsBaseVertex: mode with: count with: type with: indices with: drawcount with: basevertex [

	<generated>
	<apicall: void 'glMultiDrawElementsBaseVertex' (GLenum GLsizei* GLenum void** GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord1d: target with: s [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord1dv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord1f: target with: s [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord1fv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord1i: target with: s [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord1iv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord1s: target with: s [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord1sv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord2d: target with: s with: t [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord2dv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord2f: target with: s with: t [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord2fv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord2i: target with: s with: t [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord2iv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord2s: target with: s with: t [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord2sv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord3d: target with: s with: t with: r [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord3dv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord3f: target with: s with: t with: r [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord3fv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord3i: target with: s with: t with: r [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord3iv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord3s: target with: s with: t with: r [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord3sv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord4d: target with: s with: t with: r with: q [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord4dv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord4f: target with: s with: t with: r with: q [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord4fv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord4i: target with: s with: t with: r with: q [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord4iv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord4s: target with: s with: t with: r with: q [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> multiTexCoord4sv: target with: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> newList: list with: mode [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> normal3b: nx with: ny with: nz [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> normal3bv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> normal3d: nx with: ny with: nz [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> normal3dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> normal3f: nx with: ny with: nz [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> normal3fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> normal3i: nx with: ny with: nz [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> normal3iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> normal3s: nx with: ny with: nz [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> normal3sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> normalPointer: type with: stride with: pointer [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> ortho: left with: right with: bottom with: top with: zNear with: zFar [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> passThrough: token [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> pixelMapfv: map with: mapsize with: values [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> pixelMapuiv: map with: mapsize with: values [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> pixelMapusv: map with: mapsize with: values [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> pixelTransferf: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> pixelTransferi: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> pixelZoom: xfactor with: yfactor [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> polygonStipple: mask [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> popAttrib [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> popClientAttrib [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> popMatrix [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> popName [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> prioritizeTextures: n with: textures with: priorities [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> provokingVertex: mode [

	<generated>
	<apicall: void 'glProvokingVertex' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> pushAttrib: mask [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> pushClientAttrib: mask [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> pushMatrix [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> pushName: name [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos2d: x with: y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos2dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos2f: x with: y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos2fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos2i: x with: y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos2iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos2s: x with: y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos2sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos3d: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos3dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos3f: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos3fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos3i: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos3iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos3s: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos3sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos4d: x with: y with: z with: w [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos4dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos4f: x with: y with: z with: w [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos4fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos4i: x with: y with: z with: w [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos4iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos4s: x with: y with: z with: w [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rasterPos4sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rectd: x1 with: y1 with: x2 with: y2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rectdv: v1 with: v2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rectf: x1 with: y1 with: x2 with: y2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rectfv: v1 with: v2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> recti: x1 with: y1 with: x2 with: y2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rectiv: v1 with: v2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rects: x1 with: y1 with: x2 with: y2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rectsv: v1 with: v2 [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> renderMode: mode [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rotated: angle with: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> rotatef: angle with: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> sampleMaski: maskNumber with: mask [

	<generated>
	<apicall: void 'glSampleMaski' (GLuint GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> scaled: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> scalef: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3b: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3bv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3d: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3f: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3i: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3s: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3ub: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3ubv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3ui: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3uiv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3us: red with: green with: blue [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColor3usv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> secondaryColorPointer: size with: type with: stride with: pointer [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> selectBuffer: size with: buffer [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> shadeModel: mode [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord1d: s [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord1dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord1f: s [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord1fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord1i: s [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord1iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord1s: s [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord1sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord2d: s with: t [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord2dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord2f: s with: t [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord2fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord2i: s with: t [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord2iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord2s: s with: t [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord2sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord3d: s with: t with: r [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord3dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord3f: s with: t with: r [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord3fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord3i: s with: t with: r [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord3iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord3s: s with: t with: r [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord3sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord4d: s with: t with: r with: q [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord4dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord4f: s with: t with: r with: q [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord4fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord4i: s with: t with: r with: q [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord4iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord4s: s with: t with: r with: q [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoord4sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texCoordPointer: size with: type with: stride with: pointer [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texEnvf: target with: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texEnvfv: target with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texEnvi: target with: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texEnviv: target with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texGend: coord with: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texGendv: coord with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texGenf: coord with: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texGenfv: coord with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texGeni: coord with: pname with: param [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texGeniv: coord with: pname with: params [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texImage2DMultisample: target with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<generated>
	<apicall: void 'glTexImage2DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> texImage3DMultisample: target with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<generated>
	<apicall: void 'glTexImage3DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> translated: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> translatef: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex2d: x with: y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex2dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex2f: x with: y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex2fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex2i: x with: y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex2iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex2s: x with: y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex2sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex3d: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex3dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex3f: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex3fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex3i: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex3iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex3s: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex3sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex4d: x with: y with: z with: w [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex4dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex4f: x with: y with: z with: w [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex4fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex4i: x with: y with: z with: w [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex4iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex4s: x with: y with: z with: w [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertex4sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> vertexPointer: size with: type with: stride with: pointer [

	<generated>
	self profileError
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> waitSync: sync with: flags with: timeout [

	<generated>
	<apicall: void 'glWaitSync' (GLsync GLbitfield GLuint64)>
	^ self externalCallFailed
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos2d: x with: y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos2dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos2f: x with: y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos2fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos2i: x with: y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos2iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos2s: x with: y [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos2sv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos3d: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos3dv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos3f: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos3fv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos3i: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos3iv: v [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos3s: x with: y with: z [

	<generated>
	self profileError
]

{
	#category : #'api - removed',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Core >> windowPos3sv: v [

	<generated>
	self profileError
]
