Class {
	#name : #GL46Core,
	#superclass : #GL45Core,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL46Core class >> majorVersion [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL46Core class >> minorVersion [

	^ 6
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:53'
}
GL46Core class >> versionNumber [

	^ 46
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> CLIPPING_INPUT_PRIMITIVES [

	<generated>
	^ GL_CLIPPING_INPUT_PRIMITIVES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> CLIPPING_OUTPUT_PRIMITIVES [

	<generated>
	^ GL_CLIPPING_OUTPUT_PRIMITIVES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> COMPUTE_SHADER_INVOCATIONS [

	<generated>
	^ GL_COMPUTE_SHADER_INVOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> CONTEXT_FLAG_NO_ERROR_BIT [

	<generated>
	^ GL_CONTEXT_FLAG_NO_ERROR_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> CONTEXT_RELEASE_BEHAVIOR [

	<generated>
	^ GL_CONTEXT_RELEASE_BEHAVIOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> CONTEXT_RELEASE_BEHAVIOR_FLUSH [

	<generated>
	^ GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> FRAGMENT_SHADER_INVOCATIONS [

	<generated>
	^ GL_FRAGMENT_SHADER_INVOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> GEOMETRY_SHADER_INVOCATIONS [

	<generated>
	^ GL_GEOMETRY_SHADER_INVOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> GEOMETRY_SHADER_PRIMITIVES_EMITTED [

	<generated>
	^ GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> MAX_TEXTURE_MAX_ANISOTROPY [

	<generated>
	^ GL_MAX_TEXTURE_MAX_ANISOTROPY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> NONE [

	<generated>
	^ GL_NONE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> NUM_SPIR_V_EXTENSIONS [

	<generated>
	^ GL_NUM_SPIR_V_EXTENSIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> PARAMETER_BUFFER [

	<generated>
	^ GL_PARAMETER_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> PARAMETER_BUFFER_BINDING [

	<generated>
	^ GL_PARAMETER_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> POLYGON_OFFSET_CLAMP [

	<generated>
	^ GL_POLYGON_OFFSET_CLAMP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> PRIMITIVES_SUBMITTED [

	<generated>
	^ GL_PRIMITIVES_SUBMITTED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> SHADER_BINARY_FORMAT_SPIR_V [

	<generated>
	^ GL_SHADER_BINARY_FORMAT_SPIR_V
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> SPIR_V_BINARY [

	<generated>
	^ GL_SPIR_V_BINARY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> SPIR_V_EXTENSIONS [

	<generated>
	^ GL_SPIR_V_EXTENSIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> TESS_CONTROL_SHADER_PATCHES [

	<generated>
	^ GL_TESS_CONTROL_SHADER_PATCHES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> TESS_EVALUATION_SHADER_INVOCATIONS [

	<generated>
	^ GL_TESS_EVALUATION_SHADER_INVOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> TEXTURE_MAX_ANISOTROPY [

	<generated>
	^ GL_TEXTURE_MAX_ANISOTROPY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> TRANSFORM_FEEDBACK_OVERFLOW [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_OVERFLOW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> TRANSFORM_FEEDBACK_STREAM_OVERFLOW [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> VERTEX_SHADER_INVOCATIONS [

	<generated>
	^ GL_VERTEX_SHADER_INVOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> VERTICES_SUBMITTED [

	<generated>
	^ GL_VERTICES_SUBMITTED
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> multiDrawArraysIndirectCount: mode with: indirect with: drawcount with: maxdrawcount with: stride [

	<generated>
	<apicall: void 'glMultiDrawArraysIndirectCount' (GLenum void* GLintptr GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> multiDrawElementsIndirectCount: mode with: type with: indirect with: drawcount with: maxdrawcount with: stride [

	<generated>
	<apicall: void 'glMultiDrawElementsIndirectCount' (GLenum GLenum void* GLintptr GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> polygonOffsetClamp: factor with: units with: clamp [

	<generated>
	<apicall: void 'glPolygonOffsetClamp' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL46Core >> specializeShader: shader with: pEntryPoint with: numSpecializationConstants with: pConstantIndex with: pConstantValue [

	<generated>
	<apicall: void 'glSpecializeShader' (GLuint GLchar* GLuint GLuint* GLuint*)>
	^ self externalCallFailed
]
