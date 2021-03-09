Class {
	#name : #GL21,
	#superclass : #GL20,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL21 class >> majorVersion [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL21 class >> minorVersion [

	^ 1
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:51'
}
GL21 class >> versionNumber [

	^ 21
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> COMPRESSED_SLUMINANCE [

	<generated>
	^ GL_COMPRESSED_SLUMINANCE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> COMPRESSED_SLUMINANCE_ALPHA [

	<generated>
	^ GL_COMPRESSED_SLUMINANCE_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> COMPRESSED_SRGB [

	<generated>
	^ GL_COMPRESSED_SRGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> COMPRESSED_SRGB_ALPHA [

	<generated>
	^ GL_COMPRESSED_SRGB_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> CURRENT_RASTER_SECONDARY_COLOR [

	<generated>
	^ GL_CURRENT_RASTER_SECONDARY_COLOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> FLOAT_MAT2x3 [

	<generated>
	^ GL_FLOAT_MAT2x3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> FLOAT_MAT2x4 [

	<generated>
	^ GL_FLOAT_MAT2x4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> FLOAT_MAT3x2 [

	<generated>
	^ GL_FLOAT_MAT3x2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> FLOAT_MAT3x4 [

	<generated>
	^ GL_FLOAT_MAT3x4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> FLOAT_MAT4x2 [

	<generated>
	^ GL_FLOAT_MAT4x2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> FLOAT_MAT4x3 [

	<generated>
	^ GL_FLOAT_MAT4x3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> PIXEL_PACK_BUFFER [

	<generated>
	^ GL_PIXEL_PACK_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> PIXEL_PACK_BUFFER_BINDING [

	<generated>
	^ GL_PIXEL_PACK_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> PIXEL_UNPACK_BUFFER [

	<generated>
	^ GL_PIXEL_UNPACK_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> PIXEL_UNPACK_BUFFER_BINDING [

	<generated>
	^ GL_PIXEL_UNPACK_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> SLUMINANCE [

	<generated>
	^ GL_SLUMINANCE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> SLUMINANCE8 [

	<generated>
	^ GL_SLUMINANCE8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> SLUMINANCE8_ALPHA8 [

	<generated>
	^ GL_SLUMINANCE8_ALPHA8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> SLUMINANCE_ALPHA [

	<generated>
	^ GL_SLUMINANCE_ALPHA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> SRGB [

	<generated>
	^ GL_SRGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> SRGB8 [

	<generated>
	^ GL_SRGB8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> SRGB8_ALPHA8 [

	<generated>
	^ GL_SRGB8_ALPHA8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> SRGB_ALPHA [

	<generated>
	^ GL_SRGB_ALPHA
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> uniformMatrix2x3fv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix2x3fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> uniformMatrix2x4fv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix2x4fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> uniformMatrix3x2fv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix3x2fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> uniformMatrix3x4fv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix3x4fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> uniformMatrix4x2fv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix4x2fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL21 >> uniformMatrix4x3fv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix4x3fv' (GLint GLsizei GLboolean GLfloat*)>
	^ self externalCallFailed
]
