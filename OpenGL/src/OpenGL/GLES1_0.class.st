Class {
	#name : #'GLES1_0',
	#superclass : #GLLibrary,
	#category : #'OpenGL-API-GLES1'
}

{ #category : #accessing }
GLES1_0 class >> api [

	^ #gles1
]

{ #category : #accessing }
GLES1_0 class >> defaultProfile [

	^ #common
]

{ #category : #accessing }
GLES1_0 class >> majorVersion [

	^ 1
]

{ #category : #accessing }
GLES1_0 class >> minorVersion [

	^ 0
]

{ #category : #accessing }
GLES1_0 class >> moduleName [

	| platform version |
	platform := Smalltalk platformName.
	version := Smalltalk osVersion.
	platform = 'unix' ifTrue: [
		version = 'linux-gnu' ifTrue: [^ 'libGLESv1_CM.so'].
		^ self notYetImplemented].
	self notYetImplemented
]

{ #category : #accessing }
GLES1_0 class >> versionNumber [

	^ 10
]

{ #category : #'constants - required' }
GLES1_0 >> ACTIVE_TEXTURE [

	<generated>
	^ GL_ACTIVE_TEXTURE
]

{ #category : #'constants - required' }
GLES1_0 >> ADD [

	<generated>
	^ GL_ADD
]

{ #category : #'constants - required' }
GLES1_0 >> ADD_SIGNED [

	<generated>
	^ GL_ADD_SIGNED
]

{ #category : #'constants - required' }
GLES1_0 >> ALIASED_LINE_WIDTH_RANGE [

	<generated>
	^ GL_ALIASED_LINE_WIDTH_RANGE
]

{ #category : #'constants - required' }
GLES1_0 >> ALIASED_POINT_SIZE_RANGE [

	<generated>
	^ GL_ALIASED_POINT_SIZE_RANGE
]

{ #category : #'constants - required' }
GLES1_0 >> ALPHA [

	<generated>
	^ GL_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> ALPHA_BITS [

	<generated>
	^ GL_ALPHA_BITS
]

{ #category : #'constants - required' }
GLES1_0 >> ALPHA_SCALE [

	<generated>
	^ GL_ALPHA_SCALE
]

{ #category : #'constants - required' }
GLES1_0 >> ALPHA_TEST [

	<generated>
	^ GL_ALPHA_TEST
]

{ #category : #'constants - required' }
GLES1_0 >> ALPHA_TEST_FUNC [

	<generated>
	^ GL_ALPHA_TEST_FUNC
]

{ #category : #'constants - required' }
GLES1_0 >> ALPHA_TEST_REF [

	<generated>
	^ GL_ALPHA_TEST_REF
]

{ #category : #'constants - required' }
GLES1_0 >> ALWAYS [

	<generated>
	^ GL_ALWAYS
]

{ #category : #'constants - required' }
GLES1_0 >> AMBIENT [

	<generated>
	^ GL_AMBIENT
]

{ #category : #'constants - required' }
GLES1_0 >> AMBIENT_AND_DIFFUSE [

	<generated>
	^ GL_AMBIENT_AND_DIFFUSE
]

{ #category : #'constants - required' }
GLES1_0 >> AND [

	<generated>
	^ GL_AND
]

{ #category : #'constants - required' }
GLES1_0 >> AND_INVERTED [

	<generated>
	^ GL_AND_INVERTED
]

{ #category : #'constants - required' }
GLES1_0 >> AND_REVERSE [

	<generated>
	^ GL_AND_REVERSE
]

{ #category : #'constants - required' }
GLES1_0 >> ARRAY_BUFFER [

	<generated>
	^ GL_ARRAY_BUFFER
]

{ #category : #'constants - required' }
GLES1_0 >> ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - required' }
GLES1_0 >> BACK [

	<generated>
	^ GL_BACK
]

{ #category : #'constants - required' }
GLES1_0 >> BLEND [

	<generated>
	^ GL_BLEND
]

{ #category : #'constants - required' }
GLES1_0 >> BLEND_DST [

	<generated>
	^ GL_BLEND_DST
]

{ #category : #'constants - required' }
GLES1_0 >> BLEND_SRC [

	<generated>
	^ GL_BLEND_SRC
]

{ #category : #'constants - required' }
GLES1_0 >> BLUE_BITS [

	<generated>
	^ GL_BLUE_BITS
]

{ #category : #'constants - required' }
GLES1_0 >> BUFFER_SIZE [

	<generated>
	^ GL_BUFFER_SIZE
]

{ #category : #'constants - required' }
GLES1_0 >> BUFFER_USAGE [

	<generated>
	^ GL_BUFFER_USAGE
]

{ #category : #'constants - required' }
GLES1_0 >> BYTE [

	<generated>
	^ GL_BYTE
]

{ #category : #'constants - required' }
GLES1_0 >> CCW [

	<generated>
	^ GL_CCW
]

{ #category : #'constants - required' }
GLES1_0 >> CLAMP_TO_EDGE [

	<generated>
	^ GL_CLAMP_TO_EDGE
]

{ #category : #'constants - required' }
GLES1_0 >> CLEAR [

	<generated>
	^ GL_CLEAR
]

{ #category : #'constants - required' }
GLES1_0 >> CLIENT_ACTIVE_TEXTURE [

	<generated>
	^ GL_CLIENT_ACTIVE_TEXTURE
]

{ #category : #'constants - required' }
GLES1_0 >> CLIP_PLANE0 [

	<generated>
	^ GL_CLIP_PLANE0
]

{ #category : #'constants - required' }
GLES1_0 >> CLIP_PLANE1 [

	<generated>
	^ GL_CLIP_PLANE1
]

{ #category : #'constants - required' }
GLES1_0 >> CLIP_PLANE2 [

	<generated>
	^ GL_CLIP_PLANE2
]

{ #category : #'constants - required' }
GLES1_0 >> CLIP_PLANE3 [

	<generated>
	^ GL_CLIP_PLANE3
]

{ #category : #'constants - required' }
GLES1_0 >> CLIP_PLANE4 [

	<generated>
	^ GL_CLIP_PLANE4
]

{ #category : #'constants - required' }
GLES1_0 >> CLIP_PLANE5 [

	<generated>
	^ GL_CLIP_PLANE5
]

{ #category : #'constants - required' }
GLES1_0 >> COLOR_ARRAY [

	<generated>
	^ GL_COLOR_ARRAY
]

{ #category : #'constants - required' }
GLES1_0 >> COLOR_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_COLOR_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - required' }
GLES1_0 >> COLOR_ARRAY_POINTER [

	<generated>
	^ GL_COLOR_ARRAY_POINTER
]

{ #category : #'constants - required' }
GLES1_0 >> COLOR_ARRAY_SIZE [

	<generated>
	^ GL_COLOR_ARRAY_SIZE
]

{ #category : #'constants - required' }
GLES1_0 >> COLOR_ARRAY_STRIDE [

	<generated>
	^ GL_COLOR_ARRAY_STRIDE
]

{ #category : #'constants - required' }
GLES1_0 >> COLOR_ARRAY_TYPE [

	<generated>
	^ GL_COLOR_ARRAY_TYPE
]

{ #category : #'constants - required' }
GLES1_0 >> COLOR_BUFFER_BIT [

	<generated>
	^ GL_COLOR_BUFFER_BIT
]

{ #category : #'constants - required' }
GLES1_0 >> COLOR_CLEAR_VALUE [

	<generated>
	^ GL_COLOR_CLEAR_VALUE
]

{ #category : #'constants - required' }
GLES1_0 >> COLOR_LOGIC_OP [

	<generated>
	^ GL_COLOR_LOGIC_OP
]

{ #category : #'constants - required' }
GLES1_0 >> COLOR_MATERIAL [

	<generated>
	^ GL_COLOR_MATERIAL
]

{ #category : #'constants - required' }
GLES1_0 >> COLOR_WRITEMASK [

	<generated>
	^ GL_COLOR_WRITEMASK
]

{ #category : #'constants - required' }
GLES1_0 >> COMBINE [

	<generated>
	^ GL_COMBINE
]

{ #category : #'constants - required' }
GLES1_0 >> COMBINE_ALPHA [

	<generated>
	^ GL_COMBINE_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> COMBINE_RGB [

	<generated>
	^ GL_COMBINE_RGB
]

{ #category : #'constants - required' }
GLES1_0 >> COMPRESSED_TEXTURE_FORMATS [

	<generated>
	^ GL_COMPRESSED_TEXTURE_FORMATS
]

{ #category : #'constants - required' }
GLES1_0 >> CONSTANT [

	<generated>
	^ GL_CONSTANT
]

{ #category : #'constants - required' }
GLES1_0 >> CONSTANT_ATTENUATION [

	<generated>
	^ GL_CONSTANT_ATTENUATION
]

{ #category : #'constants - required' }
GLES1_0 >> COPY [

	<generated>
	^ GL_COPY
]

{ #category : #'constants - required' }
GLES1_0 >> COPY_INVERTED [

	<generated>
	^ GL_COPY_INVERTED
]

{ #category : #'constants - required' }
GLES1_0 >> CULL_FACE [

	<generated>
	^ GL_CULL_FACE
]

{ #category : #'constants - required' }
GLES1_0 >> CULL_FACE_MODE [

	<generated>
	^ GL_CULL_FACE_MODE
]

{ #category : #'constants - required' }
GLES1_0 >> CURRENT_COLOR [

	<generated>
	^ GL_CURRENT_COLOR
]

{ #category : #'constants - required' }
GLES1_0 >> CURRENT_NORMAL [

	<generated>
	^ GL_CURRENT_NORMAL
]

{ #category : #'constants - required' }
GLES1_0 >> CURRENT_TEXTURE_COORDS [

	<generated>
	^ GL_CURRENT_TEXTURE_COORDS
]

{ #category : #'constants - required' }
GLES1_0 >> CW [

	<generated>
	^ GL_CW
]

{ #category : #'constants - required' }
GLES1_0 >> DECAL [

	<generated>
	^ GL_DECAL
]

{ #category : #'constants - required' }
GLES1_0 >> DECR [

	<generated>
	^ GL_DECR
]

{ #category : #'constants - required' }
GLES1_0 >> DEPTH_BITS [

	<generated>
	^ GL_DEPTH_BITS
]

{ #category : #'constants - required' }
GLES1_0 >> DEPTH_BUFFER_BIT [

	<generated>
	^ GL_DEPTH_BUFFER_BIT
]

{ #category : #'constants - required' }
GLES1_0 >> DEPTH_CLEAR_VALUE [

	<generated>
	^ GL_DEPTH_CLEAR_VALUE
]

{ #category : #'constants - required' }
GLES1_0 >> DEPTH_FUNC [

	<generated>
	^ GL_DEPTH_FUNC
]

{ #category : #'constants - required' }
GLES1_0 >> DEPTH_RANGE [

	<generated>
	^ GL_DEPTH_RANGE
]

{ #category : #'constants - required' }
GLES1_0 >> DEPTH_TEST [

	<generated>
	^ GL_DEPTH_TEST
]

{ #category : #'constants - required' }
GLES1_0 >> DEPTH_WRITEMASK [

	<generated>
	^ GL_DEPTH_WRITEMASK
]

{ #category : #'constants - required' }
GLES1_0 >> DIFFUSE [

	<generated>
	^ GL_DIFFUSE
]

{ #category : #'constants - required' }
GLES1_0 >> DITHER [

	<generated>
	^ GL_DITHER
]

{ #category : #'constants - required' }
GLES1_0 >> DONT_CARE [

	<generated>
	^ GL_DONT_CARE
]

{ #category : #'constants - required' }
GLES1_0 >> DOT3_RGB [

	<generated>
	^ GL_DOT3_RGB
]

{ #category : #'constants - required' }
GLES1_0 >> DOT3_RGBA [

	<generated>
	^ GL_DOT3_RGBA
]

{ #category : #'constants - required' }
GLES1_0 >> DST_ALPHA [

	<generated>
	^ GL_DST_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> DST_COLOR [

	<generated>
	^ GL_DST_COLOR
]

{ #category : #'constants - required' }
GLES1_0 >> DYNAMIC_DRAW [

	<generated>
	^ GL_DYNAMIC_DRAW
]

{ #category : #'constants - required' }
GLES1_0 >> ELEMENT_ARRAY_BUFFER [

	<generated>
	^ GL_ELEMENT_ARRAY_BUFFER
]

{ #category : #'constants - required' }
GLES1_0 >> ELEMENT_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_ELEMENT_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - required' }
GLES1_0 >> EMISSION [

	<generated>
	^ GL_EMISSION
]

{ #category : #'constants - required' }
GLES1_0 >> EQUAL [

	<generated>
	^ GL_EQUAL
]

{ #category : #'constants - required' }
GLES1_0 >> EQUIV [

	<generated>
	^ GL_EQUIV
]

{ #category : #'constants - required' }
GLES1_0 >> EXP [

	<generated>
	^ GL_EXP
]

{ #category : #'constants - required' }
GLES1_0 >> EXP2 [

	<generated>
	^ GL_EXP2
]

{ #category : #'constants - required' }
GLES1_0 >> EXTENSIONS [

	<generated>
	^ GL_EXTENSIONS
]

{ #category : #'constants - required' }
GLES1_0 >> FALSE [

	<generated>
	^ GL_FALSE
]

{ #category : #'constants - required' }
GLES1_0 >> FASTEST [

	<generated>
	^ GL_FASTEST
]

{ #category : #'constants - required' }
GLES1_0 >> FIXED [

	<generated>
	^ GL_FIXED
]

{ #category : #'constants - required' }
GLES1_0 >> FLAT [

	<generated>
	^ GL_FLAT
]

{ #category : #'constants - required' }
GLES1_0 >> FLOAT [

	<generated>
	^ GL_FLOAT
]

{ #category : #'constants - required' }
GLES1_0 >> FOG [

	<generated>
	^ GL_FOG
]

{ #category : #'constants - required' }
GLES1_0 >> FOG_COLOR [

	<generated>
	^ GL_FOG_COLOR
]

{ #category : #'constants - required' }
GLES1_0 >> FOG_DENSITY [

	<generated>
	^ GL_FOG_DENSITY
]

{ #category : #'constants - required' }
GLES1_0 >> FOG_END [

	<generated>
	^ GL_FOG_END
]

{ #category : #'constants - required' }
GLES1_0 >> FOG_HINT [

	<generated>
	^ GL_FOG_HINT
]

{ #category : #'constants - required' }
GLES1_0 >> FOG_MODE [

	<generated>
	^ GL_FOG_MODE
]

{ #category : #'constants - required' }
GLES1_0 >> FOG_START [

	<generated>
	^ GL_FOG_START
]

{ #category : #'constants - required' }
GLES1_0 >> FRONT [

	<generated>
	^ GL_FRONT
]

{ #category : #'constants - required' }
GLES1_0 >> FRONT_AND_BACK [

	<generated>
	^ GL_FRONT_AND_BACK
]

{ #category : #'constants - required' }
GLES1_0 >> FRONT_FACE [

	<generated>
	^ GL_FRONT_FACE
]

{ #category : #'constants - required' }
GLES1_0 >> GENERATE_MIPMAP [

	<generated>
	^ GL_GENERATE_MIPMAP
]

{ #category : #'constants - required' }
GLES1_0 >> GENERATE_MIPMAP_HINT [

	<generated>
	^ GL_GENERATE_MIPMAP_HINT
]

{ #category : #'constants - required' }
GLES1_0 >> GEQUAL [

	<generated>
	^ GL_GEQUAL
]

{ #category : #'constants - required' }
GLES1_0 >> GREATER [

	<generated>
	^ GL_GREATER
]

{ #category : #'constants - required' }
GLES1_0 >> GREEN_BITS [

	<generated>
	^ GL_GREEN_BITS
]

{ #category : #'constants - required' }
GLES1_0 >> INCR [

	<generated>
	^ GL_INCR
]

{ #category : #'constants - required' }
GLES1_0 >> INTERPOLATE [

	<generated>
	^ GL_INTERPOLATE
]

{ #category : #'constants - required' }
GLES1_0 >> INVALID_ENUM [

	<generated>
	^ GL_INVALID_ENUM
]

{ #category : #'constants - required' }
GLES1_0 >> INVALID_OPERATION [

	<generated>
	^ GL_INVALID_OPERATION
]

{ #category : #'constants - required' }
GLES1_0 >> INVALID_VALUE [

	<generated>
	^ GL_INVALID_VALUE
]

{ #category : #'constants - required' }
GLES1_0 >> INVERT [

	<generated>
	^ GL_INVERT
]

{ #category : #'constants - required' }
GLES1_0 >> KEEP [

	<generated>
	^ GL_KEEP
]

{ #category : #'constants - required' }
GLES1_0 >> LEQUAL [

	<generated>
	^ GL_LEQUAL
]

{ #category : #'constants - required' }
GLES1_0 >> LESS [

	<generated>
	^ GL_LESS
]

{ #category : #'constants - required' }
GLES1_0 >> LIGHT0 [

	<generated>
	^ GL_LIGHT0
]

{ #category : #'constants - required' }
GLES1_0 >> LIGHT1 [

	<generated>
	^ GL_LIGHT1
]

{ #category : #'constants - required' }
GLES1_0 >> LIGHT2 [

	<generated>
	^ GL_LIGHT2
]

{ #category : #'constants - required' }
GLES1_0 >> LIGHT3 [

	<generated>
	^ GL_LIGHT3
]

{ #category : #'constants - required' }
GLES1_0 >> LIGHT4 [

	<generated>
	^ GL_LIGHT4
]

{ #category : #'constants - required' }
GLES1_0 >> LIGHT5 [

	<generated>
	^ GL_LIGHT5
]

{ #category : #'constants - required' }
GLES1_0 >> LIGHT6 [

	<generated>
	^ GL_LIGHT6
]

{ #category : #'constants - required' }
GLES1_0 >> LIGHT7 [

	<generated>
	^ GL_LIGHT7
]

{ #category : #'constants - required' }
GLES1_0 >> LIGHTING [

	<generated>
	^ GL_LIGHTING
]

{ #category : #'constants - required' }
GLES1_0 >> LIGHT_MODEL_AMBIENT [

	<generated>
	^ GL_LIGHT_MODEL_AMBIENT
]

{ #category : #'constants - required' }
GLES1_0 >> LIGHT_MODEL_TWO_SIDE [

	<generated>
	^ GL_LIGHT_MODEL_TWO_SIDE
]

{ #category : #'constants - required' }
GLES1_0 >> LINEAR [

	<generated>
	^ GL_LINEAR
]

{ #category : #'constants - required' }
GLES1_0 >> LINEAR_ATTENUATION [

	<generated>
	^ GL_LINEAR_ATTENUATION
]

{ #category : #'constants - required' }
GLES1_0 >> LINEAR_MIPMAP_LINEAR [

	<generated>
	^ GL_LINEAR_MIPMAP_LINEAR
]

{ #category : #'constants - required' }
GLES1_0 >> LINEAR_MIPMAP_NEAREST [

	<generated>
	^ GL_LINEAR_MIPMAP_NEAREST
]

{ #category : #'constants - required' }
GLES1_0 >> LINES [

	<generated>
	^ GL_LINES
]

{ #category : #'constants - required' }
GLES1_0 >> LINE_LOOP [

	<generated>
	^ GL_LINE_LOOP
]

{ #category : #'constants - required' }
GLES1_0 >> LINE_SMOOTH [

	<generated>
	^ GL_LINE_SMOOTH
]

{ #category : #'constants - required' }
GLES1_0 >> LINE_SMOOTH_HINT [

	<generated>
	^ GL_LINE_SMOOTH_HINT
]

{ #category : #'constants - required' }
GLES1_0 >> LINE_STRIP [

	<generated>
	^ GL_LINE_STRIP
]

{ #category : #'constants - required' }
GLES1_0 >> LINE_WIDTH [

	<generated>
	^ GL_LINE_WIDTH
]

{ #category : #'constants - required' }
GLES1_0 >> LOGIC_OP_MODE [

	<generated>
	^ GL_LOGIC_OP_MODE
]

{ #category : #'constants - required' }
GLES1_0 >> LUMINANCE [

	<generated>
	^ GL_LUMINANCE
]

{ #category : #'constants - required' }
GLES1_0 >> LUMINANCE_ALPHA [

	<generated>
	^ GL_LUMINANCE_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> MATRIX_MODE [

	<generated>
	^ GL_MATRIX_MODE
]

{ #category : #'constants - required' }
GLES1_0 >> MAX_CLIP_PLANES [

	<generated>
	^ GL_MAX_CLIP_PLANES
]

{ #category : #'constants - required' }
GLES1_0 >> MAX_LIGHTS [

	<generated>
	^ GL_MAX_LIGHTS
]

{ #category : #'constants - required' }
GLES1_0 >> MAX_MODELVIEW_STACK_DEPTH [

	<generated>
	^ GL_MAX_MODELVIEW_STACK_DEPTH
]

{ #category : #'constants - required' }
GLES1_0 >> MAX_PROJECTION_STACK_DEPTH [

	<generated>
	^ GL_MAX_PROJECTION_STACK_DEPTH
]

{ #category : #'constants - required' }
GLES1_0 >> MAX_TEXTURE_SIZE [

	<generated>
	^ GL_MAX_TEXTURE_SIZE
]

{ #category : #'constants - required' }
GLES1_0 >> MAX_TEXTURE_STACK_DEPTH [

	<generated>
	^ GL_MAX_TEXTURE_STACK_DEPTH
]

{ #category : #'constants - required' }
GLES1_0 >> MAX_TEXTURE_UNITS [

	<generated>
	^ GL_MAX_TEXTURE_UNITS
]

{ #category : #'constants - required' }
GLES1_0 >> MAX_VIEWPORT_DIMS [

	<generated>
	^ GL_MAX_VIEWPORT_DIMS
]

{ #category : #'constants - required' }
GLES1_0 >> MODELVIEW [

	<generated>
	^ GL_MODELVIEW
]

{ #category : #'constants - required' }
GLES1_0 >> MODELVIEW_MATRIX [

	<generated>
	^ GL_MODELVIEW_MATRIX
]

{ #category : #'constants - required' }
GLES1_0 >> MODELVIEW_STACK_DEPTH [

	<generated>
	^ GL_MODELVIEW_STACK_DEPTH
]

{ #category : #'constants - required' }
GLES1_0 >> MODULATE [

	<generated>
	^ GL_MODULATE
]

{ #category : #'constants - required' }
GLES1_0 >> MULTISAMPLE [

	<generated>
	^ GL_MULTISAMPLE
]

{ #category : #'constants - required' }
GLES1_0 >> NAND [

	<generated>
	^ GL_NAND
]

{ #category : #'constants - required' }
GLES1_0 >> NEAREST [

	<generated>
	^ GL_NEAREST
]

{ #category : #'constants - required' }
GLES1_0 >> NEAREST_MIPMAP_LINEAR [

	<generated>
	^ GL_NEAREST_MIPMAP_LINEAR
]

{ #category : #'constants - required' }
GLES1_0 >> NEAREST_MIPMAP_NEAREST [

	<generated>
	^ GL_NEAREST_MIPMAP_NEAREST
]

{ #category : #'constants - required' }
GLES1_0 >> NEVER [

	<generated>
	^ GL_NEVER
]

{ #category : #'constants - required' }
GLES1_0 >> NICEST [

	<generated>
	^ GL_NICEST
]

{ #category : #'constants - required' }
GLES1_0 >> NOOP [

	<generated>
	^ GL_NOOP
]

{ #category : #'constants - required' }
GLES1_0 >> NOR [

	<generated>
	^ GL_NOR
]

{ #category : #'constants - required' }
GLES1_0 >> NORMALIZE [

	<generated>
	^ GL_NORMALIZE
]

{ #category : #'constants - required' }
GLES1_0 >> NORMAL_ARRAY [

	<generated>
	^ GL_NORMAL_ARRAY
]

{ #category : #'constants - required' }
GLES1_0 >> NORMAL_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_NORMAL_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - required' }
GLES1_0 >> NORMAL_ARRAY_POINTER [

	<generated>
	^ GL_NORMAL_ARRAY_POINTER
]

{ #category : #'constants - required' }
GLES1_0 >> NORMAL_ARRAY_STRIDE [

	<generated>
	^ GL_NORMAL_ARRAY_STRIDE
]

{ #category : #'constants - required' }
GLES1_0 >> NORMAL_ARRAY_TYPE [

	<generated>
	^ GL_NORMAL_ARRAY_TYPE
]

{ #category : #'constants - required' }
GLES1_0 >> NOTEQUAL [

	<generated>
	^ GL_NOTEQUAL
]

{ #category : #'constants - required' }
GLES1_0 >> NO_ERROR [

	<generated>
	^ GL_NO_ERROR
]

{ #category : #'constants - required' }
GLES1_0 >> NUM_COMPRESSED_TEXTURE_FORMATS [

	<generated>
	^ GL_NUM_COMPRESSED_TEXTURE_FORMATS
]

{ #category : #'constants - required' }
GLES1_0 >> ONE [

	<generated>
	^ GL_ONE
]

{ #category : #'constants - required' }
GLES1_0 >> ONE_MINUS_DST_ALPHA [

	<generated>
	^ GL_ONE_MINUS_DST_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> ONE_MINUS_DST_COLOR [

	<generated>
	^ GL_ONE_MINUS_DST_COLOR
]

{ #category : #'constants - required' }
GLES1_0 >> ONE_MINUS_SRC_ALPHA [

	<generated>
	^ GL_ONE_MINUS_SRC_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> ONE_MINUS_SRC_COLOR [

	<generated>
	^ GL_ONE_MINUS_SRC_COLOR
]

{ #category : #'constants - required' }
GLES1_0 >> OPERAND0_ALPHA [

	<generated>
	^ GL_OPERAND0_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> OPERAND0_RGB [

	<generated>
	^ GL_OPERAND0_RGB
]

{ #category : #'constants - required' }
GLES1_0 >> OPERAND1_ALPHA [

	<generated>
	^ GL_OPERAND1_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> OPERAND1_RGB [

	<generated>
	^ GL_OPERAND1_RGB
]

{ #category : #'constants - required' }
GLES1_0 >> OPERAND2_ALPHA [

	<generated>
	^ GL_OPERAND2_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> OPERAND2_RGB [

	<generated>
	^ GL_OPERAND2_RGB
]

{ #category : #'constants - required' }
GLES1_0 >> OR [

	<generated>
	^ GL_OR
]

{ #category : #'constants - required' }
GLES1_0 >> OR_INVERTED [

	<generated>
	^ GL_OR_INVERTED
]

{ #category : #'constants - required' }
GLES1_0 >> OR_REVERSE [

	<generated>
	^ GL_OR_REVERSE
]

{ #category : #'constants - required' }
GLES1_0 >> OUT_OF_MEMORY [

	<generated>
	^ GL_OUT_OF_MEMORY
]

{ #category : #'constants - required' }
GLES1_0 >> PACK_ALIGNMENT [

	<generated>
	^ GL_PACK_ALIGNMENT
]

{ #category : #'constants - required' }
GLES1_0 >> PERSPECTIVE_CORRECTION_HINT [

	<generated>
	^ GL_PERSPECTIVE_CORRECTION_HINT
]

{ #category : #'constants - required' }
GLES1_0 >> POINTS [

	<generated>
	^ GL_POINTS
]

{ #category : #'constants - required' }
GLES1_0 >> POINT_DISTANCE_ATTENUATION [

	<generated>
	^ GL_POINT_DISTANCE_ATTENUATION
]

{ #category : #'constants - required' }
GLES1_0 >> POINT_FADE_THRESHOLD_SIZE [

	<generated>
	^ GL_POINT_FADE_THRESHOLD_SIZE
]

{ #category : #'constants - required' }
GLES1_0 >> POINT_SIZE [

	<generated>
	^ GL_POINT_SIZE
]

{ #category : #'constants - required' }
GLES1_0 >> POINT_SIZE_MAX [

	<generated>
	^ GL_POINT_SIZE_MAX
]

{ #category : #'constants - required' }
GLES1_0 >> POINT_SIZE_MIN [

	<generated>
	^ GL_POINT_SIZE_MIN
]

{ #category : #'constants - required' }
GLES1_0 >> POINT_SMOOTH [

	<generated>
	^ GL_POINT_SMOOTH
]

{ #category : #'constants - required' }
GLES1_0 >> POINT_SMOOTH_HINT [

	<generated>
	^ GL_POINT_SMOOTH_HINT
]

{ #category : #'constants - required' }
GLES1_0 >> POLYGON_OFFSET_FACTOR [

	<generated>
	^ GL_POLYGON_OFFSET_FACTOR
]

{ #category : #'constants - required' }
GLES1_0 >> POLYGON_OFFSET_FILL [

	<generated>
	^ GL_POLYGON_OFFSET_FILL
]

{ #category : #'constants - required' }
GLES1_0 >> POLYGON_OFFSET_UNITS [

	<generated>
	^ GL_POLYGON_OFFSET_UNITS
]

{ #category : #'constants - required' }
GLES1_0 >> POSITION [

	<generated>
	^ GL_POSITION
]

{ #category : #'constants - required' }
GLES1_0 >> PREVIOUS [

	<generated>
	^ GL_PREVIOUS
]

{ #category : #'constants - required' }
GLES1_0 >> PRIMARY_COLOR [

	<generated>
	^ GL_PRIMARY_COLOR
]

{ #category : #'constants - required' }
GLES1_0 >> PROJECTION [

	<generated>
	^ GL_PROJECTION
]

{ #category : #'constants - required' }
GLES1_0 >> PROJECTION_MATRIX [

	<generated>
	^ GL_PROJECTION_MATRIX
]

{ #category : #'constants - required' }
GLES1_0 >> PROJECTION_STACK_DEPTH [

	<generated>
	^ GL_PROJECTION_STACK_DEPTH
]

{ #category : #'constants - required' }
GLES1_0 >> QUADRATIC_ATTENUATION [

	<generated>
	^ GL_QUADRATIC_ATTENUATION
]

{ #category : #'constants - required' }
GLES1_0 >> RED_BITS [

	<generated>
	^ GL_RED_BITS
]

{ #category : #'constants - required' }
GLES1_0 >> RENDERER [

	<generated>
	^ GL_RENDERER
]

{ #category : #'constants - required' }
GLES1_0 >> REPEAT [

	<generated>
	^ GL_REPEAT
]

{ #category : #'constants - required' }
GLES1_0 >> REPLACE [

	<generated>
	^ GL_REPLACE
]

{ #category : #'constants - required' }
GLES1_0 >> RESCALE_NORMAL [

	<generated>
	^ GL_RESCALE_NORMAL
]

{ #category : #'constants - required' }
GLES1_0 >> RGB [

	<generated>
	^ GL_RGB
]

{ #category : #'constants - required' }
GLES1_0 >> RGBA [

	<generated>
	^ GL_RGBA
]

{ #category : #'constants - required' }
GLES1_0 >> RGB_SCALE [

	<generated>
	^ GL_RGB_SCALE
]

{ #category : #'constants - required' }
GLES1_0 >> SAMPLES [

	<generated>
	^ GL_SAMPLES
]

{ #category : #'constants - required' }
GLES1_0 >> SAMPLE_ALPHA_TO_COVERAGE [

	<generated>
	^ GL_SAMPLE_ALPHA_TO_COVERAGE
]

{ #category : #'constants - required' }
GLES1_0 >> SAMPLE_ALPHA_TO_ONE [

	<generated>
	^ GL_SAMPLE_ALPHA_TO_ONE
]

{ #category : #'constants - required' }
GLES1_0 >> SAMPLE_BUFFERS [

	<generated>
	^ GL_SAMPLE_BUFFERS
]

{ #category : #'constants - required' }
GLES1_0 >> SAMPLE_COVERAGE [

	<generated>
	^ GL_SAMPLE_COVERAGE
]

{ #category : #'constants - required' }
GLES1_0 >> SAMPLE_COVERAGE_INVERT [

	<generated>
	^ GL_SAMPLE_COVERAGE_INVERT
]

{ #category : #'constants - required' }
GLES1_0 >> SAMPLE_COVERAGE_VALUE [

	<generated>
	^ GL_SAMPLE_COVERAGE_VALUE
]

{ #category : #'constants - required' }
GLES1_0 >> SCISSOR_BOX [

	<generated>
	^ GL_SCISSOR_BOX
]

{ #category : #'constants - required' }
GLES1_0 >> SCISSOR_TEST [

	<generated>
	^ GL_SCISSOR_TEST
]

{ #category : #'constants - required' }
GLES1_0 >> SET [

	<generated>
	^ GL_SET
]

{ #category : #'constants - required' }
GLES1_0 >> SHADE_MODEL [

	<generated>
	^ GL_SHADE_MODEL
]

{ #category : #'constants - required' }
GLES1_0 >> SHININESS [

	<generated>
	^ GL_SHININESS
]

{ #category : #'constants - required' }
GLES1_0 >> SHORT [

	<generated>
	^ GL_SHORT
]

{ #category : #'constants - required' }
GLES1_0 >> SMOOTH [

	<generated>
	^ GL_SMOOTH
]

{ #category : #'constants - required' }
GLES1_0 >> SMOOTH_LINE_WIDTH_RANGE [

	<generated>
	^ GL_SMOOTH_LINE_WIDTH_RANGE
]

{ #category : #'constants - required' }
GLES1_0 >> SMOOTH_POINT_SIZE_RANGE [

	<generated>
	^ GL_SMOOTH_POINT_SIZE_RANGE
]

{ #category : #'constants - required' }
GLES1_0 >> SPECULAR [

	<generated>
	^ GL_SPECULAR
]

{ #category : #'constants - required' }
GLES1_0 >> SPOT_CUTOFF [

	<generated>
	^ GL_SPOT_CUTOFF
]

{ #category : #'constants - required' }
GLES1_0 >> SPOT_DIRECTION [

	<generated>
	^ GL_SPOT_DIRECTION
]

{ #category : #'constants - required' }
GLES1_0 >> SPOT_EXPONENT [

	<generated>
	^ GL_SPOT_EXPONENT
]

{ #category : #'constants - required' }
GLES1_0 >> SRC0_ALPHA [

	<generated>
	^ GL_SRC0_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> SRC0_RGB [

	<generated>
	^ GL_SRC0_RGB
]

{ #category : #'constants - required' }
GLES1_0 >> SRC1_ALPHA [

	<generated>
	^ GL_SRC1_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> SRC1_RGB [

	<generated>
	^ GL_SRC1_RGB
]

{ #category : #'constants - required' }
GLES1_0 >> SRC2_ALPHA [

	<generated>
	^ GL_SRC2_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> SRC2_RGB [

	<generated>
	^ GL_SRC2_RGB
]

{ #category : #'constants - required' }
GLES1_0 >> SRC_ALPHA [

	<generated>
	^ GL_SRC_ALPHA
]

{ #category : #'constants - required' }
GLES1_0 >> SRC_ALPHA_SATURATE [

	<generated>
	^ GL_SRC_ALPHA_SATURATE
]

{ #category : #'constants - required' }
GLES1_0 >> SRC_COLOR [

	<generated>
	^ GL_SRC_COLOR
]

{ #category : #'constants - required' }
GLES1_0 >> STACK_OVERFLOW [

	<generated>
	^ GL_STACK_OVERFLOW
]

{ #category : #'constants - required' }
GLES1_0 >> STACK_UNDERFLOW [

	<generated>
	^ GL_STACK_UNDERFLOW
]

{ #category : #'constants - required' }
GLES1_0 >> STATIC_DRAW [

	<generated>
	^ GL_STATIC_DRAW
]

{ #category : #'constants - required' }
GLES1_0 >> STENCIL_BITS [

	<generated>
	^ GL_STENCIL_BITS
]

{ #category : #'constants - required' }
GLES1_0 >> STENCIL_BUFFER_BIT [

	<generated>
	^ GL_STENCIL_BUFFER_BIT
]

{ #category : #'constants - required' }
GLES1_0 >> STENCIL_CLEAR_VALUE [

	<generated>
	^ GL_STENCIL_CLEAR_VALUE
]

{ #category : #'constants - required' }
GLES1_0 >> STENCIL_FAIL [

	<generated>
	^ GL_STENCIL_FAIL
]

{ #category : #'constants - required' }
GLES1_0 >> STENCIL_FUNC [

	<generated>
	^ GL_STENCIL_FUNC
]

{ #category : #'constants - required' }
GLES1_0 >> STENCIL_PASS_DEPTH_FAIL [

	<generated>
	^ GL_STENCIL_PASS_DEPTH_FAIL
]

{ #category : #'constants - required' }
GLES1_0 >> STENCIL_PASS_DEPTH_PASS [

	<generated>
	^ GL_STENCIL_PASS_DEPTH_PASS
]

{ #category : #'constants - required' }
GLES1_0 >> STENCIL_REF [

	<generated>
	^ GL_STENCIL_REF
]

{ #category : #'constants - required' }
GLES1_0 >> STENCIL_TEST [

	<generated>
	^ GL_STENCIL_TEST
]

{ #category : #'constants - required' }
GLES1_0 >> STENCIL_VALUE_MASK [

	<generated>
	^ GL_STENCIL_VALUE_MASK
]

{ #category : #'constants - required' }
GLES1_0 >> STENCIL_WRITEMASK [

	<generated>
	^ GL_STENCIL_WRITEMASK
]

{ #category : #'constants - required' }
GLES1_0 >> SUBPIXEL_BITS [

	<generated>
	^ GL_SUBPIXEL_BITS
]

{ #category : #'constants - required' }
GLES1_0 >> SUBTRACT [

	<generated>
	^ GL_SUBTRACT
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE [

	<generated>
	^ GL_TEXTURE
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE0 [

	<generated>
	^ GL_TEXTURE0
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE1 [

	<generated>
	^ GL_TEXTURE1
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE10 [

	<generated>
	^ GL_TEXTURE10
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE11 [

	<generated>
	^ GL_TEXTURE11
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE12 [

	<generated>
	^ GL_TEXTURE12
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE13 [

	<generated>
	^ GL_TEXTURE13
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE14 [

	<generated>
	^ GL_TEXTURE14
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE15 [

	<generated>
	^ GL_TEXTURE15
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE16 [

	<generated>
	^ GL_TEXTURE16
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE17 [

	<generated>
	^ GL_TEXTURE17
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE18 [

	<generated>
	^ GL_TEXTURE18
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE19 [

	<generated>
	^ GL_TEXTURE19
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE2 [

	<generated>
	^ GL_TEXTURE2
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE20 [

	<generated>
	^ GL_TEXTURE20
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE21 [

	<generated>
	^ GL_TEXTURE21
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE22 [

	<generated>
	^ GL_TEXTURE22
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE23 [

	<generated>
	^ GL_TEXTURE23
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE24 [

	<generated>
	^ GL_TEXTURE24
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE25 [

	<generated>
	^ GL_TEXTURE25
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE26 [

	<generated>
	^ GL_TEXTURE26
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE27 [

	<generated>
	^ GL_TEXTURE27
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE28 [

	<generated>
	^ GL_TEXTURE28
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE29 [

	<generated>
	^ GL_TEXTURE29
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE3 [

	<generated>
	^ GL_TEXTURE3
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE30 [

	<generated>
	^ GL_TEXTURE30
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE31 [

	<generated>
	^ GL_TEXTURE31
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE4 [

	<generated>
	^ GL_TEXTURE4
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE5 [

	<generated>
	^ GL_TEXTURE5
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE6 [

	<generated>
	^ GL_TEXTURE6
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE7 [

	<generated>
	^ GL_TEXTURE7
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE8 [

	<generated>
	^ GL_TEXTURE8
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE9 [

	<generated>
	^ GL_TEXTURE9
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_2D [

	<generated>
	^ GL_TEXTURE_2D
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_BINDING_2D [

	<generated>
	^ GL_TEXTURE_BINDING_2D
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_COORD_ARRAY [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_COORD_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_COORD_ARRAY_POINTER [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_POINTER
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_COORD_ARRAY_SIZE [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_SIZE
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_COORD_ARRAY_STRIDE [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_STRIDE
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_COORD_ARRAY_TYPE [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_TYPE
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_ENV [

	<generated>
	^ GL_TEXTURE_ENV
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_ENV_COLOR [

	<generated>
	^ GL_TEXTURE_ENV_COLOR
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_ENV_MODE [

	<generated>
	^ GL_TEXTURE_ENV_MODE
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_MAG_FILTER [

	<generated>
	^ GL_TEXTURE_MAG_FILTER
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_MATRIX [

	<generated>
	^ GL_TEXTURE_MATRIX
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_MIN_FILTER [

	<generated>
	^ GL_TEXTURE_MIN_FILTER
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_STACK_DEPTH [

	<generated>
	^ GL_TEXTURE_STACK_DEPTH
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_WRAP_S [

	<generated>
	^ GL_TEXTURE_WRAP_S
]

{ #category : #'constants - required' }
GLES1_0 >> TEXTURE_WRAP_T [

	<generated>
	^ GL_TEXTURE_WRAP_T
]

{ #category : #'constants - required' }
GLES1_0 >> TRIANGLES [

	<generated>
	^ GL_TRIANGLES
]

{ #category : #'constants - required' }
GLES1_0 >> TRIANGLE_FAN [

	<generated>
	^ GL_TRIANGLE_FAN
]

{ #category : #'constants - required' }
GLES1_0 >> TRIANGLE_STRIP [

	<generated>
	^ GL_TRIANGLE_STRIP
]

{ #category : #'constants - required' }
GLES1_0 >> TRUE [

	<generated>
	^ GL_TRUE
]

{ #category : #'constants - required' }
GLES1_0 >> UNPACK_ALIGNMENT [

	<generated>
	^ GL_UNPACK_ALIGNMENT
]

{ #category : #'constants - required' }
GLES1_0 >> UNSIGNED_BYTE [

	<generated>
	^ GL_UNSIGNED_BYTE
]

{ #category : #'constants - required' }
GLES1_0 >> UNSIGNED_SHORT [

	<generated>
	^ GL_UNSIGNED_SHORT
]

{ #category : #'constants - required' }
GLES1_0 >> UNSIGNED_SHORT_4_4_4_4 [

	<generated>
	^ GL_UNSIGNED_SHORT_4_4_4_4
]

{ #category : #'constants - required' }
GLES1_0 >> UNSIGNED_SHORT_5_5_5_1 [

	<generated>
	^ GL_UNSIGNED_SHORT_5_5_5_1
]

{ #category : #'constants - required' }
GLES1_0 >> UNSIGNED_SHORT_5_6_5 [

	<generated>
	^ GL_UNSIGNED_SHORT_5_6_5
]

{ #category : #'constants - required' }
GLES1_0 >> VENDOR [

	<generated>
	^ GL_VENDOR
]

{ #category : #'constants - required' }
GLES1_0 >> VERSION [

	<generated>
	^ GL_VERSION
]

{ #category : #'constants - required' }
GLES1_0 >> VERSION_ES_CL_1_0 [

	<generated>
	^ GL_VERSION_ES_CL_1_0
]

{ #category : #'constants - required' }
GLES1_0 >> VERSION_ES_CL_1_1 [

	<generated>
	^ GL_VERSION_ES_CL_1_1
]

{ #category : #'constants - required' }
GLES1_0 >> VERSION_ES_CM_1_1 [

	<generated>
	^ GL_VERSION_ES_CM_1_1
]

{ #category : #'constants - required' }
GLES1_0 >> VERTEX_ARRAY [

	<generated>
	^ GL_VERTEX_ARRAY
]

{ #category : #'constants - required' }
GLES1_0 >> VERTEX_ARRAY_BUFFER_BINDING [

	<generated>
	^ GL_VERTEX_ARRAY_BUFFER_BINDING
]

{ #category : #'constants - required' }
GLES1_0 >> VERTEX_ARRAY_POINTER [

	<generated>
	^ GL_VERTEX_ARRAY_POINTER
]

{ #category : #'constants - required' }
GLES1_0 >> VERTEX_ARRAY_SIZE [

	<generated>
	^ GL_VERTEX_ARRAY_SIZE
]

{ #category : #'constants - required' }
GLES1_0 >> VERTEX_ARRAY_STRIDE [

	<generated>
	^ GL_VERTEX_ARRAY_STRIDE
]

{ #category : #'constants - required' }
GLES1_0 >> VERTEX_ARRAY_TYPE [

	<generated>
	^ GL_VERTEX_ARRAY_TYPE
]

{ #category : #'constants - required' }
GLES1_0 >> VIEWPORT [

	<generated>
	^ GL_VIEWPORT
]

{ #category : #'constants - required' }
GLES1_0 >> XOR [

	<generated>
	^ GL_XOR
]

{ #category : #'constants - required' }
GLES1_0 >> ZERO [

	<generated>
	^ GL_ZERO
]

{ #category : #'api - required' }
GLES1_0 >> activeTexture: texture [

	<generated>
	<apicall: void 'glActiveTexture' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> alphaFunc: func with: ref [
	"Note: Only available in #common profile"
	<apicall: void 'glAlphaFunc' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> alphaFuncx: func with: ref [

	<generated>
	<apicall: void 'glAlphaFuncx' (GLenum GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> bindBuffer: target with: buffer [

	<generated>
	<apicall: void 'glBindBuffer' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> bindTexture: target with: texture [

	<generated>
	<apicall: void 'glBindTexture' (GLenum GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> blendFunc: sfactor with: dfactor [

	<generated>
	<apicall: void 'glBlendFunc' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> bufferData: target with: size with: data with: usage [

	<generated>
	<apicall: void 'glBufferData' (GLenum GLsizeiptr void* GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> bufferSubData: target with: offset with: size with: data [

	<generated>
	<apicall: void 'glBufferSubData' (GLenum GLintptr GLsizeiptr void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> clear: mask [

	<generated>
	<apicall: void 'glClear' (GLbitfield)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> clearColor: red with: green with: blue with: alpha [
	"Note: Only available in #common profile"
	<apicall: void 'glClearColor' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> clearColorx: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glClearColorx' (GLfixed GLfixed GLfixed GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> clearDepthf: d [
	"Note: Only available in #common profile"
	<apicall: void 'glClearDepthf' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> clearDepthx: depth [

	<generated>
	<apicall: void 'glClearDepthx' (GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> clearStencil: s [

	<generated>
	<apicall: void 'glClearStencil' (GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> clientActiveTexture: texture [

	<generated>
	<apicall: void 'glClientActiveTexture' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> clipPlanef: p with: eqn [
	"Note: Only available in #common profile"
	<apicall: void 'glClipPlanef' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> clipPlanex: plane with: equation [

	<generated>
	<apicall: void 'glClipPlanex' (GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> color4f: red with: green with: blue with: alpha [
	"Note: Only available in #common profile"
	<apicall: void 'glColor4f' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> color4ub: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4ub' (GLubyte GLubyte GLubyte GLubyte)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> color4x: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColor4x' (GLfixed GLfixed GLfixed GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> colorMask: red with: green with: blue with: alpha [

	<generated>
	<apicall: void 'glColorMask' (GLboolean GLboolean GLboolean GLboolean)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> colorPointer: size with: type with: stride with: pointer [

	<generated>
	<apicall: void 'glColorPointer' (GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> compressedTexImage2D: target with: level with: internalformat with: width with: height with: border with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTexImage2D' (GLenum GLint GLenum GLsizei GLsizei GLint GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> compressedTexSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: imageSize with: data [

	<generated>
	<apicall: void 'glCompressedTexSubImage2D' (GLenum GLint GLint GLint GLsizei GLsizei GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> copyTexImage2D: target with: level with: internalformat with: x with: y with: width with: height with: border [

	<generated>
	<apicall: void 'glCopyTexImage2D' (GLenum GLint GLenum GLint GLint GLsizei GLsizei GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> copyTexSubImage2D: target with: level with: xoffset with: yoffset with: x with: y with: width with: height [

	<generated>
	<apicall: void 'glCopyTexSubImage2D' (GLenum GLint GLint GLint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> cullFace: mode [

	<generated>
	<apicall: void 'glCullFace' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> deleteBuffers: n with: buffers [

	<generated>
	<apicall: void 'glDeleteBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> deleteTextures: n with: textures [

	<generated>
	<apicall: void 'glDeleteTextures' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> depthFunc: func [

	<generated>
	<apicall: void 'glDepthFunc' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> depthMask: flag [

	<generated>
	<apicall: void 'glDepthMask' (GLboolean)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> depthRangef: n with: f [
	"Note: Only available in #common profile"
	<apicall: void 'glDepthRangef' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> depthRangex: n with: f [

	<generated>
	<apicall: void 'glDepthRangex' (GLfixed GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> disable: cap [

	<generated>
	<apicall: void 'glDisable' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> disableClientState: array [

	<generated>
	<apicall: void 'glDisableClientState' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> drawArrays: mode with: first with: count [

	<generated>
	<apicall: void 'glDrawArrays' (GLenum GLint GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> drawElements: mode with: count with: type with: indices [

	<generated>
	<apicall: void 'glDrawElements' (GLenum GLsizei GLenum void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> enable: cap [

	<generated>
	<apicall: void 'glEnable' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> enableClientState: array [

	<generated>
	<apicall: void 'glEnableClientState' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> finish [

	<generated>
	<apicall: void 'glFinish' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> flush [

	<generated>
	<apicall: void 'glFlush' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> fogf: pname with: param [
	"Note: Only available in #common profile"
	<apicall: void 'glFogf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> fogfv: pname with: params [
	"Note: Only available in #common profile"
	<apicall: void 'glFogfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> fogx: pname with: param [

	<generated>
	<apicall: void 'glFogx' (GLenum GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> fogxv: pname with: param [

	<generated>
	<apicall: void 'glFogxv' (GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> frontFace: mode [

	<generated>
	<apicall: void 'glFrontFace' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> frustumf: l with: r with: b with: t with: n with: f [
	"Note: Only available in #common profile"
	<apicall: void 'glFrustumf' (GLfloat GLfloat GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> frustumx: l with: r with: b with: t with: n with: f [

	<generated>
	<apicall: void 'glFrustumx' (GLfixed GLfixed GLfixed GLfixed GLfixed GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> genBuffers: n with: buffers [

	<generated>
	<apicall: void 'glGenBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> genTextures: n with: textures [

	<generated>
	<apicall: void 'glGenTextures' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getBooleanv: pname with: data [

	<generated>
	<apicall: void 'glGetBooleanv' (GLenum GLboolean*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getBufferParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetBufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getClipPlanef: plane with: equation [
	"Note: Only available in #common profile"
	<apicall: void 'glGetClipPlanef' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getClipPlanex: plane with: equation [

	<generated>
	<apicall: void 'glGetClipPlanex' (GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getError [

	<generated>
	<apicall: GLenum 'glGetError' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getFixedv: pname with: params [

	<generated>
	<apicall: void 'glGetFixedv' (GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getFloatv: pname with: data [
	"Note: Only available in #common profile"
	<apicall: void 'glGetFloatv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getIntegerv: pname with: data [

	<generated>
	<apicall: void 'glGetIntegerv' (GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getLightfv: light with: pname with: params [
	"Note: Only available in #common profile"
	<apicall: void 'glGetLightfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getLightxv: light with: pname with: params [

	<generated>
	<apicall: void 'glGetLightxv' (GLenum GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getMaterialfv: face with: pname with: params [
	"Note: Only available in #common profile"
	<apicall: void 'glGetMaterialfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getMaterialxv: face with: pname with: params [

	<generated>
	<apicall: void 'glGetMaterialxv' (GLenum GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getPointerv: pname with: params [

	<generated>
	<apicall: void 'glGetPointerv' (GLenum void**)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getString: name [

	<generated>
	<apicall: GLubyte* 'glGetString' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getTexEnvfv: target with: pname with: params [
	"Note: Only available in #common profile"
	<apicall: void 'glGetTexEnvfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getTexEnviv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexEnviv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getTexEnvxv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexEnvxv' (GLenum GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getTexParameterfv: target with: pname with: params [
	"Note: Only available in #common profile"
	<apicall: void 'glGetTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getTexParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> getTexParameterxv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetTexParameterxv' (GLenum GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #parameters }
GLES1_0 >> getVersion [

	| versionString tokens |
	versionString := self getVersionString.
	"OpenGL ES-XX N.M" "XX={CM,CL}"
	tokens := versionString findTokens: '. '.
	^ { tokens third asInteger . tokens fourth asInteger }
]

{ #category : #'api - required' }
GLES1_0 >> hint: target with: mode [

	<generated>
	<apicall: void 'glHint' (GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> isBuffer: buffer [

	<generated>
	<apicall: GLboolean 'glIsBuffer' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> isEnabled: cap [

	<generated>
	<apicall: GLboolean 'glIsEnabled' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> isTexture: texture [

	<generated>
	<apicall: GLboolean 'glIsTexture' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> lightModelf: pname with: param [
	"Note: Only available in #common profile"
	<apicall: void 'glLightModelf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> lightModelfv: pname with: params [
	"Note: Only available in #common profile"
	<apicall: void 'glLightModelfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> lightModelx: pname with: param [

	<generated>
	<apicall: void 'glLightModelx' (GLenum GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> lightModelxv: pname with: param [

	<generated>
	<apicall: void 'glLightModelxv' (GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> lightf: light with: pname with: param [
	"Note: Only available in #common profile"
	<apicall: void 'glLightf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> lightfv: light with: pname with: params [
	"Note: Only available in #common profile"
	<apicall: void 'glLightfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> lightx: light with: pname with: param [

	<generated>
	<apicall: void 'glLightx' (GLenum GLenum GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> lightxv: light with: pname with: params [

	<generated>
	<apicall: void 'glLightxv' (GLenum GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> lineWidth: width [
	"Note: Only available in #common profile"
	<apicall: void 'glLineWidth' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> lineWidthx: width [

	<generated>
	<apicall: void 'glLineWidthx' (GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> loadIdentity [

	<generated>
	<apicall: void 'glLoadIdentity' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> loadMatrixf: m [
	"Note: Only available in #common profile"
	<apicall: void 'glLoadMatrixf' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> loadMatrixx: m [

	<generated>
	<apicall: void 'glLoadMatrixx' (GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> logicOp: opcode [

	<generated>
	<apicall: void 'glLogicOp' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> materialf: face with: pname with: param [
	"Note: Only available in #common profile"
	<apicall: void 'glMaterialf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> materialfv: face with: pname with: params [
	"Note: Only available in #common profile"
	<apicall: void 'glMaterialfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> materialx: face with: pname with: param [

	<generated>
	<apicall: void 'glMaterialx' (GLenum GLenum GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> materialxv: face with: pname with: param [

	<generated>
	<apicall: void 'glMaterialxv' (GLenum GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> matrixMode: mode [

	<generated>
	<apicall: void 'glMatrixMode' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> multMatrixf: m [
	"Note: Only available in #common profile"
	<apicall: void 'glMultMatrixf' (GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> multMatrixx: m [

	<generated>
	<apicall: void 'glMultMatrixx' (GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> multiTexCoord4f: target with: s with: t with: r with: q [
	"Note: Only available in #common profile"
	<apicall: void 'glMultiTexCoord4f' (GLenum GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> multiTexCoord4x: texture with: s with: t with: r with: q [

	<generated>
	<apicall: void 'glMultiTexCoord4x' (GLenum GLfixed GLfixed GLfixed GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> normal3f: nx with: ny with: nz [
	"Note: Only available in #common profile"
	<apicall: void 'glNormal3f' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> normal3x: nx with: ny with: nz [

	<generated>
	<apicall: void 'glNormal3x' (GLfixed GLfixed GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> normalPointer: type with: stride with: pointer [

	<generated>
	<apicall: void 'glNormalPointer' (GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> orthof: l with: r with: b with: t with: n with: f [
	"Note: Only available in #common profile"
	<apicall: void 'glOrthof' (GLfloat GLfloat GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> orthox: l with: r with: b with: t with: n with: f [

	<generated>
	<apicall: void 'glOrthox' (GLfixed GLfixed GLfixed GLfixed GLfixed GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> pixelStorei: pname with: param [

	<generated>
	<apicall: void 'glPixelStorei' (GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> pointParameterf: pname with: param [
	"Note: Only available in #common profile"
	<apicall: void 'glPointParameterf' (GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> pointParameterfv: pname with: params [
	"Note: Only available in #common profile"
	<apicall: void 'glPointParameterfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> pointParameterx: pname with: param [

	<generated>
	<apicall: void 'glPointParameterx' (GLenum GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> pointParameterxv: pname with: params [

	<generated>
	<apicall: void 'glPointParameterxv' (GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> pointSize: size [
	"Note: Only available in #common profile"
	<apicall: void 'glPointSize' (GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> pointSizex: size [

	<generated>
	<apicall: void 'glPointSizex' (GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> polygonOffset: factor with: units [
	"Note: Only available in #common profile"
	<apicall: void 'glPolygonOffset' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> polygonOffsetx: factor with: units [

	<generated>
	<apicall: void 'glPolygonOffsetx' (GLfixed GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> popMatrix [

	<generated>
	<apicall: void 'glPopMatrix' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> pushMatrix [

	<generated>
	<apicall: void 'glPushMatrix' ()>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> readPixels: x with: y with: width with: height with: format with: type with: pixels [

	<generated>
	<apicall: void 'glReadPixels' (GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> rotatef: angle with: x with: y with: z [
	"Note: Only available in #common profile"
	<apicall: void 'glRotatef' (GLfloat GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> rotatex: angle with: x with: y with: z [

	<generated>
	<apicall: void 'glRotatex' (GLfixed GLfixed GLfixed GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> sampleCoverage: value with: invert [

	<generated>
	<apicall: void 'glSampleCoverage' (GLfloat GLboolean)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> sampleCoveragex: value with: invert [

	<generated>
	<apicall: void 'glSampleCoveragex' (GLclampx GLboolean)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> scalef: x with: y with: z [
	"Note: Only available in #common profile"
	<apicall: void 'glScalef' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> scalex: x with: y with: z [

	<generated>
	<apicall: void 'glScalex' (GLfixed GLfixed GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> scissor: x with: y with: width with: height [

	<generated>
	<apicall: void 'glScissor' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> shadeModel: mode [

	<generated>
	<apicall: void 'glShadeModel' (GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> stencilFunc: func with: ref with: mask [

	<generated>
	<apicall: void 'glStencilFunc' (GLenum GLint GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> stencilMask: mask [

	<generated>
	<apicall: void 'glStencilMask' (GLuint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> stencilOp: fail with: zfail with: zpass [

	<generated>
	<apicall: void 'glStencilOp' (GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texCoordPointer: size with: type with: stride with: pointer [

	<generated>
	<apicall: void 'glTexCoordPointer' (GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texEnvf: target with: pname with: param [
	"Note: Only available in #common profile"
	<apicall: void 'glTexEnvf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texEnvfv: target with: pname with: params [
	"Note: Only available in #common profile"
	<apicall: void 'glTexEnvfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texEnvi: target with: pname with: param [

	<generated>
	<apicall: void 'glTexEnvi' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texEnviv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexEnviv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texEnvx: target with: pname with: param [

	<generated>
	<apicall: void 'glTexEnvx' (GLenum GLenum GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texEnvxv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexEnvxv' (GLenum GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texImage2D: target with: level with: internalformat with: width with: height with: border with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexImage2D' (GLenum GLint GLint GLsizei GLsizei GLint GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texParameterf: target with: pname with: param [
	"Note: Only available in #common profile"
	<apicall: void 'glTexParameterf' (GLenum GLenum GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texParameterfv: target with: pname with: params [
	"Note: Only available in #common profile"
	<apicall: void 'glTexParameterfv' (GLenum GLenum GLfloat*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texParameteri: target with: pname with: param [

	<generated>
	<apicall: void 'glTexParameteri' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texParameterx: target with: pname with: param [

	<generated>
	<apicall: void 'glTexParameterx' (GLenum GLenum GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texParameterxv: target with: pname with: params [

	<generated>
	<apicall: void 'glTexParameterxv' (GLenum GLenum GLfixed*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> texSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexSubImage2D' (GLenum GLint GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> translatef: x with: y with: z [
	"Note: Only available in #common profile"
	<apicall: void 'glTranslatef' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> translatex: x with: y with: z [

	<generated>
	<apicall: void 'glTranslatex' (GLfixed GLfixed GLfixed)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> vertexPointer: size with: type with: stride with: pointer [

	<generated>
	<apicall: void 'glVertexPointer' (GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GLES1_0 >> viewport: x with: y with: width with: height [

	<generated>
	<apicall: void 'glViewport' (GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]
