Class {
	#name : #GL10,
	#superclass : #GLAPI,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL10 class >> majorVersion [

	^ 1
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL10 class >> minorVersion [

	^ 0
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:50'
}
GL10 class >> versionNumber [

	^ 10
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ACCUM [

	<generated>
	^ GL_ACCUM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ACCUM_ALPHA_BITS [

	<generated>
	^ GL_ACCUM_ALPHA_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ACCUM_BLUE_BITS [

	<generated>
	^ GL_ACCUM_BLUE_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ACCUM_BUFFER_BIT [

	<generated>
	^ GL_ACCUM_BUFFER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ACCUM_CLEAR_VALUE [

	<generated>
	^ GL_ACCUM_CLEAR_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ACCUM_GREEN_BITS [

	<generated>
	^ GL_ACCUM_GREEN_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ACCUM_RED_BITS [

	<generated>
	^ GL_ACCUM_RED_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ADD [

	<generated>
	^ GL_ADD
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ALL_ATTRIB_BITS [

	<generated>
	^ GL_ALL_ATTRIB_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ALPHA [

	<generated>
	^ GL_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ALPHA_BIAS [

	<generated>
	^ GL_ALPHA_BIAS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ALPHA_BITS [

	<generated>
	^ GL_ALPHA_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ALPHA_SCALE [

	<generated>
	^ GL_ALPHA_SCALE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ALPHA_TEST [

	<generated>
	^ GL_ALPHA_TEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ALPHA_TEST_FUNC [

	<generated>
	^ GL_ALPHA_TEST_FUNC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ALPHA_TEST_REF [

	<generated>
	^ GL_ALPHA_TEST_REF
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ALWAYS [

	<generated>
	^ GL_ALWAYS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> AMBIENT [

	<generated>
	^ GL_AMBIENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> AMBIENT_AND_DIFFUSE [

	<generated>
	^ GL_AMBIENT_AND_DIFFUSE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> AND [

	<generated>
	^ GL_AND
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> AND_INVERTED [

	<generated>
	^ GL_AND_INVERTED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> AND_REVERSE [

	<generated>
	^ GL_AND_REVERSE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ATTRIB_STACK_DEPTH [

	<generated>
	^ GL_ATTRIB_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> AUTO_NORMAL [

	<generated>
	^ GL_AUTO_NORMAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> AUX0 [

	<generated>
	^ GL_AUX0
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> AUX1 [

	<generated>
	^ GL_AUX1
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> AUX2 [

	<generated>
	^ GL_AUX2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> AUX3 [

	<generated>
	^ GL_AUX3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> AUX_BUFFERS [

	<generated>
	^ GL_AUX_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BACK [

	<generated>
	^ GL_BACK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BACK_LEFT [

	<generated>
	^ GL_BACK_LEFT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BACK_RIGHT [

	<generated>
	^ GL_BACK_RIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BITMAP [

	<generated>
	^ GL_BITMAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BITMAP_TOKEN [

	<generated>
	^ GL_BITMAP_TOKEN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BLEND [

	<generated>
	^ GL_BLEND
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BLEND_DST [

	<generated>
	^ GL_BLEND_DST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BLEND_SRC [

	<generated>
	^ GL_BLEND_SRC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BLUE [

	<generated>
	^ GL_BLUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BLUE_BIAS [

	<generated>
	^ GL_BLUE_BIAS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BLUE_BITS [

	<generated>
	^ GL_BLUE_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BLUE_SCALE [

	<generated>
	^ GL_BLUE_SCALE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> BYTE [

	<generated>
	^ GL_BYTE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CCW [

	<generated>
	^ GL_CCW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CLAMP [

	<generated>
	^ GL_CLAMP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CLEAR [

	<generated>
	^ GL_CLEAR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CLIP_PLANE0 [

	<generated>
	^ GL_CLIP_PLANE0
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CLIP_PLANE1 [

	<generated>
	^ GL_CLIP_PLANE1
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CLIP_PLANE2 [

	<generated>
	^ GL_CLIP_PLANE2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CLIP_PLANE3 [

	<generated>
	^ GL_CLIP_PLANE3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CLIP_PLANE4 [

	<generated>
	^ GL_CLIP_PLANE4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CLIP_PLANE5 [

	<generated>
	^ GL_CLIP_PLANE5
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COEFF [

	<generated>
	^ GL_COEFF
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COLOR [

	<generated>
	^ GL_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COLOR_BUFFER_BIT [

	<generated>
	^ GL_COLOR_BUFFER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COLOR_CLEAR_VALUE [

	<generated>
	^ GL_COLOR_CLEAR_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COLOR_INDEX [

	<generated>
	^ GL_COLOR_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COLOR_INDEXES [

	<generated>
	^ GL_COLOR_INDEXES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COLOR_MATERIAL [

	<generated>
	^ GL_COLOR_MATERIAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COLOR_MATERIAL_FACE [

	<generated>
	^ GL_COLOR_MATERIAL_FACE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COLOR_MATERIAL_PARAMETER [

	<generated>
	^ GL_COLOR_MATERIAL_PARAMETER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COLOR_WRITEMASK [

	<generated>
	^ GL_COLOR_WRITEMASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COMPILE [

	<generated>
	^ GL_COMPILE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COMPILE_AND_EXECUTE [

	<generated>
	^ GL_COMPILE_AND_EXECUTE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CONSTANT_ATTENUATION [

	<generated>
	^ GL_CONSTANT_ATTENUATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COPY [

	<generated>
	^ GL_COPY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COPY_INVERTED [

	<generated>
	^ GL_COPY_INVERTED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> COPY_PIXEL_TOKEN [

	<generated>
	^ GL_COPY_PIXEL_TOKEN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CULL_FACE [

	<generated>
	^ GL_CULL_FACE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CULL_FACE_MODE [

	<generated>
	^ GL_CULL_FACE_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CURRENT_BIT [

	<generated>
	^ GL_CURRENT_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CURRENT_COLOR [

	<generated>
	^ GL_CURRENT_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CURRENT_INDEX [

	<generated>
	^ GL_CURRENT_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CURRENT_NORMAL [

	<generated>
	^ GL_CURRENT_NORMAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CURRENT_RASTER_COLOR [

	<generated>
	^ GL_CURRENT_RASTER_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CURRENT_RASTER_DISTANCE [

	<generated>
	^ GL_CURRENT_RASTER_DISTANCE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CURRENT_RASTER_INDEX [

	<generated>
	^ GL_CURRENT_RASTER_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CURRENT_RASTER_POSITION [

	<generated>
	^ GL_CURRENT_RASTER_POSITION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CURRENT_RASTER_POSITION_VALID [

	<generated>
	^ GL_CURRENT_RASTER_POSITION_VALID
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CURRENT_RASTER_TEXTURE_COORDS [

	<generated>
	^ GL_CURRENT_RASTER_TEXTURE_COORDS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CURRENT_TEXTURE_COORDS [

	<generated>
	^ GL_CURRENT_TEXTURE_COORDS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> CW [

	<generated>
	^ GL_CW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DECAL [

	<generated>
	^ GL_DECAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DECR [

	<generated>
	^ GL_DECR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DEPTH [

	<generated>
	^ GL_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DEPTH_BIAS [

	<generated>
	^ GL_DEPTH_BIAS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DEPTH_BITS [

	<generated>
	^ GL_DEPTH_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DEPTH_BUFFER_BIT [

	<generated>
	^ GL_DEPTH_BUFFER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DEPTH_CLEAR_VALUE [

	<generated>
	^ GL_DEPTH_CLEAR_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DEPTH_COMPONENT [

	<generated>
	^ GL_DEPTH_COMPONENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DEPTH_FUNC [

	<generated>
	^ GL_DEPTH_FUNC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DEPTH_RANGE [

	<generated>
	^ GL_DEPTH_RANGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DEPTH_SCALE [

	<generated>
	^ GL_DEPTH_SCALE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DEPTH_TEST [

	<generated>
	^ GL_DEPTH_TEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DEPTH_WRITEMASK [

	<generated>
	^ GL_DEPTH_WRITEMASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DIFFUSE [

	<generated>
	^ GL_DIFFUSE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DITHER [

	<generated>
	^ GL_DITHER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DOMAIN [

	<generated>
	^ GL_DOMAIN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DONT_CARE [

	<generated>
	^ GL_DONT_CARE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DOUBLEBUFFER [

	<generated>
	^ GL_DOUBLEBUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DRAW_BUFFER [

	<generated>
	^ GL_DRAW_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DRAW_PIXEL_TOKEN [

	<generated>
	^ GL_DRAW_PIXEL_TOKEN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DST_ALPHA [

	<generated>
	^ GL_DST_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> DST_COLOR [

	<generated>
	^ GL_DST_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> EDGE_FLAG [

	<generated>
	^ GL_EDGE_FLAG
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> EMISSION [

	<generated>
	^ GL_EMISSION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ENABLE_BIT [

	<generated>
	^ GL_ENABLE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> EQUAL [

	<generated>
	^ GL_EQUAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> EQUIV [

	<generated>
	^ GL_EQUIV
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> EVAL_BIT [

	<generated>
	^ GL_EVAL_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> EXP [

	<generated>
	^ GL_EXP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> EXP2 [

	<generated>
	^ GL_EXP2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> EXTENSIONS [

	<generated>
	^ GL_EXTENSIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> EYE_LINEAR [

	<generated>
	^ GL_EYE_LINEAR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> EYE_PLANE [

	<generated>
	^ GL_EYE_PLANE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FALSE [

	<generated>
	^ GL_FALSE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FASTEST [

	<generated>
	^ GL_FASTEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FEEDBACK [

	<generated>
	^ GL_FEEDBACK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FILL [

	<generated>
	^ GL_FILL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FLAT [

	<generated>
	^ GL_FLAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FLOAT [

	<generated>
	^ GL_FLOAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FOG [

	<generated>
	^ GL_FOG
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FOG_BIT [

	<generated>
	^ GL_FOG_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FOG_COLOR [

	<generated>
	^ GL_FOG_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FOG_DENSITY [

	<generated>
	^ GL_FOG_DENSITY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FOG_END [

	<generated>
	^ GL_FOG_END
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FOG_HINT [

	<generated>
	^ GL_FOG_HINT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FOG_INDEX [

	<generated>
	^ GL_FOG_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FOG_MODE [

	<generated>
	^ GL_FOG_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FOG_START [

	<generated>
	^ GL_FOG_START
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FRONT [

	<generated>
	^ GL_FRONT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FRONT_AND_BACK [

	<generated>
	^ GL_FRONT_AND_BACK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FRONT_FACE [

	<generated>
	^ GL_FRONT_FACE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FRONT_LEFT [

	<generated>
	^ GL_FRONT_LEFT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> FRONT_RIGHT [

	<generated>
	^ GL_FRONT_RIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GEQUAL [

	<generated>
	^ GL_GEQUAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GL_2D [

	<generated>
	^ GL_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GL_2_BYTES [

	<generated>
	^ GL_2_BYTES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GL_3D [

	<generated>
	^ GL_3D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GL_3D_COLOR [

	<generated>
	^ GL_3D_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GL_3D_COLOR_TEXTURE [

	<generated>
	^ GL_3D_COLOR_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GL_3_BYTES [

	<generated>
	^ GL_3_BYTES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GL_4D_COLOR_TEXTURE [

	<generated>
	^ GL_4D_COLOR_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GL_4_BYTES [

	<generated>
	^ GL_4_BYTES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GREATER [

	<generated>
	^ GL_GREATER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GREEN [

	<generated>
	^ GL_GREEN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GREEN_BIAS [

	<generated>
	^ GL_GREEN_BIAS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GREEN_BITS [

	<generated>
	^ GL_GREEN_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> GREEN_SCALE [

	<generated>
	^ GL_GREEN_SCALE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> HINT_BIT [

	<generated>
	^ GL_HINT_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> INCR [

	<generated>
	^ GL_INCR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> INDEX_BITS [

	<generated>
	^ GL_INDEX_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> INDEX_CLEAR_VALUE [

	<generated>
	^ GL_INDEX_CLEAR_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> INDEX_MODE [

	<generated>
	^ GL_INDEX_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> INDEX_OFFSET [

	<generated>
	^ GL_INDEX_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> INDEX_SHIFT [

	<generated>
	^ GL_INDEX_SHIFT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> INDEX_WRITEMASK [

	<generated>
	^ GL_INDEX_WRITEMASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> INT [

	<generated>
	^ GL_INT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> INVALID_ENUM [

	<generated>
	^ GL_INVALID_ENUM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> INVALID_OPERATION [

	<generated>
	^ GL_INVALID_OPERATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> INVALID_VALUE [

	<generated>
	^ GL_INVALID_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> INVERT [

	<generated>
	^ GL_INVERT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> KEEP [

	<generated>
	^ GL_KEEP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LEFT [

	<generated>
	^ GL_LEFT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LEQUAL [

	<generated>
	^ GL_LEQUAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LESS [

	<generated>
	^ GL_LESS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHT0 [

	<generated>
	^ GL_LIGHT0
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHT1 [

	<generated>
	^ GL_LIGHT1
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHT2 [

	<generated>
	^ GL_LIGHT2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHT3 [

	<generated>
	^ GL_LIGHT3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHT4 [

	<generated>
	^ GL_LIGHT4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHT5 [

	<generated>
	^ GL_LIGHT5
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHT6 [

	<generated>
	^ GL_LIGHT6
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHT7 [

	<generated>
	^ GL_LIGHT7
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHTING [

	<generated>
	^ GL_LIGHTING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHTING_BIT [

	<generated>
	^ GL_LIGHTING_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHT_MODEL_AMBIENT [

	<generated>
	^ GL_LIGHT_MODEL_AMBIENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHT_MODEL_LOCAL_VIEWER [

	<generated>
	^ GL_LIGHT_MODEL_LOCAL_VIEWER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIGHT_MODEL_TWO_SIDE [

	<generated>
	^ GL_LIGHT_MODEL_TWO_SIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE [

	<generated>
	^ GL_LINE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINEAR [

	<generated>
	^ GL_LINEAR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINEAR_ATTENUATION [

	<generated>
	^ GL_LINEAR_ATTENUATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINEAR_MIPMAP_LINEAR [

	<generated>
	^ GL_LINEAR_MIPMAP_LINEAR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINEAR_MIPMAP_NEAREST [

	<generated>
	^ GL_LINEAR_MIPMAP_NEAREST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINES [

	<generated>
	^ GL_LINES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_BIT [

	<generated>
	^ GL_LINE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_LOOP [

	<generated>
	^ GL_LINE_LOOP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_RESET_TOKEN [

	<generated>
	^ GL_LINE_RESET_TOKEN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_SMOOTH [

	<generated>
	^ GL_LINE_SMOOTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_SMOOTH_HINT [

	<generated>
	^ GL_LINE_SMOOTH_HINT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_STIPPLE [

	<generated>
	^ GL_LINE_STIPPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_STIPPLE_PATTERN [

	<generated>
	^ GL_LINE_STIPPLE_PATTERN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_STIPPLE_REPEAT [

	<generated>
	^ GL_LINE_STIPPLE_REPEAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_STRIP [

	<generated>
	^ GL_LINE_STRIP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_TOKEN [

	<generated>
	^ GL_LINE_TOKEN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_WIDTH [

	<generated>
	^ GL_LINE_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_WIDTH_GRANULARITY [

	<generated>
	^ GL_LINE_WIDTH_GRANULARITY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LINE_WIDTH_RANGE [

	<generated>
	^ GL_LINE_WIDTH_RANGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIST_BASE [

	<generated>
	^ GL_LIST_BASE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIST_BIT [

	<generated>
	^ GL_LIST_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIST_INDEX [

	<generated>
	^ GL_LIST_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LIST_MODE [

	<generated>
	^ GL_LIST_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LOAD [

	<generated>
	^ GL_LOAD
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LOGIC_OP [

	<generated>
	^ GL_LOGIC_OP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LOGIC_OP_MODE [

	<generated>
	^ GL_LOGIC_OP_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LUMINANCE [

	<generated>
	^ GL_LUMINANCE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> LUMINANCE_ALPHA [

	<generated>
	^ GL_LUMINANCE_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP1_COLOR_4 [

	<generated>
	^ GL_MAP1_COLOR_4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP1_GRID_DOMAIN [

	<generated>
	^ GL_MAP1_GRID_DOMAIN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP1_GRID_SEGMENTS [

	<generated>
	^ GL_MAP1_GRID_SEGMENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP1_INDEX [

	<generated>
	^ GL_MAP1_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP1_NORMAL [

	<generated>
	^ GL_MAP1_NORMAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP1_TEXTURE_COORD_1 [

	<generated>
	^ GL_MAP1_TEXTURE_COORD_1
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP1_TEXTURE_COORD_2 [

	<generated>
	^ GL_MAP1_TEXTURE_COORD_2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP1_TEXTURE_COORD_3 [

	<generated>
	^ GL_MAP1_TEXTURE_COORD_3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP1_TEXTURE_COORD_4 [

	<generated>
	^ GL_MAP1_TEXTURE_COORD_4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP1_VERTEX_3 [

	<generated>
	^ GL_MAP1_VERTEX_3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP1_VERTEX_4 [

	<generated>
	^ GL_MAP1_VERTEX_4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP2_COLOR_4 [

	<generated>
	^ GL_MAP2_COLOR_4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP2_GRID_DOMAIN [

	<generated>
	^ GL_MAP2_GRID_DOMAIN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP2_GRID_SEGMENTS [

	<generated>
	^ GL_MAP2_GRID_SEGMENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP2_INDEX [

	<generated>
	^ GL_MAP2_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP2_NORMAL [

	<generated>
	^ GL_MAP2_NORMAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP2_TEXTURE_COORD_1 [

	<generated>
	^ GL_MAP2_TEXTURE_COORD_1
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP2_TEXTURE_COORD_2 [

	<generated>
	^ GL_MAP2_TEXTURE_COORD_2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP2_TEXTURE_COORD_3 [

	<generated>
	^ GL_MAP2_TEXTURE_COORD_3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP2_TEXTURE_COORD_4 [

	<generated>
	^ GL_MAP2_TEXTURE_COORD_4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP2_VERTEX_3 [

	<generated>
	^ GL_MAP2_VERTEX_3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP2_VERTEX_4 [

	<generated>
	^ GL_MAP2_VERTEX_4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP_COLOR [

	<generated>
	^ GL_MAP_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAP_STENCIL [

	<generated>
	^ GL_MAP_STENCIL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MATRIX_MODE [

	<generated>
	^ GL_MATRIX_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAX_ATTRIB_STACK_DEPTH [

	<generated>
	^ GL_MAX_ATTRIB_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAX_CLIP_PLANES [

	<generated>
	^ GL_MAX_CLIP_PLANES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAX_EVAL_ORDER [

	<generated>
	^ GL_MAX_EVAL_ORDER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAX_LIGHTS [

	<generated>
	^ GL_MAX_LIGHTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAX_LIST_NESTING [

	<generated>
	^ GL_MAX_LIST_NESTING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAX_MODELVIEW_STACK_DEPTH [

	<generated>
	^ GL_MAX_MODELVIEW_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAX_NAME_STACK_DEPTH [

	<generated>
	^ GL_MAX_NAME_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAX_PIXEL_MAP_TABLE [

	<generated>
	^ GL_MAX_PIXEL_MAP_TABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAX_PROJECTION_STACK_DEPTH [

	<generated>
	^ GL_MAX_PROJECTION_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAX_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_TEXTURE_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAX_TEXTURE_STACK_DEPTH [

	<generated>
	^ GL_MAX_TEXTURE_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MAX_VIEWPORT_DIMS [

	<generated>
	^ GL_MAX_VIEWPORT_DIMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MODELVIEW [

	<generated>
	^ GL_MODELVIEW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MODELVIEW_MATRIX [

	<generated>
	^ GL_MODELVIEW_MATRIX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MODELVIEW_STACK_DEPTH [

	<generated>
	^ GL_MODELVIEW_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MODULATE [

	<generated>
	^ GL_MODULATE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> MULT [

	<generated>
	^ GL_MULT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NAME_STACK_DEPTH [

	<generated>
	^ GL_NAME_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NAND [

	<generated>
	^ GL_NAND
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NEAREST [

	<generated>
	^ GL_NEAREST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NEAREST_MIPMAP_LINEAR [

	<generated>
	^ GL_NEAREST_MIPMAP_LINEAR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NEAREST_MIPMAP_NEAREST [

	<generated>
	^ GL_NEAREST_MIPMAP_NEAREST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NEVER [

	<generated>
	^ GL_NEVER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NICEST [

	<generated>
	^ GL_NICEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NONE [

	<generated>
	^ GL_NONE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NOOP [

	<generated>
	^ GL_NOOP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NOR [

	<generated>
	^ GL_NOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NORMALIZE [

	<generated>
	^ GL_NORMALIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NOTEQUAL [

	<generated>
	^ GL_NOTEQUAL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> NO_ERROR [

	<generated>
	^ GL_NO_ERROR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> OBJECT_LINEAR [

	<generated>
	^ GL_OBJECT_LINEAR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> OBJECT_PLANE [

	<generated>
	^ GL_OBJECT_PLANE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ONE [

	<generated>
	^ GL_ONE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ONE_MINUS_DST_ALPHA [

	<generated>
	^ GL_ONE_MINUS_DST_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ONE_MINUS_DST_COLOR [

	<generated>
	^ GL_ONE_MINUS_DST_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ONE_MINUS_SRC_ALPHA [

	<generated>
	^ GL_ONE_MINUS_SRC_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ONE_MINUS_SRC_COLOR [

	<generated>
	^ GL_ONE_MINUS_SRC_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> OR [

	<generated>
	^ GL_OR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ORDER [

	<generated>
	^ GL_ORDER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> OR_INVERTED [

	<generated>
	^ GL_OR_INVERTED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> OR_REVERSE [

	<generated>
	^ GL_OR_REVERSE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> OUT_OF_MEMORY [

	<generated>
	^ GL_OUT_OF_MEMORY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PACK_ALIGNMENT [

	<generated>
	^ GL_PACK_ALIGNMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PACK_LSB_FIRST [

	<generated>
	^ GL_PACK_LSB_FIRST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PACK_ROW_LENGTH [

	<generated>
	^ GL_PACK_ROW_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PACK_SKIP_PIXELS [

	<generated>
	^ GL_PACK_SKIP_PIXELS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PACK_SKIP_ROWS [

	<generated>
	^ GL_PACK_SKIP_ROWS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PACK_SWAP_BYTES [

	<generated>
	^ GL_PACK_SWAP_BYTES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PASS_THROUGH_TOKEN [

	<generated>
	^ GL_PASS_THROUGH_TOKEN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PERSPECTIVE_CORRECTION_HINT [

	<generated>
	^ GL_PERSPECTIVE_CORRECTION_HINT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_A_TO_A [

	<generated>
	^ GL_PIXEL_MAP_A_TO_A
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_A_TO_A_SIZE [

	<generated>
	^ GL_PIXEL_MAP_A_TO_A_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_B_TO_B [

	<generated>
	^ GL_PIXEL_MAP_B_TO_B
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_B_TO_B_SIZE [

	<generated>
	^ GL_PIXEL_MAP_B_TO_B_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_G_TO_G [

	<generated>
	^ GL_PIXEL_MAP_G_TO_G
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_G_TO_G_SIZE [

	<generated>
	^ GL_PIXEL_MAP_G_TO_G_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_I_TO_A [

	<generated>
	^ GL_PIXEL_MAP_I_TO_A
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_I_TO_A_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_A_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_I_TO_B [

	<generated>
	^ GL_PIXEL_MAP_I_TO_B
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_I_TO_B_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_B_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_I_TO_G [

	<generated>
	^ GL_PIXEL_MAP_I_TO_G
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_I_TO_G_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_G_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_I_TO_I [

	<generated>
	^ GL_PIXEL_MAP_I_TO_I
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_I_TO_I_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_I_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_I_TO_R [

	<generated>
	^ GL_PIXEL_MAP_I_TO_R
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_I_TO_R_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_R_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_R_TO_R [

	<generated>
	^ GL_PIXEL_MAP_R_TO_R
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_R_TO_R_SIZE [

	<generated>
	^ GL_PIXEL_MAP_R_TO_R_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_S_TO_S [

	<generated>
	^ GL_PIXEL_MAP_S_TO_S
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MAP_S_TO_S_SIZE [

	<generated>
	^ GL_PIXEL_MAP_S_TO_S_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PIXEL_MODE_BIT [

	<generated>
	^ GL_PIXEL_MODE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POINT [

	<generated>
	^ GL_POINT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POINTS [

	<generated>
	^ GL_POINTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POINT_BIT [

	<generated>
	^ GL_POINT_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POINT_SIZE [

	<generated>
	^ GL_POINT_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POINT_SIZE_GRANULARITY [

	<generated>
	^ GL_POINT_SIZE_GRANULARITY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POINT_SIZE_RANGE [

	<generated>
	^ GL_POINT_SIZE_RANGE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POINT_SMOOTH [

	<generated>
	^ GL_POINT_SMOOTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POINT_SMOOTH_HINT [

	<generated>
	^ GL_POINT_SMOOTH_HINT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POINT_TOKEN [

	<generated>
	^ GL_POINT_TOKEN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POLYGON [

	<generated>
	^ GL_POLYGON
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POLYGON_BIT [

	<generated>
	^ GL_POLYGON_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POLYGON_MODE [

	<generated>
	^ GL_POLYGON_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POLYGON_SMOOTH [

	<generated>
	^ GL_POLYGON_SMOOTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POLYGON_SMOOTH_HINT [

	<generated>
	^ GL_POLYGON_SMOOTH_HINT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POLYGON_STIPPLE [

	<generated>
	^ GL_POLYGON_STIPPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POLYGON_STIPPLE_BIT [

	<generated>
	^ GL_POLYGON_STIPPLE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POLYGON_TOKEN [

	<generated>
	^ GL_POLYGON_TOKEN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> POSITION [

	<generated>
	^ GL_POSITION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PROJECTION [

	<generated>
	^ GL_PROJECTION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PROJECTION_MATRIX [

	<generated>
	^ GL_PROJECTION_MATRIX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> PROJECTION_STACK_DEPTH [

	<generated>
	^ GL_PROJECTION_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> Q [

	<generated>
	^ GL_Q
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> QUADRATIC_ATTENUATION [

	<generated>
	^ GL_QUADRATIC_ATTENUATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> QUADS [

	<generated>
	^ GL_QUADS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> QUAD_STRIP [

	<generated>
	^ GL_QUAD_STRIP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> R [

	<generated>
	^ GL_R
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> READ_BUFFER [

	<generated>
	^ GL_READ_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> RED [

	<generated>
	^ GL_RED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> RED_BIAS [

	<generated>
	^ GL_RED_BIAS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> RED_BITS [

	<generated>
	^ GL_RED_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> RED_SCALE [

	<generated>
	^ GL_RED_SCALE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> RENDER [

	<generated>
	^ GL_RENDER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> RENDERER [

	<generated>
	^ GL_RENDERER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> RENDER_MODE [

	<generated>
	^ GL_RENDER_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> REPEAT [

	<generated>
	^ GL_REPEAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> REPLACE [

	<generated>
	^ GL_REPLACE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> RETURN [

	<generated>
	^ GL_RETURN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> RGB [

	<generated>
	^ GL_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> RGBA [

	<generated>
	^ GL_RGBA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> RGBA_MODE [

	<generated>
	^ GL_RGBA_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> RIGHT [

	<generated>
	^ GL_RIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> S [

	<generated>
	^ GL_S
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SCISSOR_BIT [

	<generated>
	^ GL_SCISSOR_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SCISSOR_BOX [

	<generated>
	^ GL_SCISSOR_BOX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SCISSOR_TEST [

	<generated>
	^ GL_SCISSOR_TEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SELECT [

	<generated>
	^ GL_SELECT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SET [

	<generated>
	^ GL_SET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SHADE_MODEL [

	<generated>
	^ GL_SHADE_MODEL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SHININESS [

	<generated>
	^ GL_SHININESS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SHORT [

	<generated>
	^ GL_SHORT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SMOOTH [

	<generated>
	^ GL_SMOOTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SPECULAR [

	<generated>
	^ GL_SPECULAR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SPHERE_MAP [

	<generated>
	^ GL_SPHERE_MAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SPOT_CUTOFF [

	<generated>
	^ GL_SPOT_CUTOFF
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SPOT_DIRECTION [

	<generated>
	^ GL_SPOT_DIRECTION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SPOT_EXPONENT [

	<generated>
	^ GL_SPOT_EXPONENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SRC_ALPHA [

	<generated>
	^ GL_SRC_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SRC_ALPHA_SATURATE [

	<generated>
	^ GL_SRC_ALPHA_SATURATE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SRC_COLOR [

	<generated>
	^ GL_SRC_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STACK_OVERFLOW [

	<generated>
	^ GL_STACK_OVERFLOW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STACK_UNDERFLOW [

	<generated>
	^ GL_STACK_UNDERFLOW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL [

	<generated>
	^ GL_STENCIL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL_BITS [

	<generated>
	^ GL_STENCIL_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL_BUFFER_BIT [

	<generated>
	^ GL_STENCIL_BUFFER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL_CLEAR_VALUE [

	<generated>
	^ GL_STENCIL_CLEAR_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL_FAIL [

	<generated>
	^ GL_STENCIL_FAIL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL_FUNC [

	<generated>
	^ GL_STENCIL_FUNC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL_INDEX [

	<generated>
	^ GL_STENCIL_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL_PASS_DEPTH_FAIL [

	<generated>
	^ GL_STENCIL_PASS_DEPTH_FAIL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL_PASS_DEPTH_PASS [

	<generated>
	^ GL_STENCIL_PASS_DEPTH_PASS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL_REF [

	<generated>
	^ GL_STENCIL_REF
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL_TEST [

	<generated>
	^ GL_STENCIL_TEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL_VALUE_MASK [

	<generated>
	^ GL_STENCIL_VALUE_MASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STENCIL_WRITEMASK [

	<generated>
	^ GL_STENCIL_WRITEMASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> STEREO [

	<generated>
	^ GL_STEREO
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> SUBPIXEL_BITS [

	<generated>
	^ GL_SUBPIXEL_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> T [

	<generated>
	^ GL_T
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE [

	<generated>
	^ GL_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_1D [

	<generated>
	^ GL_TEXTURE_1D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_2D [

	<generated>
	^ GL_TEXTURE_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_BIT [

	<generated>
	^ GL_TEXTURE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_BORDER [

	<generated>
	^ GL_TEXTURE_BORDER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_BORDER_COLOR [

	<generated>
	^ GL_TEXTURE_BORDER_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_COMPONENTS [

	<generated>
	^ GL_TEXTURE_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_ENV [

	<generated>
	^ GL_TEXTURE_ENV
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_ENV_COLOR [

	<generated>
	^ GL_TEXTURE_ENV_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_ENV_MODE [

	<generated>
	^ GL_TEXTURE_ENV_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_GEN_MODE [

	<generated>
	^ GL_TEXTURE_GEN_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_GEN_Q [

	<generated>
	^ GL_TEXTURE_GEN_Q
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_GEN_R [

	<generated>
	^ GL_TEXTURE_GEN_R
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_GEN_S [

	<generated>
	^ GL_TEXTURE_GEN_S
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_GEN_T [

	<generated>
	^ GL_TEXTURE_GEN_T
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_HEIGHT [

	<generated>
	^ GL_TEXTURE_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_MAG_FILTER [

	<generated>
	^ GL_TEXTURE_MAG_FILTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_MATRIX [

	<generated>
	^ GL_TEXTURE_MATRIX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_MIN_FILTER [

	<generated>
	^ GL_TEXTURE_MIN_FILTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_STACK_DEPTH [

	<generated>
	^ GL_TEXTURE_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_WIDTH [

	<generated>
	^ GL_TEXTURE_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_WRAP_S [

	<generated>
	^ GL_TEXTURE_WRAP_S
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TEXTURE_WRAP_T [

	<generated>
	^ GL_TEXTURE_WRAP_T
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TRANSFORM_BIT [

	<generated>
	^ GL_TRANSFORM_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TRIANGLES [

	<generated>
	^ GL_TRIANGLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TRIANGLE_FAN [

	<generated>
	^ GL_TRIANGLE_FAN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TRIANGLE_STRIP [

	<generated>
	^ GL_TRIANGLE_STRIP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> TRUE [

	<generated>
	^ GL_TRUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> UNPACK_ALIGNMENT [

	<generated>
	^ GL_UNPACK_ALIGNMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> UNPACK_LSB_FIRST [

	<generated>
	^ GL_UNPACK_LSB_FIRST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> UNPACK_ROW_LENGTH [

	<generated>
	^ GL_UNPACK_ROW_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> UNPACK_SKIP_PIXELS [

	<generated>
	^ GL_UNPACK_SKIP_PIXELS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> UNPACK_SKIP_ROWS [

	<generated>
	^ GL_UNPACK_SKIP_ROWS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> UNPACK_SWAP_BYTES [

	<generated>
	^ GL_UNPACK_SWAP_BYTES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> UNSIGNED_BYTE [

	<generated>
	^ GL_UNSIGNED_BYTE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> UNSIGNED_INT [

	<generated>
	^ GL_UNSIGNED_INT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> UNSIGNED_SHORT [

	<generated>
	^ GL_UNSIGNED_SHORT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> VENDOR [

	<generated>
	^ GL_VENDOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> VERSION [

	<generated>
	^ GL_VERSION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> VIEWPORT [

	<generated>
	^ GL_VIEWPORT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> VIEWPORT_BIT [

	<generated>
	^ GL_VIEWPORT_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> XOR [

	<generated>
	^ GL_XOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ZERO [

	<generated>
	^ GL_ZERO
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ZOOM_X [

	<generated>
	^ GL_ZOOM_X
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ZOOM_Y [

	<generated>
	^ GL_ZOOM_Y
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> accum: op with: value [

	<generated>
	<apicall: void 'glAccum' (GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> alphaFunc: func with: ref [

	<generated>
	<apicall: void 'glAlphaFunc' (GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> begin: mode [

	<generated>
	<apicall: void 'glBegin' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> bitmap: width with: height with: xorig with: yorig with: xmove with: ymove with: bitmap [

	<generated>
	<apicall: void 'glBitmap' (GLsizei GLsizei GLfloat GLfloat GLfloat GLfloat GLubyte*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> blendFunc: sfactor with: dfactor [

	<generated>
	<apicall: void 'glBlendFunc' (GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> callList: list [

	<generated>
	<apicall: void 'glCallList' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> callLists: n with: type with: lists [

	<generated>
	<apicall: void 'glCallLists' (GLsizei GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> clear: mask [

	<generated>
	<apicall: void 'glClear' (GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> clearAccum: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glClearAccum' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> clearColor: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glClearColor' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> clearDepth: depth [

	<generated>
	<apicall: void 'glClearDepth' (GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> clearIndex: c [

	<generated>
	<apicall: void 'glClearIndex' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> clearStencil: s [

	<generated>
	<apicall: void 'glClearStencil' (GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> clipPlane: plane with: equation [

	<generated>
	<apicall: void 'glClipPlane' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3b: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3b' (GLbyte GLbyte GLbyte)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3bv: v [

	<generated>
	<apicall: void 'glColor3bv' (GLbyte*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3d: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3dv: v [

	<generated>
	<apicall: void 'glColor3dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3f: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3fv: v [

	<generated>
	<apicall: void 'glColor3fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3i: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3iv: v [

	<generated>
	<apicall: void 'glColor3iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3s: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3sv: v [

	<generated>
	<apicall: void 'glColor3sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3ub: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3ub' (GLubyte GLubyte GLubyte)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3ubv: v [

	<generated>
	<apicall: void 'glColor3ubv' (GLubyte*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3ui: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3ui' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3uiv: v [

	<generated>
	<apicall: void 'glColor3uiv' (GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3us: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3us' (GLushort GLushort GLushort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color3usv: v [

	<generated>
	<apicall: void 'glColor3usv' (GLushort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4b: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4b' (GLbyte GLbyte GLbyte GLbyte)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4bv: v [

	<generated>
	<apicall: void 'glColor4bv' (GLbyte*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4d: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4d' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4dv: v [

	<generated>
	<apicall: void 'glColor4dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4f: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4fv: v [

	<generated>
	<apicall: void 'glColor4fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4i: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4iv: v [

	<generated>
	<apicall: void 'glColor4iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4s: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4s' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4sv: v [

	<generated>
	<apicall: void 'glColor4sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4ub: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4ub' (GLubyte GLubyte GLubyte GLubyte)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4ubv: v [

	<generated>
	<apicall: void 'glColor4ubv' (GLubyte*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4ui: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4ui' (GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4uiv: v [

	<generated>
	<apicall: void 'glColor4uiv' (GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4us: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4us' (GLushort GLushort GLushort GLushort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> color4usv: v [

	<generated>
	<apicall: void 'glColor4usv' (GLushort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> colorMask: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColorMask' (GLboolean GLboolean GLboolean GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> colorMaterial: face with: mode [

	<generated>
	<apicall: void 'glColorMaterial' (GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> copyPixels: x with: y with: width with: height with: type [

	<generated>
	<apicall: void 'glCopyPixels' (GLint GLint GLsizei GLsizei GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> cullFace: mode [

	<generated>
	<apicall: void 'glCullFace' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> deleteLists: list with: range [

	<generated>
	<apicall: void 'glDeleteLists' (GLuint GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> depthFunc: func [

	<generated>
	<apicall: void 'glDepthFunc' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> depthMask: flag [

	<generated>
	<apicall: void 'glDepthMask' (GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> depthRange: n with: f [

	<generated>
	<apicall: void 'glDepthRange' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> disable: cap [

	<generated>
	<apicall: void 'glDisable' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> drawBuffer: buf [

	<generated>
	<apicall: void 'glDrawBuffer' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> drawPixels: width with: height with: format with: type with: pixels [

	<generated>
	<apicall: void 'glDrawPixels' (GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> edgeFlag: flag [

	<generated>
	<apicall: void 'glEdgeFlag' (GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> edgeFlagv: flag [

	<generated>
	<apicall: void 'glEdgeFlagv' (GLboolean*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> enable: cap [

	<generated>
	<apicall: void 'glEnable' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> end [

	<generated>
	<apicall: void 'glEnd' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> endList [

	<generated>
	<apicall: void 'glEndList' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> evalCoord1d: u [

	<generated>
	<apicall: void 'glEvalCoord1d' (GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> evalCoord1dv: u [

	<generated>
	<apicall: void 'glEvalCoord1dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> evalCoord1f: u [

	<generated>
	<apicall: void 'glEvalCoord1f' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> evalCoord1fv: u [

	<generated>
	<apicall: void 'glEvalCoord1fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> evalCoord2d: u with: v [

	<generated>
	<apicall: void 'glEvalCoord2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> evalCoord2dv: u [

	<generated>
	<apicall: void 'glEvalCoord2dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> evalCoord2f: u with: v [

	<generated>
	<apicall: void 'glEvalCoord2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> evalCoord2fv: u [

	<generated>
	<apicall: void 'glEvalCoord2fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> evalMesh1: mode with: i1 with: i2 [

	<generated>
	<apicall: void 'glEvalMesh1' (GLenum GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> evalMesh2: mode with: i1 with: i2 with: j1 with: j2 [

	<generated>
	<apicall: void 'glEvalMesh2' (GLenum GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> evalPoint1: i [

	<generated>
	<apicall: void 'glEvalPoint1' (GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> evalPoint2: i with: j [

	<generated>
	<apicall: void 'glEvalPoint2' (GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> feedbackBuffer: size with: type with: buffer [

	<generated>
	<apicall: void 'glFeedbackBuffer' (GLsizei GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> finish [

	<generated>
	<apicall: void 'glFinish' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> flush [

	<generated>
	<apicall: void 'glFlush' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> fogf: pname with: param [

	<generated>
	<apicall: void 'glFogf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> fogfv: pname with: params [

	<generated>
	<apicall: void 'glFogfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> fogi: pname with: param [

	<generated>
	<apicall: void 'glFogi' (GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> fogiv: pname with: params [

	<generated>
	<apicall: void 'glFogiv' (GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> frontFace: mode [

	<generated>
	<apicall: void 'glFrontFace' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> frustum: left with: right with: bottom with: top with: zNear with: zFar [

	<generated>
	<apicall: void 'glFrustum' (GLdouble GLdouble GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> genLists: range [

	<generated>
	<apicall: GLuint 'glGenLists' (GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getBooleanv: pname with: data [

	<generated>
	<apicall: void 'glGetBooleanv' (GLenum GLboolean*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getClipPlane: plane with: equation [

	<generated>
	<apicall: void 'glGetClipPlane' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getDoublev: pname with: data [

	<generated>
	<apicall: void 'glGetDoublev' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getError [

	<generated>
	<apicall: GLenum 'glGetError' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getFloatv: pname with: data [

	<generated>
	<apicall: void 'glGetFloatv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getIntegerv: pname with: data [

	<generated>
	<apicall: void 'glGetIntegerv' (GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getLightfv: light with: pname with: params [

	<generated>
	<apicall: void 'glGetLightfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getLightiv: light with: pname with: params [

	<generated>
	<apicall: void 'glGetLightiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getMapdv: target with: query with: v [

	<generated>
	<apicall: void 'glGetMapdv' (GLenum GLenum GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getMapfv: target with: query with: v [

	<generated>
	<apicall: void 'glGetMapfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getMapiv: target with: query with: v [

	<generated>
	<apicall: void 'glGetMapiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getMaterialfv: face with: pname with: params [

	<generated>
	<apicall: void 'glGetMaterialfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getMaterialiv: face with: pname with: params [

	<generated>
	<apicall: void 'glGetMaterialiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getPixelMapfv: map with: values [

	<generated>
	<apicall: void 'glGetPixelMapfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getPixelMapuiv: map with: values [

	<generated>
	<apicall: void 'glGetPixelMapuiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getPixelMapusv: map with: values [

	<generated>
	<apicall: void 'glGetPixelMapusv' (GLenum GLushort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getPolygonStipple: mask [

	<generated>
	<apicall: void 'glGetPolygonStipple' (GLubyte*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getString: name [

	<generated>
	<apicall: GLubyte* 'glGetString' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getTexEnvfv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexEnvfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getTexEnviv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexEnviv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getTexGendv: coord with: pname with: params [

	<generated>
	<apicall: void 'glGetTexGendv' (GLenum GLenum GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getTexGenfv: coord with: pname with: params [

	<generated>
	<apicall: void 'glGetTexGenfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getTexGeniv: coord with: pname with: params [

	<generated>
	<apicall: void 'glGetTexGeniv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getTexImage: target with: level with: format with: type with: pixels [

	<generated>
	<apicall: void 'glGetTexImage' (GLenum GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getTexLevelParameterfv: target with: level with: pname with: params [

	<generated>
	<apicall: void 'glGetTexLevelParameterfv' (GLenum GLint GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getTexLevelParameteriv: target with: level with: pname with: params [

	<generated>
	<apicall: void 'glGetTexLevelParameteriv' (GLenum GLint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getTexParameterfv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> getTexParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> hint: target with: mode [

	<generated>
	<apicall: void 'glHint' (GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> indexMask: mask [

	<generated>
	<apicall: void 'glIndexMask' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> indexd: c [

	<generated>
	<apicall: void 'glIndexd' (GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> indexdv: c [

	<generated>
	<apicall: void 'glIndexdv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> indexf: c [

	<generated>
	<apicall: void 'glIndexf' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> indexfv: c [

	<generated>
	<apicall: void 'glIndexfv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> indexi: c [

	<generated>
	<apicall: void 'glIndexi' (GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> indexiv: c [

	<generated>
	<apicall: void 'glIndexiv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> indexs: c [

	<generated>
	<apicall: void 'glIndexs' (GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> indexsv: c [

	<generated>
	<apicall: void 'glIndexsv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> initNames [

	<generated>
	<apicall: void 'glInitNames' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> isEnabled: cap [

	<generated>
	<apicall: GLboolean 'glIsEnabled' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> isList: list [

	<generated>
	<apicall: GLboolean 'glIsList' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> lightModelf: pname with: param [

	<generated>
	<apicall: void 'glLightModelf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> lightModelfv: pname with: params [

	<generated>
	<apicall: void 'glLightModelfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> lightModeli: pname with: param [

	<generated>
	<apicall: void 'glLightModeli' (GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> lightModeliv: pname with: params [

	<generated>
	<apicall: void 'glLightModeliv' (GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> lightf: light with: pname with: param [

	<generated>
	<apicall: void 'glLightf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> lightfv: light with: pname with: params [

	<generated>
	<apicall: void 'glLightfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> lighti: light with: pname with: param [

	<generated>
	<apicall: void 'glLighti' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> lightiv: light with: pname with: params [

	<generated>
	<apicall: void 'glLightiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> lineStipple: factor with: pattern [

	<generated>
	<apicall: void 'glLineStipple' (GLint GLushort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> lineWidth: width [

	<generated>
	<apicall: void 'glLineWidth' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> listBase: base [

	<generated>
	<apicall: void 'glListBase' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> loadIdentity [

	<generated>
	<apicall: void 'glLoadIdentity' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> loadMatrixd: m [

	<generated>
	<apicall: void 'glLoadMatrixd' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> loadMatrixf: m [

	<generated>
	<apicall: void 'glLoadMatrixf' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> loadName: name [

	<generated>
	<apicall: void 'glLoadName' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> logicOp: opcode [

	<generated>
	<apicall: void 'glLogicOp' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> map1d: target with: u1 with: u2 with: stride with: order with: points [

	<generated>
	<apicall: void 'glMap1d' (GLenum GLdouble GLdouble GLint GLint GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> map1f: target with: u1 with: u2 with: stride with: order with: points [

	<generated>
	<apicall: void 'glMap1f' (GLenum GLfloat GLfloat GLint GLint GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> map2d: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	<generated>
	<apicall: void 'glMap2d' (GLenum GLdouble GLdouble GLint GLint GLdouble GLdouble GLint GLint GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> map2f: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	<generated>
	<apicall: void 'glMap2f' (GLenum GLfloat GLfloat GLint GLint GLfloat GLfloat GLint GLint GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> mapGrid1d: un with: u1 with: u2 [

	<generated>
	<apicall: void 'glMapGrid1d' (GLint GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> mapGrid1f: un with: u1 with: u2 [

	<generated>
	<apicall: void 'glMapGrid1f' (GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> mapGrid2d: un with: u1 with: u2 with: vn with: v1 with: v2 [

	<generated>
	<apicall: void 'glMapGrid2d' (GLint GLdouble GLdouble GLint GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> mapGrid2f: un with: u1 with: u2 with: vn with: v1 with: v2 [

	<generated>
	<apicall: void 'glMapGrid2f' (GLint GLfloat GLfloat GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> materialf: face with: pname with: param [

	<generated>
	<apicall: void 'glMaterialf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> materialfv: face with: pname with: params [

	<generated>
	<apicall: void 'glMaterialfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> materiali: face with: pname with: param [

	<generated>
	<apicall: void 'glMateriali' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> materialiv: face with: pname with: params [

	<generated>
	<apicall: void 'glMaterialiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> matrixMode: mode [

	<generated>
	<apicall: void 'glMatrixMode' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> multMatrixd: m [

	<generated>
	<apicall: void 'glMultMatrixd' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> multMatrixf: m [

	<generated>
	<apicall: void 'glMultMatrixf' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> newList: list with: mode [

	<generated>
	<apicall: void 'glNewList' (GLuint GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> normal3b: nx with: ny with: nz [

	<generated>
	<apicall: void 'glNormal3b' (GLbyte GLbyte GLbyte)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> normal3bv: v [

	<generated>
	<apicall: void 'glNormal3bv' (GLbyte*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> normal3d: nx with: ny with: nz [

	<generated>
	<apicall: void 'glNormal3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> normal3dv: v [

	<generated>
	<apicall: void 'glNormal3dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> normal3f: nx with: ny with: nz [

	<generated>
	<apicall: void 'glNormal3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> normal3fv: v [

	<generated>
	<apicall: void 'glNormal3fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> normal3i: nx with: ny with: nz [

	<generated>
	<apicall: void 'glNormal3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> normal3iv: v [

	<generated>
	<apicall: void 'glNormal3iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> normal3s: nx with: ny with: nz [

	<generated>
	<apicall: void 'glNormal3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> normal3sv: v [

	<generated>
	<apicall: void 'glNormal3sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> ortho: left with: right with: bottom with: top with: zNear with: zFar [

	<generated>
	<apicall: void 'glOrtho' (GLdouble GLdouble GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> passThrough: token [

	<generated>
	<apicall: void 'glPassThrough' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> pixelMapfv: map with: mapsize with: values [

	<generated>
	<apicall: void 'glPixelMapfv' (GLenum GLsizei GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> pixelMapuiv: map with: mapsize with: values [

	<generated>
	<apicall: void 'glPixelMapuiv' (GLenum GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> pixelMapusv: map with: mapsize with: values [

	<generated>
	<apicall: void 'glPixelMapusv' (GLenum GLsizei GLushort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> pixelStoref: pname with: param [

	<generated>
	<apicall: void 'glPixelStoref' (GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> pixelStorei: pname with: param [

	<generated>
	<apicall: void 'glPixelStorei' (GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> pixelTransferf: pname with: param [

	<generated>
	<apicall: void 'glPixelTransferf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> pixelTransferi: pname with: param [

	<generated>
	<apicall: void 'glPixelTransferi' (GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> pixelZoom: xfactor with: yfactor [

	<generated>
	<apicall: void 'glPixelZoom' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> pointSize: size [

	<generated>
	<apicall: void 'glPointSize' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> polygonMode: face with: mode [

	<generated>
	<apicall: void 'glPolygonMode' (GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> polygonStipple: mask [

	<generated>
	<apicall: void 'glPolygonStipple' (GLubyte*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> popAttrib [

	<generated>
	<apicall: void 'glPopAttrib' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> popMatrix [

	<generated>
	<apicall: void 'glPopMatrix' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> popName [

	<generated>
	<apicall: void 'glPopName' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> pushAttrib: mask [

	<generated>
	<apicall: void 'glPushAttrib' (GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> pushMatrix [

	<generated>
	<apicall: void 'glPushMatrix' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> pushName: name [

	<generated>
	<apicall: void 'glPushName' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos2d: x with: y [

	<generated>
	<apicall: void 'glRasterPos2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos2dv: v [

	<generated>
	<apicall: void 'glRasterPos2dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos2f: x with: y [

	<generated>
	<apicall: void 'glRasterPos2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos2fv: v [

	<generated>
	<apicall: void 'glRasterPos2fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos2i: x with: y [

	<generated>
	<apicall: void 'glRasterPos2i' (GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos2iv: v [

	<generated>
	<apicall: void 'glRasterPos2iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos2s: x with: y [

	<generated>
	<apicall: void 'glRasterPos2s' (GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos2sv: v [

	<generated>
	<apicall: void 'glRasterPos2sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos3d: x with: y with: z [

	<generated>
	<apicall: void 'glRasterPos3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos3dv: v [

	<generated>
	<apicall: void 'glRasterPos3dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos3f: x with: y with: z [

	<generated>
	<apicall: void 'glRasterPos3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos3fv: v [

	<generated>
	<apicall: void 'glRasterPos3fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos3i: x with: y with: z [

	<generated>
	<apicall: void 'glRasterPos3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos3iv: v [

	<generated>
	<apicall: void 'glRasterPos3iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos3s: x with: y with: z [

	<generated>
	<apicall: void 'glRasterPos3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos3sv: v [

	<generated>
	<apicall: void 'glRasterPos3sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos4d: x with: y with: z with: w [

	<generated>
	<apicall: void 'glRasterPos4d' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos4dv: v [

	<generated>
	<apicall: void 'glRasterPos4dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos4f: x with: y with: z with: w [

	<generated>
	<apicall: void 'glRasterPos4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos4fv: v [

	<generated>
	<apicall: void 'glRasterPos4fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos4i: x with: y with: z with: w [

	<generated>
	<apicall: void 'glRasterPos4i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos4iv: v [

	<generated>
	<apicall: void 'glRasterPos4iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos4s: x with: y with: z with: w [

	<generated>
	<apicall: void 'glRasterPos4s' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rasterPos4sv: v [

	<generated>
	<apicall: void 'glRasterPos4sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> readBuffer: src [

	<generated>
	<apicall: void 'glReadBuffer' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> readPixels: x with: y with: width with: height with: format with: type with: pixels [

	<generated>
	<apicall: void 'glReadPixels' (GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rectd: x1 with: y1 with: x2 with: y2 [

	<generated>
	<apicall: void 'glRectd' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rectdv: v1 with: v2 [

	<generated>
	<apicall: void 'glRectdv' (GLdouble* GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rectf: x1 with: y1 with: x2 with: y2 [

	<generated>
	<apicall: void 'glRectf' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rectfv: v1 with: v2 [

	<generated>
	<apicall: void 'glRectfv' (GLfloat* GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> recti: x1 with: y1 with: x2 with: y2 [

	<generated>
	<apicall: void 'glRecti' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rectiv: v1 with: v2 [

	<generated>
	<apicall: void 'glRectiv' (GLint* GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rects: x1 with: y1 with: x2 with: y2 [

	<generated>
	<apicall: void 'glRects' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rectsv: v1 with: v2 [

	<generated>
	<apicall: void 'glRectsv' (GLshort* GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> renderMode: mode [

	<generated>
	<apicall: GLint 'glRenderMode' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rotated: angle with: x with: y with: z [

	<generated>
	<apicall: void 'glRotated' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> rotatef: angle with: x with: y with: z [

	<generated>
	<apicall: void 'glRotatef' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> scaled: x with: y with: z [

	<generated>
	<apicall: void 'glScaled' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> scalef: x with: y with: z [

	<generated>
	<apicall: void 'glScalef' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> scissor: x with: y with: width with: height [

	<generated>
	<apicall: void 'glScissor' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> selectBuffer: size with: buffer [

	<generated>
	<apicall: void 'glSelectBuffer' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> shadeModel: mode [

	<generated>
	<apicall: void 'glShadeModel' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> stencilFunc: func with: ref with: mask [

	<generated>
	<apicall: void 'glStencilFunc' (GLenum GLint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> stencilMask: mask [

	<generated>
	<apicall: void 'glStencilMask' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> stencilOp: fail with: zfail with: zpass [

	<generated>
	<apicall: void 'glStencilOp' (GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord1d: s [

	<generated>
	<apicall: void 'glTexCoord1d' (GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord1dv: v [

	<generated>
	<apicall: void 'glTexCoord1dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord1f: s [

	<generated>
	<apicall: void 'glTexCoord1f' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord1fv: v [

	<generated>
	<apicall: void 'glTexCoord1fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord1i: s [

	<generated>
	<apicall: void 'glTexCoord1i' (GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord1iv: v [

	<generated>
	<apicall: void 'glTexCoord1iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord1s: s [

	<generated>
	<apicall: void 'glTexCoord1s' (GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord1sv: v [

	<generated>
	<apicall: void 'glTexCoord1sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord2d: s with: t [

	<generated>
	<apicall: void 'glTexCoord2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord2dv: v [

	<generated>
	<apicall: void 'glTexCoord2dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord2f: s with: t [

	<generated>
	<apicall: void 'glTexCoord2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord2fv: v [

	<generated>
	<apicall: void 'glTexCoord2fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord2i: s with: t [

	<generated>
	<apicall: void 'glTexCoord2i' (GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord2iv: v [

	<generated>
	<apicall: void 'glTexCoord2iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord2s: s with: t [

	<generated>
	<apicall: void 'glTexCoord2s' (GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord2sv: v [

	<generated>
	<apicall: void 'glTexCoord2sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord3d: s with: t with: r [

	<generated>
	<apicall: void 'glTexCoord3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord3dv: v [

	<generated>
	<apicall: void 'glTexCoord3dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord3f: s with: t with: r [

	<generated>
	<apicall: void 'glTexCoord3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord3fv: v [

	<generated>
	<apicall: void 'glTexCoord3fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord3i: s with: t with: r [

	<generated>
	<apicall: void 'glTexCoord3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord3iv: v [

	<generated>
	<apicall: void 'glTexCoord3iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord3s: s with: t with: r [

	<generated>
	<apicall: void 'glTexCoord3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord3sv: v [

	<generated>
	<apicall: void 'glTexCoord3sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord4d: s with: t with: r with: q [

	<generated>
	<apicall: void 'glTexCoord4d' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord4dv: v [

	<generated>
	<apicall: void 'glTexCoord4dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord4f: s with: t with: r with: q [

	<generated>
	<apicall: void 'glTexCoord4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord4fv: v [

	<generated>
	<apicall: void 'glTexCoord4fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord4i: s with: t with: r with: q [

	<generated>
	<apicall: void 'glTexCoord4i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord4iv: v [

	<generated>
	<apicall: void 'glTexCoord4iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord4s: s with: t with: r with: q [

	<generated>
	<apicall: void 'glTexCoord4s' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texCoord4sv: v [

	<generated>
	<apicall: void 'glTexCoord4sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texEnvf: target with: pname with: param [

	<generated>
	<apicall: void 'glTexEnvf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texEnvfv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexEnvfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texEnvi: target with: pname with: param [

	<generated>
	<apicall: void 'glTexEnvi' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texEnviv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexEnviv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texGend: coord with: pname with: param [

	<generated>
	<apicall: void 'glTexGend' (GLenum GLenum GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texGendv: coord with: pname with: params [

	<generated>
	<apicall: void 'glTexGendv' (GLenum GLenum GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texGenf: coord with: pname with: param [

	<generated>
	<apicall: void 'glTexGenf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texGenfv: coord with: pname with: params [

	<generated>
	<apicall: void 'glTexGenfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texGeni: coord with: pname with: param [

	<generated>
	<apicall: void 'glTexGeni' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texGeniv: coord with: pname with: params [

	<generated>
	<apicall: void 'glTexGeniv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texImage1D: target with: level with: internalformat with: width with: border with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexImage1D' (GLenum GLint GLint GLsizei GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texImage2D: target with: level with: internalformat with: width with: height with: border with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexImage2D' (GLenum GLint GLint GLsizei GLsizei GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texParameterf: target with: pname with: param [

	<generated>
	<apicall: void 'glTexParameterf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texParameterfv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texParameteri: target with: pname with: param [

	<generated>
	<apicall: void 'glTexParameteri' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> texParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> translated: x with: y with: z [

	<generated>
	<apicall: void 'glTranslated' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> translatef: x with: y with: z [

	<generated>
	<apicall: void 'glTranslatef' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex2d: x with: y [

	<generated>
	<apicall: void 'glVertex2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex2dv: v [

	<generated>
	<apicall: void 'glVertex2dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex2f: x with: y [

	<generated>
	<apicall: void 'glVertex2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex2fv: v [

	<generated>
	<apicall: void 'glVertex2fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex2i: x with: y [

	<generated>
	<apicall: void 'glVertex2i' (GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex2iv: v [

	<generated>
	<apicall: void 'glVertex2iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex2s: x with: y [

	<generated>
	<apicall: void 'glVertex2s' (GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex2sv: v [

	<generated>
	<apicall: void 'glVertex2sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex3d: x with: y with: z [

	<generated>
	<apicall: void 'glVertex3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex3dv: v [

	<generated>
	<apicall: void 'glVertex3dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex3f: x with: y with: z [

	<generated>
	<apicall: void 'glVertex3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex3fv: v [

	<generated>
	<apicall: void 'glVertex3fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex3i: x with: y with: z [

	<generated>
	<apicall: void 'glVertex3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex3iv: v [

	<generated>
	<apicall: void 'glVertex3iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex3s: x with: y with: z [

	<generated>
	<apicall: void 'glVertex3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex3sv: v [

	<generated>
	<apicall: void 'glVertex3sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex4d: x with: y with: z with: w [

	<generated>
	<apicall: void 'glVertex4d' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex4dv: v [

	<generated>
	<apicall: void 'glVertex4dv' (GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex4f: x with: y with: z with: w [

	<generated>
	<apicall: void 'glVertex4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex4fv: v [

	<generated>
	<apicall: void 'glVertex4fv' (GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex4i: x with: y with: z with: w [

	<generated>
	<apicall: void 'glVertex4i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex4iv: v [

	<generated>
	<apicall: void 'glVertex4iv' (GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex4s: x with: y with: z with: w [

	<generated>
	<apicall: void 'glVertex4s' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> vertex4sv: v [

	<generated>
	<apicall: void 'glVertex4sv' (GLshort*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL10 >> viewport: x with: y with: width with: height [

	<generated>
	<apicall: void 'glViewport' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]
