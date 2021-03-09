Class {
	#name : #GL11,
	#superclass : #GL10,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL11 class >> majorVersion [

	^ 1
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL11 class >> minorVersion [

	^ 1
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:50'
}
GL11 class >> versionNumber [

	^ 11
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> ALPHA12 [

	<generated>
	^ GL_ALPHA12
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> ALPHA16 [

	<generated>
	^ GL_ALPHA16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> ALPHA4 [

	<generated>
	^ GL_ALPHA4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> ALPHA8 [

	<generated>
	^ GL_ALPHA8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> C3F_V3F [

	<generated>
	^ GL_C3F_V3F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> C4F_N3F_V3F [

	<generated>
	^ GL_C4F_N3F_V3F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> C4UB_V2F [

	<generated>
	^ GL_C4UB_V2F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> C4UB_V3F [

	<generated>
	^ GL_C4UB_V3F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> CLIENT_ALL_ATTRIB_BITS [

	<generated>
	^ GL_CLIENT_ALL_ATTRIB_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> CLIENT_ATTRIB_STACK_DEPTH [

	<generated>
	^ GL_CLIENT_ATTRIB_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> CLIENT_PIXEL_STORE_BIT [

	<generated>
	^ GL_CLIENT_PIXEL_STORE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> CLIENT_VERTEX_ARRAY_BIT [

	<generated>
	^ GL_CLIENT_VERTEX_ARRAY_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> COLOR_ARRAY [

	<generated>
	^ GL_COLOR_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> COLOR_ARRAY_POINTER [

	<generated>
	^ GL_COLOR_ARRAY_POINTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> COLOR_ARRAY_SIZE [

	<generated>
	^ GL_COLOR_ARRAY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> COLOR_ARRAY_STRIDE [

	<generated>
	^ GL_COLOR_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> COLOR_ARRAY_TYPE [

	<generated>
	^ GL_COLOR_ARRAY_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> COLOR_LOGIC_OP [

	<generated>
	^ GL_COLOR_LOGIC_OP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> DOUBLE [

	<generated>
	^ GL_DOUBLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> EDGE_FLAG_ARRAY [

	<generated>
	^ GL_EDGE_FLAG_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> EDGE_FLAG_ARRAY_POINTER [

	<generated>
	^ GL_EDGE_FLAG_ARRAY_POINTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> EDGE_FLAG_ARRAY_STRIDE [

	<generated>
	^ GL_EDGE_FLAG_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> FEEDBACK_BUFFER_POINTER [

	<generated>
	^ GL_FEEDBACK_BUFFER_POINTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> FEEDBACK_BUFFER_SIZE [

	<generated>
	^ GL_FEEDBACK_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> FEEDBACK_BUFFER_TYPE [

	<generated>
	^ GL_FEEDBACK_BUFFER_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> INDEX_ARRAY [

	<generated>
	^ GL_INDEX_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> INDEX_ARRAY_POINTER [

	<generated>
	^ GL_INDEX_ARRAY_POINTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> INDEX_ARRAY_STRIDE [

	<generated>
	^ GL_INDEX_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> INDEX_ARRAY_TYPE [

	<generated>
	^ GL_INDEX_ARRAY_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> INDEX_LOGIC_OP [

	<generated>
	^ GL_INDEX_LOGIC_OP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> INTENSITY [

	<generated>
	^ GL_INTENSITY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> INTENSITY12 [

	<generated>
	^ GL_INTENSITY12
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> INTENSITY16 [

	<generated>
	^ GL_INTENSITY16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> INTENSITY4 [

	<generated>
	^ GL_INTENSITY4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> INTENSITY8 [

	<generated>
	^ GL_INTENSITY8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> LUMINANCE12 [

	<generated>
	^ GL_LUMINANCE12
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> LUMINANCE12_ALPHA12 [

	<generated>
	^ GL_LUMINANCE12_ALPHA12
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> LUMINANCE12_ALPHA4 [

	<generated>
	^ GL_LUMINANCE12_ALPHA4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> LUMINANCE16 [

	<generated>
	^ GL_LUMINANCE16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> LUMINANCE16_ALPHA16 [

	<generated>
	^ GL_LUMINANCE16_ALPHA16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> LUMINANCE4 [

	<generated>
	^ GL_LUMINANCE4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> LUMINANCE4_ALPHA4 [

	<generated>
	^ GL_LUMINANCE4_ALPHA4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> LUMINANCE6_ALPHA2 [

	<generated>
	^ GL_LUMINANCE6_ALPHA2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> LUMINANCE8 [

	<generated>
	^ GL_LUMINANCE8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> LUMINANCE8_ALPHA8 [

	<generated>
	^ GL_LUMINANCE8_ALPHA8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> MAX_CLIENT_ATTRIB_STACK_DEPTH [

	<generated>
	^ GL_MAX_CLIENT_ATTRIB_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> N3F_V3F [

	<generated>
	^ GL_N3F_V3F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> NORMAL_ARRAY [

	<generated>
	^ GL_NORMAL_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> NORMAL_ARRAY_POINTER [

	<generated>
	^ GL_NORMAL_ARRAY_POINTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> NORMAL_ARRAY_STRIDE [

	<generated>
	^ GL_NORMAL_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> NORMAL_ARRAY_TYPE [

	<generated>
	^ GL_NORMAL_ARRAY_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> POLYGON_OFFSET_FACTOR [

	<generated>
	^ GL_POLYGON_OFFSET_FACTOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> POLYGON_OFFSET_FILL [

	<generated>
	^ GL_POLYGON_OFFSET_FILL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> POLYGON_OFFSET_LINE [

	<generated>
	^ GL_POLYGON_OFFSET_LINE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> POLYGON_OFFSET_POINT [

	<generated>
	^ GL_POLYGON_OFFSET_POINT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> POLYGON_OFFSET_UNITS [

	<generated>
	^ GL_POLYGON_OFFSET_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> PROXY_TEXTURE_1D [

	<generated>
	^ GL_PROXY_TEXTURE_1D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> PROXY_TEXTURE_2D [

	<generated>
	^ GL_PROXY_TEXTURE_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> R3_G3_B2 [

	<generated>
	^ GL_R3_G3_B2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGB10 [

	<generated>
	^ GL_RGB10
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGB10_A2 [

	<generated>
	^ GL_RGB10_A2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGB12 [

	<generated>
	^ GL_RGB12
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGB16 [

	<generated>
	^ GL_RGB16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGB4 [

	<generated>
	^ GL_RGB4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGB5 [

	<generated>
	^ GL_RGB5
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGB5_A1 [

	<generated>
	^ GL_RGB5_A1
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGB8 [

	<generated>
	^ GL_RGB8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGBA12 [

	<generated>
	^ GL_RGBA12
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGBA16 [

	<generated>
	^ GL_RGBA16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGBA2 [

	<generated>
	^ GL_RGBA2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGBA4 [

	<generated>
	^ GL_RGBA4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> RGBA8 [

	<generated>
	^ GL_RGBA8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> SELECTION_BUFFER_POINTER [

	<generated>
	^ GL_SELECTION_BUFFER_POINTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> SELECTION_BUFFER_SIZE [

	<generated>
	^ GL_SELECTION_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> T2F_C3F_V3F [

	<generated>
	^ GL_T2F_C3F_V3F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> T2F_C4F_N3F_V3F [

	<generated>
	^ GL_T2F_C4F_N3F_V3F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> T2F_C4UB_V3F [

	<generated>
	^ GL_T2F_C4UB_V3F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> T2F_N3F_V3F [

	<generated>
	^ GL_T2F_N3F_V3F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> T2F_V3F [

	<generated>
	^ GL_T2F_V3F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> T4F_C4F_N3F_V4F [

	<generated>
	^ GL_T4F_C4F_N3F_V4F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> T4F_V4F [

	<generated>
	^ GL_T4F_V4F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_ALPHA_SIZE [

	<generated>
	^ GL_TEXTURE_ALPHA_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_BINDING_1D [

	<generated>
	^ GL_TEXTURE_BINDING_1D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_BINDING_2D [

	<generated>
	^ GL_TEXTURE_BINDING_2D
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_BLUE_SIZE [

	<generated>
	^ GL_TEXTURE_BLUE_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_COORD_ARRAY [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_COORD_ARRAY_POINTER [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_POINTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_COORD_ARRAY_SIZE [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_COORD_ARRAY_STRIDE [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_COORD_ARRAY_TYPE [

	<generated>
	^ GL_TEXTURE_COORD_ARRAY_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_GREEN_SIZE [

	<generated>
	^ GL_TEXTURE_GREEN_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_INTENSITY_SIZE [

	<generated>
	^ GL_TEXTURE_INTENSITY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_INTERNAL_FORMAT [

	<generated>
	^ GL_TEXTURE_INTERNAL_FORMAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_LUMINANCE_SIZE [

	<generated>
	^ GL_TEXTURE_LUMINANCE_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_PRIORITY [

	<generated>
	^ GL_TEXTURE_PRIORITY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_RED_SIZE [

	<generated>
	^ GL_TEXTURE_RED_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> TEXTURE_RESIDENT [

	<generated>
	^ GL_TEXTURE_RESIDENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> V2F [

	<generated>
	^ GL_V2F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> V3F [

	<generated>
	^ GL_V3F
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> VERTEX_ARRAY [

	<generated>
	^ GL_VERTEX_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> VERTEX_ARRAY_POINTER [

	<generated>
	^ GL_VERTEX_ARRAY_POINTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> VERTEX_ARRAY_SIZE [

	<generated>
	^ GL_VERTEX_ARRAY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> VERTEX_ARRAY_STRIDE [

	<generated>
	^ GL_VERTEX_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> VERTEX_ARRAY_TYPE [

	<generated>
	^ GL_VERTEX_ARRAY_TYPE
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> areTexturesResident: n with: textures with: residences [

	<generated>
	<apicall: GLboolean 'glAreTexturesResident' (GLsizei GLuint* GLboolean*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> arrayElement: i [

	<generated>
	<apicall: void 'glArrayElement' (GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> bindTexture: target with: texture [

	<generated>
	<apicall: void 'glBindTexture' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> colorPointer: size with: type with: stride with: pointer [

	<generated>
	<apicall: void 'glColorPointer' (GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> copyTexImage1D: target with: level with: internalformat with: x with: y with: width with: border [

	<generated>
	<apicall: void 'glCopyTexImage1D' (GLenum GLint GLenum GLint GLint GLsizei GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> copyTexImage2D: target with: level with: internalformat with: x with: y with: width with: height with: border [

	<generated>
	<apicall: void 'glCopyTexImage2D' (GLenum GLint GLenum GLint GLint GLsizei GLsizei GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> copyTexSubImage1D: target with: level with: xoffset with: x with: y with: width [

	<generated>
	<apicall: void 'glCopyTexSubImage1D' (GLenum GLint GLint GLint GLint GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> copyTexSubImage2D: target with: level with: xoffset with: yoffset with: x with: y with: width with: height [

	<generated>
	<apicall: void 'glCopyTexSubImage2D' (GLenum GLint GLint GLint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> deleteTextures: n with: textures [

	<generated>
	<apicall: void 'glDeleteTextures' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> disableClientState: array [

	<generated>
	<apicall: void 'glDisableClientState' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> drawArrays: mode with: first with: count [

	<generated>
	<apicall: void 'glDrawArrays' (GLenum GLint GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> drawElements: mode with: count with: type with: indices [

	<generated>
	<apicall: void 'glDrawElements' (GLenum GLsizei GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> edgeFlagPointer: stride with: pointer [

	<generated>
	<apicall: void 'glEdgeFlagPointer' (GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> enableClientState: array [

	<generated>
	<apicall: void 'glEnableClientState' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> genTextures: n with: textures [

	<generated>
	<apicall: void 'glGenTextures' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> getPointerv: pname with: params [

	<generated>
	<apicall: void 'glGetPointerv' (GLenum void**)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> indexPointer: type with: stride with: pointer [

	<generated>
	<apicall: void 'glIndexPointer' (GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> indexub: c [

	<generated>
	<apicall: void 'glIndexub' (GLubyte)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> indexubv: c [

	<generated>
	<apicall: void 'glIndexubv' (GLubyte*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> interleavedArrays: format with: stride with: pointer [

	<generated>
	<apicall: void 'glInterleavedArrays' (GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> isTexture: texture [

	<generated>
	<apicall: GLboolean 'glIsTexture' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> normalPointer: type with: stride with: pointer [

	<generated>
	<apicall: void 'glNormalPointer' (GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> polygonOffset: factor with: units [

	<generated>
	<apicall: void 'glPolygonOffset' (GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> popClientAttrib [

	<generated>
	<apicall: void 'glPopClientAttrib' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> prioritizeTextures: n with: textures with: priorities [

	<generated>
	<apicall: void 'glPrioritizeTextures' (GLsizei GLuint* GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> pushClientAttrib: mask [

	<generated>
	<apicall: void 'glPushClientAttrib' (GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> texCoordPointer: size with: type with: stride with: pointer [

	<generated>
	<apicall: void 'glTexCoordPointer' (GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> texSubImage1D: target with: level with: xoffset with: width with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexSubImage1D' (GLenum GLint GLint GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> texSubImage2D: target with: level with: xoffset with: yoffset with: width with: height with: format with: type with: pixels [

	<generated>
	<apicall: void 'glTexSubImage2D' (GLenum GLint GLint GLint GLsizei GLsizei GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL11 >> vertexPointer: size with: type with: stride with: pointer [

	<generated>
	<apicall: void 'glVertexPointer' (GLint GLenum GLsizei void*)>
	^ self externalCallFailed
]
