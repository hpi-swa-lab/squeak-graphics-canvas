Class {
	#name : #'GL1_0',
	#superclass : #OpenGL,
	#instVars : [
		'isCore'
	],
	#category : #'OpenGL-API-GL'
}

{ #category : #accessing }
GL1_0 class >> api [

	^ 'gl'
]

{ #category : #accessing }
GL1_0 class >> defaultProfile [

	^ #core
]

{ #category : #accessing }
GL1_0 class >> majorVersion [

	^ 1
]

{ #category : #accessing }
GL1_0 class >> minorVersion [

	^ 0
]

{ #category : #accessing }
GL1_0 class >> versionNumber [

	^ 10
]

{ #category : #'constants - required' }
GL1_0 >> ACCUM [

	<generated>
	^ GL_ACCUM
]

{ #category : #'constants - required' }
GL1_0 >> ACCUM_ALPHA_BITS [

	<generated>
	^ GL_ACCUM_ALPHA_BITS
]

{ #category : #'constants - required' }
GL1_0 >> ACCUM_BLUE_BITS [

	<generated>
	^ GL_ACCUM_BLUE_BITS
]

{ #category : #'constants - required' }
GL1_0 >> ACCUM_BUFFER_BIT [

	<generated>
	^ GL_ACCUM_BUFFER_BIT
]

{ #category : #'constants - required' }
GL1_0 >> ACCUM_CLEAR_VALUE [

	<generated>
	^ GL_ACCUM_CLEAR_VALUE
]

{ #category : #'constants - required' }
GL1_0 >> ACCUM_GREEN_BITS [

	<generated>
	^ GL_ACCUM_GREEN_BITS
]

{ #category : #'constants - required' }
GL1_0 >> ACCUM_RED_BITS [

	<generated>
	^ GL_ACCUM_RED_BITS
]

{ #category : #'constants - required' }
GL1_0 >> ADD [

	<generated>
	^ GL_ADD
]

{ #category : #'constants - required' }
GL1_0 >> ALL_ATTRIB_BITS [

	<generated>
	^ GL_ALL_ATTRIB_BITS
]

{ #category : #'constants - required' }
GL1_0 >> ALPHA [

	<generated>
	^ GL_ALPHA
]

{ #category : #'constants - required' }
GL1_0 >> ALPHA_BIAS [

	<generated>
	^ GL_ALPHA_BIAS
]

{ #category : #'constants - required' }
GL1_0 >> ALPHA_BITS [

	<generated>
	^ GL_ALPHA_BITS
]

{ #category : #'constants - required' }
GL1_0 >> ALPHA_SCALE [

	<generated>
	^ GL_ALPHA_SCALE
]

{ #category : #'constants - required' }
GL1_0 >> ALPHA_TEST [

	<generated>
	^ GL_ALPHA_TEST
]

{ #category : #'constants - required' }
GL1_0 >> ALPHA_TEST_FUNC [

	<generated>
	^ GL_ALPHA_TEST_FUNC
]

{ #category : #'constants - required' }
GL1_0 >> ALPHA_TEST_REF [

	<generated>
	^ GL_ALPHA_TEST_REF
]

{ #category : #'constants - required' }
GL1_0 >> ALWAYS [

	<generated>
	^ GL_ALWAYS
]

{ #category : #'constants - required' }
GL1_0 >> AMBIENT [

	<generated>
	^ GL_AMBIENT
]

{ #category : #'constants - required' }
GL1_0 >> AMBIENT_AND_DIFFUSE [

	<generated>
	^ GL_AMBIENT_AND_DIFFUSE
]

{ #category : #'constants - required' }
GL1_0 >> AND [

	<generated>
	^ GL_AND
]

{ #category : #'constants - required' }
GL1_0 >> AND_INVERTED [

	<generated>
	^ GL_AND_INVERTED
]

{ #category : #'constants - required' }
GL1_0 >> AND_REVERSE [

	<generated>
	^ GL_AND_REVERSE
]

{ #category : #'constants - required' }
GL1_0 >> ATTRIB_STACK_DEPTH [

	<generated>
	^ GL_ATTRIB_STACK_DEPTH
]

{ #category : #'constants - required' }
GL1_0 >> AUTO_NORMAL [

	<generated>
	^ GL_AUTO_NORMAL
]

{ #category : #'constants - required' }
GL1_0 >> AUX0 [

	<generated>
	^ GL_AUX0
]

{ #category : #'constants - required' }
GL1_0 >> AUX1 [

	<generated>
	^ GL_AUX1
]

{ #category : #'constants - required' }
GL1_0 >> AUX2 [

	<generated>
	^ GL_AUX2
]

{ #category : #'constants - required' }
GL1_0 >> AUX3 [

	<generated>
	^ GL_AUX3
]

{ #category : #'constants - required' }
GL1_0 >> AUX_BUFFERS [

	<generated>
	^ GL_AUX_BUFFERS
]

{ #category : #'constants - required' }
GL1_0 >> BACK [

	<generated>
	^ GL_BACK
]

{ #category : #'constants - required' }
GL1_0 >> BACK_LEFT [

	<generated>
	^ GL_BACK_LEFT
]

{ #category : #'constants - required' }
GL1_0 >> BACK_RIGHT [

	<generated>
	^ GL_BACK_RIGHT
]

{ #category : #'constants - required' }
GL1_0 >> BITMAP [

	<generated>
	^ GL_BITMAP
]

{ #category : #'constants - required' }
GL1_0 >> BITMAP_TOKEN [

	<generated>
	^ GL_BITMAP_TOKEN
]

{ #category : #'constants - required' }
GL1_0 >> BLEND [

	<generated>
	^ GL_BLEND
]

{ #category : #'constants - required' }
GL1_0 >> BLEND_DST [

	<generated>
	^ GL_BLEND_DST
]

{ #category : #'constants - required' }
GL1_0 >> BLEND_SRC [

	<generated>
	^ GL_BLEND_SRC
]

{ #category : #'constants - required' }
GL1_0 >> BLUE [

	<generated>
	^ GL_BLUE
]

{ #category : #'constants - required' }
GL1_0 >> BLUE_BIAS [

	<generated>
	^ GL_BLUE_BIAS
]

{ #category : #'constants - required' }
GL1_0 >> BLUE_BITS [

	<generated>
	^ GL_BLUE_BITS
]

{ #category : #'constants - required' }
GL1_0 >> BLUE_SCALE [

	<generated>
	^ GL_BLUE_SCALE
]

{ #category : #'constants - required' }
GL1_0 >> BYTE [

	<generated>
	^ GL_BYTE
]

{ #category : #'constants - required' }
GL1_0 >> CCW [

	<generated>
	^ GL_CCW
]

{ #category : #'constants - required' }
GL1_0 >> CLAMP [

	<generated>
	^ GL_CLAMP
]

{ #category : #'constants - required' }
GL1_0 >> CLEAR [

	<generated>
	^ GL_CLEAR
]

{ #category : #'constants - required' }
GL1_0 >> CLIP_PLANE0 [

	<generated>
	^ GL_CLIP_PLANE0
]

{ #category : #'constants - required' }
GL1_0 >> CLIP_PLANE1 [

	<generated>
	^ GL_CLIP_PLANE1
]

{ #category : #'constants - required' }
GL1_0 >> CLIP_PLANE2 [

	<generated>
	^ GL_CLIP_PLANE2
]

{ #category : #'constants - required' }
GL1_0 >> CLIP_PLANE3 [

	<generated>
	^ GL_CLIP_PLANE3
]

{ #category : #'constants - required' }
GL1_0 >> CLIP_PLANE4 [

	<generated>
	^ GL_CLIP_PLANE4
]

{ #category : #'constants - required' }
GL1_0 >> CLIP_PLANE5 [

	<generated>
	^ GL_CLIP_PLANE5
]

{ #category : #'constants - required' }
GL1_0 >> COEFF [

	<generated>
	^ GL_COEFF
]

{ #category : #'constants - required' }
GL1_0 >> COLOR [

	<generated>
	^ GL_COLOR
]

{ #category : #'constants - required' }
GL1_0 >> COLOR_BUFFER_BIT [

	<generated>
	^ GL_COLOR_BUFFER_BIT
]

{ #category : #'constants - required' }
GL1_0 >> COLOR_CLEAR_VALUE [

	<generated>
	^ GL_COLOR_CLEAR_VALUE
]

{ #category : #'constants - required' }
GL1_0 >> COLOR_INDEX [

	<generated>
	^ GL_COLOR_INDEX
]

{ #category : #'constants - required' }
GL1_0 >> COLOR_INDEXES [

	<generated>
	^ GL_COLOR_INDEXES
]

{ #category : #'constants - required' }
GL1_0 >> COLOR_MATERIAL [

	<generated>
	^ GL_COLOR_MATERIAL
]

{ #category : #'constants - required' }
GL1_0 >> COLOR_MATERIAL_FACE [

	<generated>
	^ GL_COLOR_MATERIAL_FACE
]

{ #category : #'constants - required' }
GL1_0 >> COLOR_MATERIAL_PARAMETER [

	<generated>
	^ GL_COLOR_MATERIAL_PARAMETER
]

{ #category : #'constants - required' }
GL1_0 >> COLOR_WRITEMASK [

	<generated>
	^ GL_COLOR_WRITEMASK
]

{ #category : #'constants - required' }
GL1_0 >> COMPILE [

	<generated>
	^ GL_COMPILE
]

{ #category : #'constants - required' }
GL1_0 >> COMPILE_AND_EXECUTE [

	<generated>
	^ GL_COMPILE_AND_EXECUTE
]

{ #category : #'constants - required' }
GL1_0 >> CONSTANT_ATTENUATION [

	<generated>
	^ GL_CONSTANT_ATTENUATION
]

{ #category : #'constants - required' }
GL1_0 >> COPY [

	<generated>
	^ GL_COPY
]

{ #category : #'constants - required' }
GL1_0 >> COPY_INVERTED [

	<generated>
	^ GL_COPY_INVERTED
]

{ #category : #'constants - required' }
GL1_0 >> COPY_PIXEL_TOKEN [

	<generated>
	^ GL_COPY_PIXEL_TOKEN
]

{ #category : #'constants - required' }
GL1_0 >> CULL_FACE [

	<generated>
	^ GL_CULL_FACE
]

{ #category : #'constants - required' }
GL1_0 >> CULL_FACE_MODE [

	<generated>
	^ GL_CULL_FACE_MODE
]

{ #category : #'constants - required' }
GL1_0 >> CURRENT_BIT [

	<generated>
	^ GL_CURRENT_BIT
]

{ #category : #'constants - required' }
GL1_0 >> CURRENT_COLOR [

	<generated>
	^ GL_CURRENT_COLOR
]

{ #category : #'constants - required' }
GL1_0 >> CURRENT_INDEX [

	<generated>
	^ GL_CURRENT_INDEX
]

{ #category : #'constants - required' }
GL1_0 >> CURRENT_NORMAL [

	<generated>
	^ GL_CURRENT_NORMAL
]

{ #category : #'constants - required' }
GL1_0 >> CURRENT_RASTER_COLOR [

	<generated>
	^ GL_CURRENT_RASTER_COLOR
]

{ #category : #'constants - required' }
GL1_0 >> CURRENT_RASTER_DISTANCE [

	<generated>
	^ GL_CURRENT_RASTER_DISTANCE
]

{ #category : #'constants - required' }
GL1_0 >> CURRENT_RASTER_INDEX [

	<generated>
	^ GL_CURRENT_RASTER_INDEX
]

{ #category : #'constants - required' }
GL1_0 >> CURRENT_RASTER_POSITION [

	<generated>
	^ GL_CURRENT_RASTER_POSITION
]

{ #category : #'constants - required' }
GL1_0 >> CURRENT_RASTER_POSITION_VALID [

	<generated>
	^ GL_CURRENT_RASTER_POSITION_VALID
]

{ #category : #'constants - required' }
GL1_0 >> CURRENT_RASTER_TEXTURE_COORDS [

	<generated>
	^ GL_CURRENT_RASTER_TEXTURE_COORDS
]

{ #category : #'constants - required' }
GL1_0 >> CURRENT_TEXTURE_COORDS [

	<generated>
	^ GL_CURRENT_TEXTURE_COORDS
]

{ #category : #'constants - required' }
GL1_0 >> CW [

	<generated>
	^ GL_CW
]

{ #category : #'constants - required' }
GL1_0 >> DECAL [

	<generated>
	^ GL_DECAL
]

{ #category : #'constants - required' }
GL1_0 >> DECR [

	<generated>
	^ GL_DECR
]

{ #category : #'constants - required' }
GL1_0 >> DEPTH [

	<generated>
	^ GL_DEPTH
]

{ #category : #'constants - required' }
GL1_0 >> DEPTH_BIAS [

	<generated>
	^ GL_DEPTH_BIAS
]

{ #category : #'constants - required' }
GL1_0 >> DEPTH_BITS [

	<generated>
	^ GL_DEPTH_BITS
]

{ #category : #'constants - required' }
GL1_0 >> DEPTH_BUFFER_BIT [

	<generated>
	^ GL_DEPTH_BUFFER_BIT
]

{ #category : #'constants - required' }
GL1_0 >> DEPTH_CLEAR_VALUE [

	<generated>
	^ GL_DEPTH_CLEAR_VALUE
]

{ #category : #'constants - required' }
GL1_0 >> DEPTH_COMPONENT [

	<generated>
	^ GL_DEPTH_COMPONENT
]

{ #category : #'constants - required' }
GL1_0 >> DEPTH_FUNC [

	<generated>
	^ GL_DEPTH_FUNC
]

{ #category : #'constants - required' }
GL1_0 >> DEPTH_RANGE [

	<generated>
	^ GL_DEPTH_RANGE
]

{ #category : #'constants - required' }
GL1_0 >> DEPTH_SCALE [

	<generated>
	^ GL_DEPTH_SCALE
]

{ #category : #'constants - required' }
GL1_0 >> DEPTH_TEST [

	<generated>
	^ GL_DEPTH_TEST
]

{ #category : #'constants - required' }
GL1_0 >> DEPTH_WRITEMASK [

	<generated>
	^ GL_DEPTH_WRITEMASK
]

{ #category : #'constants - required' }
GL1_0 >> DIFFUSE [

	<generated>
	^ GL_DIFFUSE
]

{ #category : #'constants - required' }
GL1_0 >> DITHER [

	<generated>
	^ GL_DITHER
]

{ #category : #'constants - required' }
GL1_0 >> DOMAIN [

	<generated>
	^ GL_DOMAIN
]

{ #category : #'constants - required' }
GL1_0 >> DONT_CARE [

	<generated>
	^ GL_DONT_CARE
]

{ #category : #'constants - required' }
GL1_0 >> DOUBLEBUFFER [

	<generated>
	^ GL_DOUBLEBUFFER
]

{ #category : #'constants - required' }
GL1_0 >> DRAW_BUFFER [

	<generated>
	^ GL_DRAW_BUFFER
]

{ #category : #'constants - required' }
GL1_0 >> DRAW_PIXEL_TOKEN [

	<generated>
	^ GL_DRAW_PIXEL_TOKEN
]

{ #category : #'constants - required' }
GL1_0 >> DST_ALPHA [

	<generated>
	^ GL_DST_ALPHA
]

{ #category : #'constants - required' }
GL1_0 >> DST_COLOR [

	<generated>
	^ GL_DST_COLOR
]

{ #category : #'constants - required' }
GL1_0 >> EDGE_FLAG [

	<generated>
	^ GL_EDGE_FLAG
]

{ #category : #'constants - required' }
GL1_0 >> EMISSION [

	<generated>
	^ GL_EMISSION
]

{ #category : #'constants - required' }
GL1_0 >> ENABLE_BIT [

	<generated>
	^ GL_ENABLE_BIT
]

{ #category : #'constants - required' }
GL1_0 >> EQUAL [

	<generated>
	^ GL_EQUAL
]

{ #category : #'constants - required' }
GL1_0 >> EQUIV [

	<generated>
	^ GL_EQUIV
]

{ #category : #'constants - required' }
GL1_0 >> EVAL_BIT [

	<generated>
	^ GL_EVAL_BIT
]

{ #category : #'constants - required' }
GL1_0 >> EXP [

	<generated>
	^ GL_EXP
]

{ #category : #'constants - required' }
GL1_0 >> EXP2 [

	<generated>
	^ GL_EXP2
]

{ #category : #'constants - required' }
GL1_0 >> EXTENSIONS [

	<generated>
	^ GL_EXTENSIONS
]

{ #category : #'constants - required' }
GL1_0 >> EYE_LINEAR [

	<generated>
	^ GL_EYE_LINEAR
]

{ #category : #'constants - required' }
GL1_0 >> EYE_PLANE [

	<generated>
	^ GL_EYE_PLANE
]

{ #category : #'constants - required' }
GL1_0 >> FALSE [

	<generated>
	^ GL_FALSE
]

{ #category : #'constants - required' }
GL1_0 >> FASTEST [

	<generated>
	^ GL_FASTEST
]

{ #category : #'constants - required' }
GL1_0 >> FEEDBACK [

	<generated>
	^ GL_FEEDBACK
]

{ #category : #'constants - required' }
GL1_0 >> FILL [

	<generated>
	^ GL_FILL
]

{ #category : #'constants - required' }
GL1_0 >> FLAT [

	<generated>
	^ GL_FLAT
]

{ #category : #'constants - required' }
GL1_0 >> FLOAT [

	<generated>
	^ GL_FLOAT
]

{ #category : #'constants - required' }
GL1_0 >> FOG [

	<generated>
	^ GL_FOG
]

{ #category : #'constants - required' }
GL1_0 >> FOG_BIT [

	<generated>
	^ GL_FOG_BIT
]

{ #category : #'constants - required' }
GL1_0 >> FOG_COLOR [

	<generated>
	^ GL_FOG_COLOR
]

{ #category : #'constants - required' }
GL1_0 >> FOG_DENSITY [

	<generated>
	^ GL_FOG_DENSITY
]

{ #category : #'constants - required' }
GL1_0 >> FOG_END [

	<generated>
	^ GL_FOG_END
]

{ #category : #'constants - required' }
GL1_0 >> FOG_HINT [

	<generated>
	^ GL_FOG_HINT
]

{ #category : #'constants - required' }
GL1_0 >> FOG_INDEX [

	<generated>
	^ GL_FOG_INDEX
]

{ #category : #'constants - required' }
GL1_0 >> FOG_MODE [

	<generated>
	^ GL_FOG_MODE
]

{ #category : #'constants - required' }
GL1_0 >> FOG_START [

	<generated>
	^ GL_FOG_START
]

{ #category : #'constants - required' }
GL1_0 >> FRONT [

	<generated>
	^ GL_FRONT
]

{ #category : #'constants - required' }
GL1_0 >> FRONT_AND_BACK [

	<generated>
	^ GL_FRONT_AND_BACK
]

{ #category : #'constants - required' }
GL1_0 >> FRONT_FACE [

	<generated>
	^ GL_FRONT_FACE
]

{ #category : #'constants - required' }
GL1_0 >> FRONT_LEFT [

	<generated>
	^ GL_FRONT_LEFT
]

{ #category : #'constants - required' }
GL1_0 >> FRONT_RIGHT [

	<generated>
	^ GL_FRONT_RIGHT
]

{ #category : #'constants - required' }
GL1_0 >> GEQUAL [

	<generated>
	^ GL_GEQUAL
]

{ #category : #'constants - required' }
GL1_0 >> GL_2D [

	<generated>
	^ GL_2D
]

{ #category : #'constants - required' }
GL1_0 >> GL_2_BYTES [

	<generated>
	^ GL_2_BYTES
]

{ #category : #'constants - required' }
GL1_0 >> GL_3D [

	<generated>
	^ GL_3D
]

{ #category : #'constants - required' }
GL1_0 >> GL_3D_COLOR [

	<generated>
	^ GL_3D_COLOR
]

{ #category : #'constants - required' }
GL1_0 >> GL_3D_COLOR_TEXTURE [

	<generated>
	^ GL_3D_COLOR_TEXTURE
]

{ #category : #'constants - required' }
GL1_0 >> GL_3_BYTES [

	<generated>
	^ GL_3_BYTES
]

{ #category : #'constants - required' }
GL1_0 >> GL_4D_COLOR_TEXTURE [

	<generated>
	^ GL_4D_COLOR_TEXTURE
]

{ #category : #'constants - required' }
GL1_0 >> GL_4_BYTES [

	<generated>
	^ GL_4_BYTES
]

{ #category : #'constants - required' }
GL1_0 >> GREATER [

	<generated>
	^ GL_GREATER
]

{ #category : #'constants - required' }
GL1_0 >> GREEN [

	<generated>
	^ GL_GREEN
]

{ #category : #'constants - required' }
GL1_0 >> GREEN_BIAS [

	<generated>
	^ GL_GREEN_BIAS
]

{ #category : #'constants - required' }
GL1_0 >> GREEN_BITS [

	<generated>
	^ GL_GREEN_BITS
]

{ #category : #'constants - required' }
GL1_0 >> GREEN_SCALE [

	<generated>
	^ GL_GREEN_SCALE
]

{ #category : #'constants - required' }
GL1_0 >> HINT_BIT [

	<generated>
	^ GL_HINT_BIT
]

{ #category : #'constants - required' }
GL1_0 >> INCR [

	<generated>
	^ GL_INCR
]

{ #category : #'constants - required' }
GL1_0 >> INDEX_BITS [

	<generated>
	^ GL_INDEX_BITS
]

{ #category : #'constants - required' }
GL1_0 >> INDEX_CLEAR_VALUE [

	<generated>
	^ GL_INDEX_CLEAR_VALUE
]

{ #category : #'constants - required' }
GL1_0 >> INDEX_MODE [

	<generated>
	^ GL_INDEX_MODE
]

{ #category : #'constants - required' }
GL1_0 >> INDEX_OFFSET [

	<generated>
	^ GL_INDEX_OFFSET
]

{ #category : #'constants - required' }
GL1_0 >> INDEX_SHIFT [

	<generated>
	^ GL_INDEX_SHIFT
]

{ #category : #'constants - required' }
GL1_0 >> INDEX_WRITEMASK [

	<generated>
	^ GL_INDEX_WRITEMASK
]

{ #category : #'constants - required' }
GL1_0 >> INT [

	<generated>
	^ GL_INT
]

{ #category : #'constants - required' }
GL1_0 >> INVALID_ENUM [

	<generated>
	^ GL_INVALID_ENUM
]

{ #category : #'constants - required' }
GL1_0 >> INVALID_OPERATION [

	<generated>
	^ GL_INVALID_OPERATION
]

{ #category : #'constants - required' }
GL1_0 >> INVALID_VALUE [

	<generated>
	^ GL_INVALID_VALUE
]

{ #category : #'constants - required' }
GL1_0 >> INVERT [

	<generated>
	^ GL_INVERT
]

{ #category : #'constants - required' }
GL1_0 >> KEEP [

	<generated>
	^ GL_KEEP
]

{ #category : #'constants - required' }
GL1_0 >> LEFT [

	<generated>
	^ GL_LEFT
]

{ #category : #'constants - required' }
GL1_0 >> LEQUAL [

	<generated>
	^ GL_LEQUAL
]

{ #category : #'constants - required' }
GL1_0 >> LESS [

	<generated>
	^ GL_LESS
]

{ #category : #'constants - required' }
GL1_0 >> LIGHT0 [

	<generated>
	^ GL_LIGHT0
]

{ #category : #'constants - required' }
GL1_0 >> LIGHT1 [

	<generated>
	^ GL_LIGHT1
]

{ #category : #'constants - required' }
GL1_0 >> LIGHT2 [

	<generated>
	^ GL_LIGHT2
]

{ #category : #'constants - required' }
GL1_0 >> LIGHT3 [

	<generated>
	^ GL_LIGHT3
]

{ #category : #'constants - required' }
GL1_0 >> LIGHT4 [

	<generated>
	^ GL_LIGHT4
]

{ #category : #'constants - required' }
GL1_0 >> LIGHT5 [

	<generated>
	^ GL_LIGHT5
]

{ #category : #'constants - required' }
GL1_0 >> LIGHT6 [

	<generated>
	^ GL_LIGHT6
]

{ #category : #'constants - required' }
GL1_0 >> LIGHT7 [

	<generated>
	^ GL_LIGHT7
]

{ #category : #'constants - required' }
GL1_0 >> LIGHTING [

	<generated>
	^ GL_LIGHTING
]

{ #category : #'constants - required' }
GL1_0 >> LIGHTING_BIT [

	<generated>
	^ GL_LIGHTING_BIT
]

{ #category : #'constants - required' }
GL1_0 >> LIGHT_MODEL_AMBIENT [

	<generated>
	^ GL_LIGHT_MODEL_AMBIENT
]

{ #category : #'constants - required' }
GL1_0 >> LIGHT_MODEL_LOCAL_VIEWER [

	<generated>
	^ GL_LIGHT_MODEL_LOCAL_VIEWER
]

{ #category : #'constants - required' }
GL1_0 >> LIGHT_MODEL_TWO_SIDE [

	<generated>
	^ GL_LIGHT_MODEL_TWO_SIDE
]

{ #category : #'constants - required' }
GL1_0 >> LINE [

	<generated>
	^ GL_LINE
]

{ #category : #'constants - required' }
GL1_0 >> LINEAR [

	<generated>
	^ GL_LINEAR
]

{ #category : #'constants - required' }
GL1_0 >> LINEAR_ATTENUATION [

	<generated>
	^ GL_LINEAR_ATTENUATION
]

{ #category : #'constants - required' }
GL1_0 >> LINEAR_MIPMAP_LINEAR [

	<generated>
	^ GL_LINEAR_MIPMAP_LINEAR
]

{ #category : #'constants - required' }
GL1_0 >> LINEAR_MIPMAP_NEAREST [

	<generated>
	^ GL_LINEAR_MIPMAP_NEAREST
]

{ #category : #'constants - required' }
GL1_0 >> LINES [

	<generated>
	^ GL_LINES
]

{ #category : #'constants - required' }
GL1_0 >> LINE_BIT [

	<generated>
	^ GL_LINE_BIT
]

{ #category : #'constants - required' }
GL1_0 >> LINE_LOOP [

	<generated>
	^ GL_LINE_LOOP
]

{ #category : #'constants - required' }
GL1_0 >> LINE_RESET_TOKEN [

	<generated>
	^ GL_LINE_RESET_TOKEN
]

{ #category : #'constants - required' }
GL1_0 >> LINE_SMOOTH [

	<generated>
	^ GL_LINE_SMOOTH
]

{ #category : #'constants - required' }
GL1_0 >> LINE_SMOOTH_HINT [

	<generated>
	^ GL_LINE_SMOOTH_HINT
]

{ #category : #'constants - required' }
GL1_0 >> LINE_STIPPLE [

	<generated>
	^ GL_LINE_STIPPLE
]

{ #category : #'constants - required' }
GL1_0 >> LINE_STIPPLE_PATTERN [

	<generated>
	^ GL_LINE_STIPPLE_PATTERN
]

{ #category : #'constants - required' }
GL1_0 >> LINE_STIPPLE_REPEAT [

	<generated>
	^ GL_LINE_STIPPLE_REPEAT
]

{ #category : #'constants - required' }
GL1_0 >> LINE_STRIP [

	<generated>
	^ GL_LINE_STRIP
]

{ #category : #'constants - required' }
GL1_0 >> LINE_TOKEN [

	<generated>
	^ GL_LINE_TOKEN
]

{ #category : #'constants - required' }
GL1_0 >> LINE_WIDTH [

	<generated>
	^ GL_LINE_WIDTH
]

{ #category : #'constants - required' }
GL1_0 >> LINE_WIDTH_GRANULARITY [

	<generated>
	^ GL_LINE_WIDTH_GRANULARITY
]

{ #category : #'constants - required' }
GL1_0 >> LINE_WIDTH_RANGE [

	<generated>
	^ GL_LINE_WIDTH_RANGE
]

{ #category : #'constants - required' }
GL1_0 >> LIST_BASE [

	<generated>
	^ GL_LIST_BASE
]

{ #category : #'constants - required' }
GL1_0 >> LIST_BIT [

	<generated>
	^ GL_LIST_BIT
]

{ #category : #'constants - required' }
GL1_0 >> LIST_INDEX [

	<generated>
	^ GL_LIST_INDEX
]

{ #category : #'constants - required' }
GL1_0 >> LIST_MODE [

	<generated>
	^ GL_LIST_MODE
]

{ #category : #'constants - required' }
GL1_0 >> LOAD [

	<generated>
	^ GL_LOAD
]

{ #category : #'constants - required' }
GL1_0 >> LOGIC_OP [

	<generated>
	^ GL_LOGIC_OP
]

{ #category : #'constants - required' }
GL1_0 >> LOGIC_OP_MODE [

	<generated>
	^ GL_LOGIC_OP_MODE
]

{ #category : #'constants - required' }
GL1_0 >> LUMINANCE [

	<generated>
	^ GL_LUMINANCE
]

{ #category : #'constants - required' }
GL1_0 >> LUMINANCE_ALPHA [

	<generated>
	^ GL_LUMINANCE_ALPHA
]

{ #category : #'constants - required' }
GL1_0 >> MAP1_COLOR_4 [

	<generated>
	^ GL_MAP1_COLOR_4
]

{ #category : #'constants - required' }
GL1_0 >> MAP1_GRID_DOMAIN [

	<generated>
	^ GL_MAP1_GRID_DOMAIN
]

{ #category : #'constants - required' }
GL1_0 >> MAP1_GRID_SEGMENTS [

	<generated>
	^ GL_MAP1_GRID_SEGMENTS
]

{ #category : #'constants - required' }
GL1_0 >> MAP1_INDEX [

	<generated>
	^ GL_MAP1_INDEX
]

{ #category : #'constants - required' }
GL1_0 >> MAP1_NORMAL [

	<generated>
	^ GL_MAP1_NORMAL
]

{ #category : #'constants - required' }
GL1_0 >> MAP1_TEXTURE_COORD_1 [

	<generated>
	^ GL_MAP1_TEXTURE_COORD_1
]

{ #category : #'constants - required' }
GL1_0 >> MAP1_TEXTURE_COORD_2 [

	<generated>
	^ GL_MAP1_TEXTURE_COORD_2
]

{ #category : #'constants - required' }
GL1_0 >> MAP1_TEXTURE_COORD_3 [

	<generated>
	^ GL_MAP1_TEXTURE_COORD_3
]

{ #category : #'constants - required' }
GL1_0 >> MAP1_TEXTURE_COORD_4 [

	<generated>
	^ GL_MAP1_TEXTURE_COORD_4
]

{ #category : #'constants - required' }
GL1_0 >> MAP1_VERTEX_3 [

	<generated>
	^ GL_MAP1_VERTEX_3
]

{ #category : #'constants - required' }
GL1_0 >> MAP1_VERTEX_4 [

	<generated>
	^ GL_MAP1_VERTEX_4
]

{ #category : #'constants - required' }
GL1_0 >> MAP2_COLOR_4 [

	<generated>
	^ GL_MAP2_COLOR_4
]

{ #category : #'constants - required' }
GL1_0 >> MAP2_GRID_DOMAIN [

	<generated>
	^ GL_MAP2_GRID_DOMAIN
]

{ #category : #'constants - required' }
GL1_0 >> MAP2_GRID_SEGMENTS [

	<generated>
	^ GL_MAP2_GRID_SEGMENTS
]

{ #category : #'constants - required' }
GL1_0 >> MAP2_INDEX [

	<generated>
	^ GL_MAP2_INDEX
]

{ #category : #'constants - required' }
GL1_0 >> MAP2_NORMAL [

	<generated>
	^ GL_MAP2_NORMAL
]

{ #category : #'constants - required' }
GL1_0 >> MAP2_TEXTURE_COORD_1 [

	<generated>
	^ GL_MAP2_TEXTURE_COORD_1
]

{ #category : #'constants - required' }
GL1_0 >> MAP2_TEXTURE_COORD_2 [

	<generated>
	^ GL_MAP2_TEXTURE_COORD_2
]

{ #category : #'constants - required' }
GL1_0 >> MAP2_TEXTURE_COORD_3 [

	<generated>
	^ GL_MAP2_TEXTURE_COORD_3
]

{ #category : #'constants - required' }
GL1_0 >> MAP2_TEXTURE_COORD_4 [

	<generated>
	^ GL_MAP2_TEXTURE_COORD_4
]

{ #category : #'constants - required' }
GL1_0 >> MAP2_VERTEX_3 [

	<generated>
	^ GL_MAP2_VERTEX_3
]

{ #category : #'constants - required' }
GL1_0 >> MAP2_VERTEX_4 [

	<generated>
	^ GL_MAP2_VERTEX_4
]

{ #category : #'constants - required' }
GL1_0 >> MAP_COLOR [

	<generated>
	^ GL_MAP_COLOR
]

{ #category : #'constants - required' }
GL1_0 >> MAP_STENCIL [

	<generated>
	^ GL_MAP_STENCIL
]

{ #category : #'constants - required' }
GL1_0 >> MATRIX_MODE [

	<generated>
	^ GL_MATRIX_MODE
]

{ #category : #'constants - required' }
GL1_0 >> MAX_ATTRIB_STACK_DEPTH [

	<generated>
	^ GL_MAX_ATTRIB_STACK_DEPTH
]

{ #category : #'constants - required' }
GL1_0 >> MAX_CLIP_PLANES [

	<generated>
	^ GL_MAX_CLIP_PLANES
]

{ #category : #'constants - required' }
GL1_0 >> MAX_EVAL_ORDER [

	<generated>
	^ GL_MAX_EVAL_ORDER
]

{ #category : #'constants - required' }
GL1_0 >> MAX_LIGHTS [

	<generated>
	^ GL_MAX_LIGHTS
]

{ #category : #'constants - required' }
GL1_0 >> MAX_LIST_NESTING [

	<generated>
	^ GL_MAX_LIST_NESTING
]

{ #category : #'constants - required' }
GL1_0 >> MAX_MODELVIEW_STACK_DEPTH [

	<generated>
	^ GL_MAX_MODELVIEW_STACK_DEPTH
]

{ #category : #'constants - required' }
GL1_0 >> MAX_NAME_STACK_DEPTH [

	<generated>
	^ GL_MAX_NAME_STACK_DEPTH
]

{ #category : #'constants - required' }
GL1_0 >> MAX_PIXEL_MAP_TABLE [

	<generated>
	^ GL_MAX_PIXEL_MAP_TABLE
]

{ #category : #'constants - required' }
GL1_0 >> MAX_PROJECTION_STACK_DEPTH [

	<generated>
	^ GL_MAX_PROJECTION_STACK_DEPTH
]

{ #category : #'constants - required' }
GL1_0 >> MAX_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_TEXTURE_SIZE
]

{ #category : #'constants - required' }
GL1_0 >> MAX_TEXTURE_STACK_DEPTH [

	<generated>
	^ GL_MAX_TEXTURE_STACK_DEPTH
]

{ #category : #'constants - required' }
GL1_0 >> MAX_VIEWPORT_DIMS [

	<generated>
	^ GL_MAX_VIEWPORT_DIMS
]

{ #category : #'constants - required' }
GL1_0 >> MODELVIEW [

	<generated>
	^ GL_MODELVIEW
]

{ #category : #'constants - required' }
GL1_0 >> MODELVIEW_MATRIX [

	<generated>
	^ GL_MODELVIEW_MATRIX
]

{ #category : #'constants - required' }
GL1_0 >> MODELVIEW_STACK_DEPTH [

	<generated>
	^ GL_MODELVIEW_STACK_DEPTH
]

{ #category : #'constants - required' }
GL1_0 >> MODULATE [

	<generated>
	^ GL_MODULATE
]

{ #category : #'constants - required' }
GL1_0 >> MULT [

	<generated>
	^ GL_MULT
]

{ #category : #'constants - required' }
GL1_0 >> NAME_STACK_DEPTH [

	<generated>
	^ GL_NAME_STACK_DEPTH
]

{ #category : #'constants - required' }
GL1_0 >> NAND [

	<generated>
	^ GL_NAND
]

{ #category : #'constants - required' }
GL1_0 >> NEAREST [

	<generated>
	^ GL_NEAREST
]

{ #category : #'constants - required' }
GL1_0 >> NEAREST_MIPMAP_LINEAR [

	<generated>
	^ GL_NEAREST_MIPMAP_LINEAR
]

{ #category : #'constants - required' }
GL1_0 >> NEAREST_MIPMAP_NEAREST [

	<generated>
	^ GL_NEAREST_MIPMAP_NEAREST
]

{ #category : #'constants - required' }
GL1_0 >> NEVER [

	<generated>
	^ GL_NEVER
]

{ #category : #'constants - required' }
GL1_0 >> NICEST [

	<generated>
	^ GL_NICEST
]

{ #category : #'constants - required' }
GL1_0 >> NONE [

	<generated>
	^ GL_NONE
]

{ #category : #'constants - required' }
GL1_0 >> NOOP [

	<generated>
	^ GL_NOOP
]

{ #category : #'constants - required' }
GL1_0 >> NOR [

	<generated>
	^ GL_NOR
]

{ #category : #'constants - required' }
GL1_0 >> NORMALIZE [

	<generated>
	^ GL_NORMALIZE
]

{ #category : #'constants - required' }
GL1_0 >> NOTEQUAL [

	<generated>
	^ GL_NOTEQUAL
]

{ #category : #'constants - required' }
GL1_0 >> NO_ERROR [

	<generated>
	^ GL_NO_ERROR
]

{ #category : #'constants - required' }
GL1_0 >> OBJECT_LINEAR [

	<generated>
	^ GL_OBJECT_LINEAR
]

{ #category : #'constants - required' }
GL1_0 >> OBJECT_PLANE [

	<generated>
	^ GL_OBJECT_PLANE
]

{ #category : #'constants - required' }
GL1_0 >> ONE [

	<generated>
	^ GL_ONE
]

{ #category : #'constants - required' }
GL1_0 >> ONE_MINUS_DST_ALPHA [

	<generated>
	^ GL_ONE_MINUS_DST_ALPHA
]

{ #category : #'constants - required' }
GL1_0 >> ONE_MINUS_DST_COLOR [

	<generated>
	^ GL_ONE_MINUS_DST_COLOR
]

{ #category : #'constants - required' }
GL1_0 >> ONE_MINUS_SRC_ALPHA [

	<generated>
	^ GL_ONE_MINUS_SRC_ALPHA
]

{ #category : #'constants - required' }
GL1_0 >> ONE_MINUS_SRC_COLOR [

	<generated>
	^ GL_ONE_MINUS_SRC_COLOR
]

{ #category : #'constants - required' }
GL1_0 >> OR [

	<generated>
	^ GL_OR
]

{ #category : #'constants - required' }
GL1_0 >> ORDER [

	<generated>
	^ GL_ORDER
]

{ #category : #'constants - required' }
GL1_0 >> OR_INVERTED [

	<generated>
	^ GL_OR_INVERTED
]

{ #category : #'constants - required' }
GL1_0 >> OR_REVERSE [

	<generated>
	^ GL_OR_REVERSE
]

{ #category : #'constants - required' }
GL1_0 >> OUT_OF_MEMORY [

	<generated>
	^ GL_OUT_OF_MEMORY
]

{ #category : #'constants - required' }
GL1_0 >> PACK_ALIGNMENT [

	<generated>
	^ GL_PACK_ALIGNMENT
]

{ #category : #'constants - required' }
GL1_0 >> PACK_LSB_FIRST [

	<generated>
	^ GL_PACK_LSB_FIRST
]

{ #category : #'constants - required' }
GL1_0 >> PACK_ROW_LENGTH [

	<generated>
	^ GL_PACK_ROW_LENGTH
]

{ #category : #'constants - required' }
GL1_0 >> PACK_SKIP_PIXELS [

	<generated>
	^ GL_PACK_SKIP_PIXELS
]

{ #category : #'constants - required' }
GL1_0 >> PACK_SKIP_ROWS [

	<generated>
	^ GL_PACK_SKIP_ROWS
]

{ #category : #'constants - required' }
GL1_0 >> PACK_SWAP_BYTES [

	<generated>
	^ GL_PACK_SWAP_BYTES
]

{ #category : #'constants - required' }
GL1_0 >> PASS_THROUGH_TOKEN [

	<generated>
	^ GL_PASS_THROUGH_TOKEN
]

{ #category : #'constants - required' }
GL1_0 >> PERSPECTIVE_CORRECTION_HINT [

	<generated>
	^ GL_PERSPECTIVE_CORRECTION_HINT
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_A_TO_A [

	<generated>
	^ GL_PIXEL_MAP_A_TO_A
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_A_TO_A_SIZE [

	<generated>
	^ GL_PIXEL_MAP_A_TO_A_SIZE
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_B_TO_B [

	<generated>
	^ GL_PIXEL_MAP_B_TO_B
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_B_TO_B_SIZE [

	<generated>
	^ GL_PIXEL_MAP_B_TO_B_SIZE
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_G_TO_G [

	<generated>
	^ GL_PIXEL_MAP_G_TO_G
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_G_TO_G_SIZE [

	<generated>
	^ GL_PIXEL_MAP_G_TO_G_SIZE
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_I_TO_A [

	<generated>
	^ GL_PIXEL_MAP_I_TO_A
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_I_TO_A_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_A_SIZE
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_I_TO_B [

	<generated>
	^ GL_PIXEL_MAP_I_TO_B
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_I_TO_B_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_B_SIZE
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_I_TO_G [

	<generated>
	^ GL_PIXEL_MAP_I_TO_G
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_I_TO_G_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_G_SIZE
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_I_TO_I [

	<generated>
	^ GL_PIXEL_MAP_I_TO_I
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_I_TO_I_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_I_SIZE
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_I_TO_R [

	<generated>
	^ GL_PIXEL_MAP_I_TO_R
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_I_TO_R_SIZE [

	<generated>
	^ GL_PIXEL_MAP_I_TO_R_SIZE
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_R_TO_R [

	<generated>
	^ GL_PIXEL_MAP_R_TO_R
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_R_TO_R_SIZE [

	<generated>
	^ GL_PIXEL_MAP_R_TO_R_SIZE
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_S_TO_S [

	<generated>
	^ GL_PIXEL_MAP_S_TO_S
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MAP_S_TO_S_SIZE [

	<generated>
	^ GL_PIXEL_MAP_S_TO_S_SIZE
]

{ #category : #'constants - required' }
GL1_0 >> PIXEL_MODE_BIT [

	<generated>
	^ GL_PIXEL_MODE_BIT
]

{ #category : #'constants - required' }
GL1_0 >> POINT [

	<generated>
	^ GL_POINT
]

{ #category : #'constants - required' }
GL1_0 >> POINTS [

	<generated>
	^ GL_POINTS
]

{ #category : #'constants - required' }
GL1_0 >> POINT_BIT [

	<generated>
	^ GL_POINT_BIT
]

{ #category : #'constants - required' }
GL1_0 >> POINT_SIZE [

	<generated>
	^ GL_POINT_SIZE
]

{ #category : #'constants - required' }
GL1_0 >> POINT_SIZE_GRANULARITY [

	<generated>
	^ GL_POINT_SIZE_GRANULARITY
]

{ #category : #'constants - required' }
GL1_0 >> POINT_SIZE_RANGE [

	<generated>
	^ GL_POINT_SIZE_RANGE
]

{ #category : #'constants - required' }
GL1_0 >> POINT_SMOOTH [

	<generated>
	^ GL_POINT_SMOOTH
]

{ #category : #'constants - required' }
GL1_0 >> POINT_SMOOTH_HINT [

	<generated>
	^ GL_POINT_SMOOTH_HINT
]

{ #category : #'constants - required' }
GL1_0 >> POINT_TOKEN [

	<generated>
	^ GL_POINT_TOKEN
]

{ #category : #'constants - required' }
GL1_0 >> POLYGON [

	<generated>
	^ GL_POLYGON
]

{ #category : #'constants - required' }
GL1_0 >> POLYGON_BIT [

	<generated>
	^ GL_POLYGON_BIT
]

{ #category : #'constants - required' }
GL1_0 >> POLYGON_MODE [

	<generated>
	^ GL_POLYGON_MODE
]

{ #category : #'constants - required' }
GL1_0 >> POLYGON_SMOOTH [

	<generated>
	^ GL_POLYGON_SMOOTH
]

{ #category : #'constants - required' }
GL1_0 >> POLYGON_SMOOTH_HINT [

	<generated>
	^ GL_POLYGON_SMOOTH_HINT
]

{ #category : #'constants - required' }
GL1_0 >> POLYGON_STIPPLE [

	<generated>
	^ GL_POLYGON_STIPPLE
]

{ #category : #'constants - required' }
GL1_0 >> POLYGON_STIPPLE_BIT [

	<generated>
	^ GL_POLYGON_STIPPLE_BIT
]

{ #category : #'constants - required' }
GL1_0 >> POLYGON_TOKEN [

	<generated>
	^ GL_POLYGON_TOKEN
]

{ #category : #'constants - required' }
GL1_0 >> POSITION [

	<generated>
	^ GL_POSITION
]

{ #category : #'constants - required' }
GL1_0 >> PROJECTION [

	<generated>
	^ GL_PROJECTION
]

{ #category : #'constants - required' }
GL1_0 >> PROJECTION_MATRIX [

	<generated>
	^ GL_PROJECTION_MATRIX
]

{ #category : #'constants - required' }
GL1_0 >> PROJECTION_STACK_DEPTH [

	<generated>
	^ GL_PROJECTION_STACK_DEPTH
]

{ #category : #'constants - required' }
GL1_0 >> Q [

	<generated>
	^ GL_Q
]

{ #category : #'constants - required' }
GL1_0 >> QUADRATIC_ATTENUATION [

	<generated>
	^ GL_QUADRATIC_ATTENUATION
]

{ #category : #'constants - required' }
GL1_0 >> QUADS [

	<generated>
	^ GL_QUADS
]

{ #category : #'constants - required' }
GL1_0 >> QUAD_STRIP [

	<generated>
	^ GL_QUAD_STRIP
]

{ #category : #'constants - required' }
GL1_0 >> R [

	<generated>
	^ GL_R
]

{ #category : #'constants - required' }
GL1_0 >> READ_BUFFER [

	<generated>
	^ GL_READ_BUFFER
]

{ #category : #'constants - required' }
GL1_0 >> RED [

	<generated>
	^ GL_RED
]

{ #category : #'constants - required' }
GL1_0 >> RED_BIAS [

	<generated>
	^ GL_RED_BIAS
]

{ #category : #'constants - required' }
GL1_0 >> RED_BITS [

	<generated>
	^ GL_RED_BITS
]

{ #category : #'constants - required' }
GL1_0 >> RED_SCALE [

	<generated>
	^ GL_RED_SCALE
]

{ #category : #'constants - required' }
GL1_0 >> RENDER [

	<generated>
	^ GL_RENDER
]

{ #category : #'constants - required' }
GL1_0 >> RENDERER [

	<generated>
	^ GL_RENDERER
]

{ #category : #'constants - required' }
GL1_0 >> RENDER_MODE [

	<generated>
	^ GL_RENDER_MODE
]

{ #category : #'constants - required' }
GL1_0 >> REPEAT [

	<generated>
	^ GL_REPEAT
]

{ #category : #'constants - required' }
GL1_0 >> REPLACE [

	<generated>
	^ GL_REPLACE
]

{ #category : #'constants - required' }
GL1_0 >> RETURN [

	<generated>
	^ GL_RETURN
]

{ #category : #'constants - required' }
GL1_0 >> RGB [

	<generated>
	^ GL_RGB
]

{ #category : #'constants - required' }
GL1_0 >> RGBA [

	<generated>
	^ GL_RGBA
]

{ #category : #'constants - required' }
GL1_0 >> RGBA_MODE [

	<generated>
	^ GL_RGBA_MODE
]

{ #category : #'constants - required' }
GL1_0 >> RIGHT [

	<generated>
	^ GL_RIGHT
]

{ #category : #'constants - required' }
GL1_0 >> S [

	<generated>
	^ GL_S
]

{ #category : #'constants - required' }
GL1_0 >> SCISSOR_BIT [

	<generated>
	^ GL_SCISSOR_BIT
]

{ #category : #'constants - required' }
GL1_0 >> SCISSOR_BOX [

	<generated>
	^ GL_SCISSOR_BOX
]

{ #category : #'constants - required' }
GL1_0 >> SCISSOR_TEST [

	<generated>
	^ GL_SCISSOR_TEST
]

{ #category : #'constants - required' }
GL1_0 >> SELECT [

	<generated>
	^ GL_SELECT
]

{ #category : #'constants - required' }
GL1_0 >> SET [

	<generated>
	^ GL_SET
]

{ #category : #'constants - required' }
GL1_0 >> SHADE_MODEL [

	<generated>
	^ GL_SHADE_MODEL
]

{ #category : #'constants - required' }
GL1_0 >> SHININESS [

	<generated>
	^ GL_SHININESS
]

{ #category : #'constants - required' }
GL1_0 >> SHORT [

	<generated>
	^ GL_SHORT
]

{ #category : #'constants - required' }
GL1_0 >> SMOOTH [

	<generated>
	^ GL_SMOOTH
]

{ #category : #'constants - required' }
GL1_0 >> SPECULAR [

	<generated>
	^ GL_SPECULAR
]

{ #category : #'constants - required' }
GL1_0 >> SPHERE_MAP [

	<generated>
	^ GL_SPHERE_MAP
]

{ #category : #'constants - required' }
GL1_0 >> SPOT_CUTOFF [

	<generated>
	^ GL_SPOT_CUTOFF
]

{ #category : #'constants - required' }
GL1_0 >> SPOT_DIRECTION [

	<generated>
	^ GL_SPOT_DIRECTION
]

{ #category : #'constants - required' }
GL1_0 >> SPOT_EXPONENT [

	<generated>
	^ GL_SPOT_EXPONENT
]

{ #category : #'constants - required' }
GL1_0 >> SRC_ALPHA [

	<generated>
	^ GL_SRC_ALPHA
]

{ #category : #'constants - required' }
GL1_0 >> SRC_ALPHA_SATURATE [

	<generated>
	^ GL_SRC_ALPHA_SATURATE
]

{ #category : #'constants - required' }
GL1_0 >> SRC_COLOR [

	<generated>
	^ GL_SRC_COLOR
]

{ #category : #'constants - required' }
GL1_0 >> STACK_OVERFLOW [

	<generated>
	^ GL_STACK_OVERFLOW
]

{ #category : #'constants - required' }
GL1_0 >> STACK_UNDERFLOW [

	<generated>
	^ GL_STACK_UNDERFLOW
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL [

	<generated>
	^ GL_STENCIL
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL_BITS [

	<generated>
	^ GL_STENCIL_BITS
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL_BUFFER_BIT [

	<generated>
	^ GL_STENCIL_BUFFER_BIT
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL_CLEAR_VALUE [

	<generated>
	^ GL_STENCIL_CLEAR_VALUE
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL_FAIL [

	<generated>
	^ GL_STENCIL_FAIL
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL_FUNC [

	<generated>
	^ GL_STENCIL_FUNC
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL_INDEX [

	<generated>
	^ GL_STENCIL_INDEX
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL_PASS_DEPTH_FAIL [

	<generated>
	^ GL_STENCIL_PASS_DEPTH_FAIL
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL_PASS_DEPTH_PASS [

	<generated>
	^ GL_STENCIL_PASS_DEPTH_PASS
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL_REF [

	<generated>
	^ GL_STENCIL_REF
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL_TEST [

	<generated>
	^ GL_STENCIL_TEST
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL_VALUE_MASK [

	<generated>
	^ GL_STENCIL_VALUE_MASK
]

{ #category : #'constants - required' }
GL1_0 >> STENCIL_WRITEMASK [

	<generated>
	^ GL_STENCIL_WRITEMASK
]

{ #category : #'constants - required' }
GL1_0 >> STEREO [

	<generated>
	^ GL_STEREO
]

{ #category : #'constants - required' }
GL1_0 >> SUBPIXEL_BITS [

	<generated>
	^ GL_SUBPIXEL_BITS
]

{ #category : #'constants - required' }
GL1_0 >> T [

	<generated>
	^ GL_T
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE [

	<generated>
	^ GL_TEXTURE
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_1D [

	<generated>
	^ GL_TEXTURE_1D
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_2D [

	<generated>
	^ GL_TEXTURE_2D
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_BIT [

	<generated>
	^ GL_TEXTURE_BIT
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_BORDER [

	<generated>
	^ GL_TEXTURE_BORDER
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_BORDER_COLOR [

	<generated>
	^ GL_TEXTURE_BORDER_COLOR
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_COMPONENTS [

	<generated>
	^ GL_TEXTURE_COMPONENTS
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_ENV [

	<generated>
	^ GL_TEXTURE_ENV
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_ENV_COLOR [

	<generated>
	^ GL_TEXTURE_ENV_COLOR
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_ENV_MODE [

	<generated>
	^ GL_TEXTURE_ENV_MODE
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_GEN_MODE [

	<generated>
	^ GL_TEXTURE_GEN_MODE
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_GEN_Q [

	<generated>
	^ GL_TEXTURE_GEN_Q
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_GEN_R [

	<generated>
	^ GL_TEXTURE_GEN_R
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_GEN_S [

	<generated>
	^ GL_TEXTURE_GEN_S
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_GEN_T [

	<generated>
	^ GL_TEXTURE_GEN_T
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_HEIGHT [

	<generated>
	^ GL_TEXTURE_HEIGHT
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_MAG_FILTER [

	<generated>
	^ GL_TEXTURE_MAG_FILTER
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_MATRIX [

	<generated>
	^ GL_TEXTURE_MATRIX
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_MIN_FILTER [

	<generated>
	^ GL_TEXTURE_MIN_FILTER
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_STACK_DEPTH [

	<generated>
	^ GL_TEXTURE_STACK_DEPTH
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_WIDTH [

	<generated>
	^ GL_TEXTURE_WIDTH
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_WRAP_S [

	<generated>
	^ GL_TEXTURE_WRAP_S
]

{ #category : #'constants - required' }
GL1_0 >> TEXTURE_WRAP_T [

	<generated>
	^ GL_TEXTURE_WRAP_T
]

{ #category : #'constants - required' }
GL1_0 >> TRANSFORM_BIT [

	<generated>
	^ GL_TRANSFORM_BIT
]

{ #category : #'constants - required' }
GL1_0 >> TRIANGLES [

	<generated>
	^ GL_TRIANGLES
]

{ #category : #'constants - required' }
GL1_0 >> TRIANGLE_FAN [

	<generated>
	^ GL_TRIANGLE_FAN
]

{ #category : #'constants - required' }
GL1_0 >> TRIANGLE_STRIP [

	<generated>
	^ GL_TRIANGLE_STRIP
]

{ #category : #'constants - required' }
GL1_0 >> TRUE [

	<generated>
	^ GL_TRUE
]

{ #category : #'constants - required' }
GL1_0 >> UNPACK_ALIGNMENT [

	<generated>
	^ GL_UNPACK_ALIGNMENT
]

{ #category : #'constants - required' }
GL1_0 >> UNPACK_LSB_FIRST [

	<generated>
	^ GL_UNPACK_LSB_FIRST
]

{ #category : #'constants - required' }
GL1_0 >> UNPACK_ROW_LENGTH [

	<generated>
	^ GL_UNPACK_ROW_LENGTH
]

{ #category : #'constants - required' }
GL1_0 >> UNPACK_SKIP_PIXELS [

	<generated>
	^ GL_UNPACK_SKIP_PIXELS
]

{ #category : #'constants - required' }
GL1_0 >> UNPACK_SKIP_ROWS [

	<generated>
	^ GL_UNPACK_SKIP_ROWS
]

{ #category : #'constants - required' }
GL1_0 >> UNPACK_SWAP_BYTES [

	<generated>
	^ GL_UNPACK_SWAP_BYTES
]

{ #category : #'constants - required' }
GL1_0 >> UNSIGNED_BYTE [

	<generated>
	^ GL_UNSIGNED_BYTE
]

{ #category : #'constants - required' }
GL1_0 >> UNSIGNED_INT [

	<generated>
	^ GL_UNSIGNED_INT
]

{ #category : #'constants - required' }
GL1_0 >> UNSIGNED_SHORT [

	<generated>
	^ GL_UNSIGNED_SHORT
]

{ #category : #'constants - required' }
GL1_0 >> VENDOR [

	<generated>
	^ GL_VENDOR
]

{ #category : #'constants - required' }
GL1_0 >> VERSION [

	<generated>
	^ GL_VERSION
]

{ #category : #'constants - required' }
GL1_0 >> VIEWPORT [

	<generated>
	^ GL_VIEWPORT
]

{ #category : #'constants - required' }
GL1_0 >> VIEWPORT_BIT [

	<generated>
	^ GL_VIEWPORT_BIT
]

{ #category : #'constants - required' }
GL1_0 >> XOR [

	<generated>
	^ GL_XOR
]

{ #category : #'constants - required' }
GL1_0 >> ZERO [

	<generated>
	^ GL_ZERO
]

{ #category : #'constants - required' }
GL1_0 >> ZOOM_X [

	<generated>
	^ GL_ZOOM_X
]

{ #category : #'constants - required' }
GL1_0 >> ZOOM_Y [

	<generated>
	^ GL_ZOOM_Y
]

{ #category : #'api - required' }
GL1_0 >> accum: op with: value [

	<generated>
	<apicall: void 'glAccum' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> alphaFunc: func with: ref [

	<generated>
	<apicall: void 'glAlphaFunc' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> begin: mode [

	<generated>
	<apicall: void 'glBegin' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> bitmap: width with: height with: xorig with: yorig with: xmove with: ymove with: bitmap [

	<generated>
	<apicall: void 'glBitmap' (GLsizei GLsizei GLfloat GLfloat GLfloat GLfloat GLubyte*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> blendFunc: sfactor with: dfactor [

	<generated>
	<apicall: void 'glBlendFunc' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> callList: list [

	<generated>
	<apicall: void 'glCallList' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> callLists: n with: type with: lists [

	<generated>
	<apicall: void 'glCallLists' (GLsizei GLenum void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> clear: mask [

	<generated>
	<apicall: void 'glClear' (GLbitfield)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> clearAccum: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glClearAccum' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> clearColor: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glClearColor' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> clearDepth: depth [

	<generated>
	<apicall: void 'glClearDepth' (GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> clearIndex: c [

	<generated>
	<apicall: void 'glClearIndex' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> clearStencil: s [

	<generated>
	<apicall: void 'glClearStencil' (GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> clipPlane: plane with: equation [

	<generated>
	<apicall: void 'glClipPlane' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3b: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3b' (GLbyte GLbyte GLbyte)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3bv: v [

	<generated>
	<apicall: void 'glColor3bv' (GLbyte*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3d: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3dv: v [

	<generated>
	<apicall: void 'glColor3dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3f: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3fv: v [

	<generated>
	<apicall: void 'glColor3fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3i: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3iv: v [

	<generated>
	<apicall: void 'glColor3iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3s: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3sv: v [

	<generated>
	<apicall: void 'glColor3sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3ub: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3ub' (GLubyte GLubyte GLubyte)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3ubv: v [

	<generated>
	<apicall: void 'glColor3ubv' (GLubyte*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3ui: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3ui' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3uiv: v [

	<generated>
	<apicall: void 'glColor3uiv' (GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3us: red with: green with: blue [

	<generated>
	<apicall: void 'glColor3us' (GLushort GLushort GLushort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color3usv: v [

	<generated>
	<apicall: void 'glColor3usv' (GLushort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4b: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4b' (GLbyte GLbyte GLbyte GLbyte)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4bv: v [

	<generated>
	<apicall: void 'glColor4bv' (GLbyte*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4d: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4d' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4dv: v [

	<generated>
	<apicall: void 'glColor4dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4f: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4fv: v [

	<generated>
	<apicall: void 'glColor4fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4i: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4iv: v [

	<generated>
	<apicall: void 'glColor4iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4s: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4s' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4sv: v [

	<generated>
	<apicall: void 'glColor4sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4ub: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4ub' (GLubyte GLubyte GLubyte GLubyte)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4ubv: v [

	<generated>
	<apicall: void 'glColor4ubv' (GLubyte*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4ui: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4ui' (GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4uiv: v [

	<generated>
	<apicall: void 'glColor4uiv' (GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4us: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4us' (GLushort GLushort GLushort GLushort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> color4usv: v [

	<generated>
	<apicall: void 'glColor4usv' (GLushort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> colorMask: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColorMask' (GLboolean GLboolean GLboolean GLboolean)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> colorMaterial: face with: mode [

	<generated>
	<apicall: void 'glColorMaterial' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> copyPixels: x with: y with: width with: height with: type [

	<generated>
	<apicall: void 'glCopyPixels' (GLint GLint GLsizei GLsizei GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> cullFace: mode [

	<generated>
	<apicall: void 'glCullFace' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> deleteLists: list with: range [

	<generated>
	<apicall: void 'glDeleteLists' (GLuint GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> depthFunc: func [

	<generated>
	<apicall: void 'glDepthFunc' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> depthMask: flag [

	<generated>
	<apicall: void 'glDepthMask' (GLboolean)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> depthRange: n with: f [

	<generated>
	<apicall: void 'glDepthRange' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> disable: cap [

	<generated>
	<apicall: void 'glDisable' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> drawBuffer: buf [

	<generated>
	<apicall: void 'glDrawBuffer' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> drawPixels: width with: height with: format with: type with: pixels [

	<generated>
	<apicall: void 'glDrawPixels' (GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> edgeFlag: flag [

	<generated>
	<apicall: void 'glEdgeFlag' (GLboolean)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> edgeFlagv: flag [

	<generated>
	<apicall: void 'glEdgeFlagv' (GLboolean*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> enable: cap [

	<generated>
	<apicall: void 'glEnable' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> end [

	<generated>
	<apicall: void 'glEnd' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> endList [

	<generated>
	<apicall: void 'glEndList' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> evalCoord1d: u [

	<generated>
	<apicall: void 'glEvalCoord1d' (GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> evalCoord1dv: u [

	<generated>
	<apicall: void 'glEvalCoord1dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> evalCoord1f: u [

	<generated>
	<apicall: void 'glEvalCoord1f' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> evalCoord1fv: u [

	<generated>
	<apicall: void 'glEvalCoord1fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> evalCoord2d: u with: v [

	<generated>
	<apicall: void 'glEvalCoord2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> evalCoord2dv: u [

	<generated>
	<apicall: void 'glEvalCoord2dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> evalCoord2f: u with: v [

	<generated>
	<apicall: void 'glEvalCoord2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> evalCoord2fv: u [

	<generated>
	<apicall: void 'glEvalCoord2fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> evalMesh1: mode with: i1 with: i2 [

	<generated>
	<apicall: void 'glEvalMesh1' (GLenum GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> evalMesh2: mode with: i1 with: i2 with: j1 with: j2 [

	<generated>
	<apicall: void 'glEvalMesh2' (GLenum GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> evalPoint1: i [

	<generated>
	<apicall: void 'glEvalPoint1' (GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> evalPoint2: i with: j [

	<generated>
	<apicall: void 'glEvalPoint2' (GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> feedbackBuffer: size with: type with: buffer [

	<generated>
	<apicall: void 'glFeedbackBuffer' (GLsizei GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> finish [

	<generated>
	<apicall: void 'glFinish' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> flush [

	<generated>
	<apicall: void 'glFlush' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> fogf: pname with: param [

	<generated>
	<apicall: void 'glFogf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> fogfv: pname with: params [

	<generated>
	<apicall: void 'glFogfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> fogi: pname with: param [

	<generated>
	<apicall: void 'glFogi' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> fogiv: pname with: params [

	<generated>
	<apicall: void 'glFogiv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> frontFace: mode [

	<generated>
	<apicall: void 'glFrontFace' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> frustum: left with: right with: bottom with: top with: zNear with: zFar [

	<generated>
	<apicall: void 'glFrustum' (GLdouble GLdouble GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> genLists: range [

	<generated>
	<apicall: GLuint 'glGenLists' (GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getBooleanv: pname with: data [

	<generated>
	<apicall: void 'glGetBooleanv' (GLenum GLboolean*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getClipPlane: plane with: equation [

	<generated>
	<apicall: void 'glGetClipPlane' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getDoublev: pname with: data [

	<generated>
	<apicall: void 'glGetDoublev' (GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getError [

	<generated>
	<apicall: GLenum 'glGetError' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getFloatv: pname with: data [

	<generated>
	<apicall: void 'glGetFloatv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getIntegerv: pname with: data [

	<generated>
	<apicall: void 'glGetIntegerv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getLightfv: light with: pname with: params [

	<generated>
	<apicall: void 'glGetLightfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getLightiv: light with: pname with: params [

	<generated>
	<apicall: void 'glGetLightiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getMapdv: target with: query with: v [

	<generated>
	<apicall: void 'glGetMapdv' (GLenum GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getMapfv: target with: query with: v [

	<generated>
	<apicall: void 'glGetMapfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getMapiv: target with: query with: v [

	<generated>
	<apicall: void 'glGetMapiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getMaterialfv: face with: pname with: params [

	<generated>
	<apicall: void 'glGetMaterialfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getMaterialiv: face with: pname with: params [

	<generated>
	<apicall: void 'glGetMaterialiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getPixelMapfv: map with: values [

	<generated>
	<apicall: void 'glGetPixelMapfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getPixelMapuiv: map with: values [

	<generated>
	<apicall: void 'glGetPixelMapuiv' (GLenum GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getPixelMapusv: map with: values [

	<generated>
	<apicall: void 'glGetPixelMapusv' (GLenum GLushort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getPolygonStipple: mask [

	<generated>
	<apicall: void 'glGetPolygonStipple' (GLubyte*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getString: name [

	<generated>
	<apicall: GLubyte* 'glGetString' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getTexEnvfv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexEnvfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getTexEnviv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexEnviv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getTexGendv: coord with: pname with: params [

	<generated>
	<apicall: void 'glGetTexGendv' (GLenum GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getTexGenfv: coord with: pname with: params [

	<generated>
	<apicall: void 'glGetTexGenfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getTexGeniv: coord with: pname with: params [

	<generated>
	<apicall: void 'glGetTexGeniv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getTexImage: target with: level with: format with: type with: pixels [

	<generated>
	<apicall: void 'glGetTexImage' (GLenum GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getTexLevelParameterfv: target with: level with: pname with: params [

	<generated>
	<apicall: void 'glGetTexLevelParameterfv' (GLenum GLint GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getTexLevelParameteriv: target with: level with: pname with: params [

	<generated>
	<apicall: void 'glGetTexLevelParameteriv' (GLenum GLint GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getTexParameterfv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> getTexParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> hint: target with: mode [

	<generated>
	<apicall: void 'glHint' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> indexMask: mask [

	<generated>
	<apicall: void 'glIndexMask' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> indexd: c [

	<generated>
	<apicall: void 'glIndexd' (GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> indexdv: c [

	<generated>
	<apicall: void 'glIndexdv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> indexf: c [

	<generated>
	<apicall: void 'glIndexf' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> indexfv: c [

	<generated>
	<apicall: void 'glIndexfv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> indexi: c [

	<generated>
	<apicall: void 'glIndexi' (GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> indexiv: c [

	<generated>
	<apicall: void 'glIndexiv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> indexs: c [

	<generated>
	<apicall: void 'glIndexs' (GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> indexsv: c [

	<generated>
	<apicall: void 'glIndexsv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> initNames [

	<generated>
	<apicall: void 'glInitNames' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> isEnabled: cap [

	<generated>
	<apicall: GLboolean 'glIsEnabled' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> isList: list [

	<generated>
	<apicall: GLboolean 'glIsList' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> lightModelf: pname with: param [

	<generated>
	<apicall: void 'glLightModelf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> lightModelfv: pname with: params [

	<generated>
	<apicall: void 'glLightModelfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> lightModeli: pname with: param [

	<generated>
	<apicall: void 'glLightModeli' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> lightModeliv: pname with: params [

	<generated>
	<apicall: void 'glLightModeliv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> lightf: light with: pname with: param [

	<generated>
	<apicall: void 'glLightf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> lightfv: light with: pname with: params [

	<generated>
	<apicall: void 'glLightfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> lighti: light with: pname with: param [

	<generated>
	<apicall: void 'glLighti' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> lightiv: light with: pname with: params [

	<generated>
	<apicall: void 'glLightiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> lineStipple: factor with: pattern [

	<generated>
	<apicall: void 'glLineStipple' (GLint GLushort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> lineWidth: width [

	<generated>
	<apicall: void 'glLineWidth' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> listBase: base [

	<generated>
	<apicall: void 'glListBase' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> loadIdentity [

	<generated>
	<apicall: void 'glLoadIdentity' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> loadMatrixd: m [

	<generated>
	<apicall: void 'glLoadMatrixd' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> loadMatrixf: m [

	<generated>
	<apicall: void 'glLoadMatrixf' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> loadName: name [

	<generated>
	<apicall: void 'glLoadName' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> logicOp: opcode [

	<generated>
	<apicall: void 'glLogicOp' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> map1d: target with: u1 with: u2 with: stride with: order with: points [

	<generated>
	<apicall: void 'glMap1d' (GLenum GLdouble GLdouble GLint GLint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> map1f: target with: u1 with: u2 with: stride with: order with: points [

	<generated>
	<apicall: void 'glMap1f' (GLenum GLfloat GLfloat GLint GLint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> map2d: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	<generated>
	<apicall: void 'glMap2d' (GLenum GLdouble GLdouble GLint GLint GLdouble GLdouble GLint GLint GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> map2f: target with: u1 with: u2 with: ustride with: uorder with: v1 with: v2 with: vstride with: vorder with: points [

	<generated>
	<apicall: void 'glMap2f' (GLenum GLfloat GLfloat GLint GLint GLfloat GLfloat GLint GLint GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> mapGrid1d: un with: u1 with: u2 [

	<generated>
	<apicall: void 'glMapGrid1d' (GLint GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> mapGrid1f: un with: u1 with: u2 [

	<generated>
	<apicall: void 'glMapGrid1f' (GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> mapGrid2d: un with: u1 with: u2 with: vn with: v1 with: v2 [

	<generated>
	<apicall: void 'glMapGrid2d' (GLint GLdouble GLdouble GLint GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> mapGrid2f: un with: u1 with: u2 with: vn with: v1 with: v2 [

	<generated>
	<apicall: void 'glMapGrid2f' (GLint GLfloat GLfloat GLint GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> materialf: face with: pname with: param [

	<generated>
	<apicall: void 'glMaterialf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> materialfv: face with: pname with: params [

	<generated>
	<apicall: void 'glMaterialfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> materiali: face with: pname with: param [

	<generated>
	<apicall: void 'glMateriali' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> materialiv: face with: pname with: params [

	<generated>
	<apicall: void 'glMaterialiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> matrixMode: mode [

	<generated>
	<apicall: void 'glMatrixMode' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> multMatrixd: m [

	<generated>
	<apicall: void 'glMultMatrixd' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> multMatrixf: m [

	<generated>
	<apicall: void 'glMultMatrixf' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> newList: list with: mode [

	<generated>
	<apicall: void 'glNewList' (GLuint GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> normal3b: nx with: ny with: nz [

	<generated>
	<apicall: void 'glNormal3b' (GLbyte GLbyte GLbyte)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> normal3bv: v [

	<generated>
	<apicall: void 'glNormal3bv' (GLbyte*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> normal3d: nx with: ny with: nz [

	<generated>
	<apicall: void 'glNormal3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> normal3dv: v [

	<generated>
	<apicall: void 'glNormal3dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> normal3f: nx with: ny with: nz [

	<generated>
	<apicall: void 'glNormal3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> normal3fv: v [

	<generated>
	<apicall: void 'glNormal3fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> normal3i: nx with: ny with: nz [

	<generated>
	<apicall: void 'glNormal3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> normal3iv: v [

	<generated>
	<apicall: void 'glNormal3iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> normal3s: nx with: ny with: nz [

	<generated>
	<apicall: void 'glNormal3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> normal3sv: v [

	<generated>
	<apicall: void 'glNormal3sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> ortho: left with: right with: bottom with: top with: zNear with: zFar [

	<generated>
	<apicall: void 'glOrtho' (GLdouble GLdouble GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> passThrough: token [

	<generated>
	<apicall: void 'glPassThrough' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> pixelMapfv: map with: mapsize with: values [

	<generated>
	<apicall: void 'glPixelMapfv' (GLenum GLsizei GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> pixelMapuiv: map with: mapsize with: values [

	<generated>
	<apicall: void 'glPixelMapuiv' (GLenum GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> pixelMapusv: map with: mapsize with: values [

	<generated>
	<apicall: void 'glPixelMapusv' (GLenum GLsizei GLushort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> pixelStoref: pname with: param [

	<generated>
	<apicall: void 'glPixelStoref' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> pixelStorei: pname with: param [

	<generated>
	<apicall: void 'glPixelStorei' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> pixelTransferf: pname with: param [

	<generated>
	<apicall: void 'glPixelTransferf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> pixelTransferi: pname with: param [

	<generated>
	<apicall: void 'glPixelTransferi' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> pixelZoom: xfactor with: yfactor [

	<generated>
	<apicall: void 'glPixelZoom' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> pointSize: size [

	<generated>
	<apicall: void 'glPointSize' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> polygonMode: face with: mode [

	<generated>
	<apicall: void 'glPolygonMode' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> polygonStipple: mask [

	<generated>
	<apicall: void 'glPolygonStipple' (GLubyte*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> popAttrib [

	<generated>
	<apicall: void 'glPopAttrib' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> popMatrix [

	<generated>
	<apicall: void 'glPopMatrix' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> popName [

	<generated>
	<apicall: void 'glPopName' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> pushAttrib: mask [

	<generated>
	<apicall: void 'glPushAttrib' (GLbitfield)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> pushMatrix [

	<generated>
	<apicall: void 'glPushMatrix' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> pushName: name [

	<generated>
	<apicall: void 'glPushName' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos2d: x with: y [

	<generated>
	<apicall: void 'glRasterPos2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos2dv: v [

	<generated>
	<apicall: void 'glRasterPos2dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos2f: x with: y [

	<generated>
	<apicall: void 'glRasterPos2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos2fv: v [

	<generated>
	<apicall: void 'glRasterPos2fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos2i: x with: y [

	<generated>
	<apicall: void 'glRasterPos2i' (GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos2iv: v [

	<generated>
	<apicall: void 'glRasterPos2iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos2s: x with: y [

	<generated>
	<apicall: void 'glRasterPos2s' (GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos2sv: v [

	<generated>
	<apicall: void 'glRasterPos2sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos3d: x with: y with: z [

	<generated>
	<apicall: void 'glRasterPos3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos3dv: v [

	<generated>
	<apicall: void 'glRasterPos3dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos3f: x with: y with: z [

	<generated>
	<apicall: void 'glRasterPos3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos3fv: v [

	<generated>
	<apicall: void 'glRasterPos3fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos3i: x with: y with: z [

	<generated>
	<apicall: void 'glRasterPos3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos3iv: v [

	<generated>
	<apicall: void 'glRasterPos3iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos3s: x with: y with: z [

	<generated>
	<apicall: void 'glRasterPos3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos3sv: v [

	<generated>
	<apicall: void 'glRasterPos3sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos4d: x with: y with: z with: w [

	<generated>
	<apicall: void 'glRasterPos4d' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos4dv: v [

	<generated>
	<apicall: void 'glRasterPos4dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos4f: x with: y with: z with: w [

	<generated>
	<apicall: void 'glRasterPos4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos4fv: v [

	<generated>
	<apicall: void 'glRasterPos4fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos4i: x with: y with: z with: w [

	<generated>
	<apicall: void 'glRasterPos4i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos4iv: v [

	<generated>
	<apicall: void 'glRasterPos4iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos4s: x with: y with: z with: w [

	<generated>
	<apicall: void 'glRasterPos4s' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rasterPos4sv: v [

	<generated>
	<apicall: void 'glRasterPos4sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> readBuffer: src [

	<generated>
	<apicall: void 'glReadBuffer' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> readPixels: x with: y with: width with: height with: format with: type with: pixels [

	<generated>
	<apicall: void 'glReadPixels' (GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rectd: x1 with: y1 with: x2 with: y2 [

	<generated>
	<apicall: void 'glRectd' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rectdv: v1 with: v2 [

	<generated>
	<apicall: void 'glRectdv' (GLdouble* GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rectf: x1 with: y1 with: x2 with: y2 [

	<generated>
	<apicall: void 'glRectf' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rectfv: v1 with: v2 [

	<generated>
	<apicall: void 'glRectfv' (GLfloat* GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> recti: x1 with: y1 with: x2 with: y2 [

	<generated>
	<apicall: void 'glRecti' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rectiv: v1 with: v2 [

	<generated>
	<apicall: void 'glRectiv' (GLint* GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rects: x1 with: y1 with: x2 with: y2 [

	<generated>
	<apicall: void 'glRects' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rectsv: v1 with: v2 [

	<generated>
	<apicall: void 'glRectsv' (GLshort* GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> renderMode: mode [

	<generated>
	<apicall: GLint 'glRenderMode' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rotated: angle with: x with: y with: z [

	<generated>
	<apicall: void 'glRotated' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> rotatef: angle with: x with: y with: z [

	<generated>
	<apicall: void 'glRotatef' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> scaled: x with: y with: z [

	<generated>
	<apicall: void 'glScaled' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> scalef: x with: y with: z [

	<generated>
	<apicall: void 'glScalef' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> scissor: x with: y with: width with: height [

	<generated>
	<apicall: void 'glScissor' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> selectBuffer: size with: buffer [

	<generated>
	<apicall: void 'glSelectBuffer' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> shadeModel: mode [

	<generated>
	<apicall: void 'glShadeModel' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> stencilFunc: func with: ref with: mask [

	<generated>
	<apicall: void 'glStencilFunc' (GLenum GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> stencilMask: mask [

	<generated>
	<apicall: void 'glStencilMask' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> stencilOp: fail with: zfail with: zpass [

	<generated>
	<apicall: void 'glStencilOp' (GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord1d: s [

	<generated>
	<apicall: void 'glTexCoord1d' (GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord1dv: v [

	<generated>
	<apicall: void 'glTexCoord1dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord1f: s [

	<generated>
	<apicall: void 'glTexCoord1f' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord1fv: v [

	<generated>
	<apicall: void 'glTexCoord1fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord1i: s [

	<generated>
	<apicall: void 'glTexCoord1i' (GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord1iv: v [

	<generated>
	<apicall: void 'glTexCoord1iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord1s: s [

	<generated>
	<apicall: void 'glTexCoord1s' (GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord1sv: v [

	<generated>
	<apicall: void 'glTexCoord1sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord2d: s with: t [

	<generated>
	<apicall: void 'glTexCoord2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord2dv: v [

	<generated>
	<apicall: void 'glTexCoord2dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord2f: s with: t [

	<generated>
	<apicall: void 'glTexCoord2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord2fv: v [

	<generated>
	<apicall: void 'glTexCoord2fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord2i: s with: t [

	<generated>
	<apicall: void 'glTexCoord2i' (GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord2iv: v [

	<generated>
	<apicall: void 'glTexCoord2iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord2s: s with: t [

	<generated>
	<apicall: void 'glTexCoord2s' (GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord2sv: v [

	<generated>
	<apicall: void 'glTexCoord2sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord3d: s with: t with: r [

	<generated>
	<apicall: void 'glTexCoord3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord3dv: v [

	<generated>
	<apicall: void 'glTexCoord3dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord3f: s with: t with: r [

	<generated>
	<apicall: void 'glTexCoord3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord3fv: v [

	<generated>
	<apicall: void 'glTexCoord3fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord3i: s with: t with: r [

	<generated>
	<apicall: void 'glTexCoord3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord3iv: v [

	<generated>
	<apicall: void 'glTexCoord3iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord3s: s with: t with: r [

	<generated>
	<apicall: void 'glTexCoord3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord3sv: v [

	<generated>
	<apicall: void 'glTexCoord3sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord4d: s with: t with: r with: q [

	<generated>
	<apicall: void 'glTexCoord4d' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord4dv: v [

	<generated>
	<apicall: void 'glTexCoord4dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord4f: s with: t with: r with: q [

	<generated>
	<apicall: void 'glTexCoord4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord4fv: v [

	<generated>
	<apicall: void 'glTexCoord4fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord4i: s with: t with: r with: q [

	<generated>
	<apicall: void 'glTexCoord4i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord4iv: v [

	<generated>
	<apicall: void 'glTexCoord4iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord4s: s with: t with: r with: q [

	<generated>
	<apicall: void 'glTexCoord4s' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texCoord4sv: v [

	<generated>
	<apicall: void 'glTexCoord4sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texEnvf: target with: pname with: param [

	<generated>
	<apicall: void 'glTexEnvf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texEnvfv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexEnvfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texEnvi: target with: pname with: param [

	<generated>
	<apicall: void 'glTexEnvi' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texEnviv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexEnviv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texGend: coord with: pname with: param [

	<generated>
	<apicall: void 'glTexGend' (GLenum GLenum GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texGendv: coord with: pname with: params [

	<generated>
	<apicall: void 'glTexGendv' (GLenum GLenum GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texGenf: coord with: pname with: param [

	<generated>
	<apicall: void 'glTexGenf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texGenfv: coord with: pname with: params [

	<generated>
	<apicall: void 'glTexGenfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texGeni: coord with: pname with: param [

	<generated>
	<apicall: void 'glTexGeni' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texGeniv: coord with: pname with: params [

	<generated>
	<apicall: void 'glTexGeniv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texImage1D: target with: level with: internalformat with: width with: border with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexImage1D' (GLenum GLint GLint GLsizei GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texImage2D: target with: level with: internalformat with: width with: height with: border with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexImage2D' (GLenum GLint GLint GLsizei GLsizei GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texParameterf: target with: pname with: param [

	<generated>
	<apicall: void 'glTexParameterf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texParameterfv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texParameteri: target with: pname with: param [

	<generated>
	<apicall: void 'glTexParameteri' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> texParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> translated: x with: y with: z [

	<generated>
	<apicall: void 'glTranslated' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> translatef: x with: y with: z [

	<generated>
	<apicall: void 'glTranslatef' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex2d: x with: y [

	<generated>
	<apicall: void 'glVertex2d' (GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex2dv: v [

	<generated>
	<apicall: void 'glVertex2dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex2f: x with: y [

	<generated>
	<apicall: void 'glVertex2f' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex2fv: v [

	<generated>
	<apicall: void 'glVertex2fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex2i: x with: y [

	<generated>
	<apicall: void 'glVertex2i' (GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex2iv: v [

	<generated>
	<apicall: void 'glVertex2iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex2s: x with: y [

	<generated>
	<apicall: void 'glVertex2s' (GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex2sv: v [

	<generated>
	<apicall: void 'glVertex2sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex3d: x with: y with: z [

	<generated>
	<apicall: void 'glVertex3d' (GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex3dv: v [

	<generated>
	<apicall: void 'glVertex3dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex3f: x with: y with: z [

	<generated>
	<apicall: void 'glVertex3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex3fv: v [

	<generated>
	<apicall: void 'glVertex3fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex3i: x with: y with: z [

	<generated>
	<apicall: void 'glVertex3i' (GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex3iv: v [

	<generated>
	<apicall: void 'glVertex3iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex3s: x with: y with: z [

	<generated>
	<apicall: void 'glVertex3s' (GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex3sv: v [

	<generated>
	<apicall: void 'glVertex3sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex4d: x with: y with: z with: w [

	<generated>
	<apicall: void 'glVertex4d' (GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex4dv: v [

	<generated>
	<apicall: void 'glVertex4dv' (GLdouble*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex4f: x with: y with: z with: w [

	<generated>
	<apicall: void 'glVertex4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex4fv: v [

	<generated>
	<apicall: void 'glVertex4fv' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex4i: x with: y with: z with: w [

	<generated>
	<apicall: void 'glVertex4i' (GLint GLint GLint GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex4iv: v [

	<generated>
	<apicall: void 'glVertex4iv' (GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex4s: x with: y with: z with: w [

	<generated>
	<apicall: void 'glVertex4s' (GLshort GLshort GLshort GLshort)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> vertex4sv: v [

	<generated>
	<apicall: void 'glVertex4sv' (GLshort*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL1_0 >> viewport: x with: y with: width with: height [

	<generated>
	<apicall: void 'glViewport' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]
