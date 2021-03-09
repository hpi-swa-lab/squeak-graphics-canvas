Class {
	#name : #GL40Core,
	#superclass : #GL33Core,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL40Core class >> majorVersion [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL40Core class >> minorVersion [

	^ 0
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:52'
}
GL40Core class >> versionNumber [

	^ 40
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> ACTIVE_SUBROUTINES [

	<generated>
	^ GL_ACTIVE_SUBROUTINES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> ACTIVE_SUBROUTINE_MAX_LENGTH [

	<generated>
	^ GL_ACTIVE_SUBROUTINE_MAX_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> ACTIVE_SUBROUTINE_UNIFORMS [

	<generated>
	^ GL_ACTIVE_SUBROUTINE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS [

	<generated>
	^ GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH [

	<generated>
	^ GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> COMPATIBLE_SUBROUTINES [

	<generated>
	^ GL_COMPATIBLE_SUBROUTINES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DOUBLE_MAT2 [

	<generated>
	^ GL_DOUBLE_MAT2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DOUBLE_MAT2x3 [

	<generated>
	^ GL_DOUBLE_MAT2x3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DOUBLE_MAT2x4 [

	<generated>
	^ GL_DOUBLE_MAT2x4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DOUBLE_MAT3 [

	<generated>
	^ GL_DOUBLE_MAT3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DOUBLE_MAT3x2 [

	<generated>
	^ GL_DOUBLE_MAT3x2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DOUBLE_MAT3x4 [

	<generated>
	^ GL_DOUBLE_MAT3x4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DOUBLE_MAT4 [

	<generated>
	^ GL_DOUBLE_MAT4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DOUBLE_MAT4x2 [

	<generated>
	^ GL_DOUBLE_MAT4x2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DOUBLE_MAT4x3 [

	<generated>
	^ GL_DOUBLE_MAT4x3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DOUBLE_VEC2 [

	<generated>
	^ GL_DOUBLE_VEC2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DOUBLE_VEC3 [

	<generated>
	^ GL_DOUBLE_VEC3
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DOUBLE_VEC4 [

	<generated>
	^ GL_DOUBLE_VEC4
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DRAW_INDIRECT_BUFFER [

	<generated>
	^ GL_DRAW_INDIRECT_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> DRAW_INDIRECT_BUFFER_BINDING [

	<generated>
	^ GL_DRAW_INDIRECT_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> FRACTIONAL_EVEN [

	<generated>
	^ GL_FRACTIONAL_EVEN
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> FRACTIONAL_ODD [

	<generated>
	^ GL_FRACTIONAL_ODD
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> FRAGMENT_INTERPOLATION_OFFSET_BITS [

	<generated>
	^ GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> GEOMETRY_SHADER_INVOCATIONS [

	<generated>
	^ GL_GEOMETRY_SHADER_INVOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> INT_SAMPLER_CUBE_MAP_ARRAY [

	<generated>
	^ GL_INT_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> ISOLINES [

	<generated>
	^ GL_ISOLINES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_FRAGMENT_INTERPOLATION_OFFSET [

	<generated>
	^ GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_GEOMETRY_SHADER_INVOCATIONS [

	<generated>
	^ GL_MAX_GEOMETRY_SHADER_INVOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_PATCH_VERTICES [

	<generated>
	^ GL_MAX_PATCH_VERTICES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_PROGRAM_TEXTURE_GATHER_OFFSET [

	<generated>
	^ GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_SUBROUTINES [

	<generated>
	^ GL_MAX_SUBROUTINES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_SUBROUTINE_UNIFORM_LOCATIONS [

	<generated>
	^ GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_CONTROL_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_CONTROL_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_CONTROL_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_CONTROL_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_EVALUATION_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_EVALUATION_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_EVALUATION_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_EVALUATION_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_GEN_LEVEL [

	<generated>
	^ GL_MAX_TESS_GEN_LEVEL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TESS_PATCH_COMPONENTS [

	<generated>
	^ GL_MAX_TESS_PATCH_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_TRANSFORM_FEEDBACK_BUFFERS [

	<generated>
	^ GL_MAX_TRANSFORM_FEEDBACK_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MAX_VERTEX_STREAMS [

	<generated>
	^ GL_MAX_VERTEX_STREAMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MIN_FRAGMENT_INTERPOLATION_OFFSET [

	<generated>
	^ GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MIN_PROGRAM_TEXTURE_GATHER_OFFSET [

	<generated>
	^ GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> MIN_SAMPLE_SHADING_VALUE [

	<generated>
	^ GL_MIN_SAMPLE_SHADING_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> NUM_COMPATIBLE_SUBROUTINES [

	<generated>
	^ GL_NUM_COMPATIBLE_SUBROUTINES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> PATCHES [

	<generated>
	^ GL_PATCHES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> PATCH_DEFAULT_INNER_LEVEL [

	<generated>
	^ GL_PATCH_DEFAULT_INNER_LEVEL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> PATCH_DEFAULT_OUTER_LEVEL [

	<generated>
	^ GL_PATCH_DEFAULT_OUTER_LEVEL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> PATCH_VERTICES [

	<generated>
	^ GL_PATCH_VERTICES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> PROXY_TEXTURE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_PROXY_TEXTURE_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> QUADS [

	<generated>
	^ GL_QUADS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> SAMPLER_CUBE_MAP_ARRAY [

	<generated>
	^ GL_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> SAMPLER_CUBE_MAP_ARRAY_SHADOW [

	<generated>
	^ GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> SAMPLE_SHADING [

	<generated>
	^ GL_SAMPLE_SHADING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TESS_CONTROL_OUTPUT_VERTICES [

	<generated>
	^ GL_TESS_CONTROL_OUTPUT_VERTICES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TESS_CONTROL_SHADER [

	<generated>
	^ GL_TESS_CONTROL_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TESS_EVALUATION_SHADER [

	<generated>
	^ GL_TESS_EVALUATION_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TESS_GEN_MODE [

	<generated>
	^ GL_TESS_GEN_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TESS_GEN_POINT_MODE [

	<generated>
	^ GL_TESS_GEN_POINT_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TESS_GEN_SPACING [

	<generated>
	^ GL_TESS_GEN_SPACING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TESS_GEN_VERTEX_ORDER [

	<generated>
	^ GL_TESS_GEN_VERTEX_ORDER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TEXTURE_BINDING_CUBE_MAP_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TEXTURE_CUBE_MAP_ARRAY [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TRANSFORM_FEEDBACK [

	<generated>
	^ GL_TRANSFORM_FEEDBACK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TRANSFORM_FEEDBACK_BINDING [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TRANSFORM_FEEDBACK_BUFFER_ACTIVE [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> TRANSFORM_FEEDBACK_BUFFER_PAUSED [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER [

	<generated>
	^ GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER [

	<generated>
	^ GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> beginQueryIndexed: target with: index with: id [

	<generated>
	<apicall: void 'glBeginQueryIndexed' (GLenum GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> bindTransformFeedback: target with: id [

	<generated>
	<apicall: void 'glBindTransformFeedback' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> blendEquationSeparatei: buf with: modeRGB with: modeAlpha [

	<generated>
	<apicall: void 'glBlendEquationSeparatei' (GLuint GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> blendEquationi: buf with: mode [

	<generated>
	<apicall: void 'glBlendEquationi' (GLuint GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> blendFuncSeparatei: buf with: srcRGB with: dstRGB with: srcAlpha with: dstAlpha [

	<generated>
	<apicall: void 'glBlendFuncSeparatei' (GLuint GLenum GLenum GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> blendFunci: buf with: src with: dst [

	<generated>
	<apicall: void 'glBlendFunci' (GLuint GLenum GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> deleteTransformFeedbacks: n with: ids [

	<generated>
	<apicall: void 'glDeleteTransformFeedbacks' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> drawArraysIndirect: mode with: indirect [

	<generated>
	<apicall: void 'glDrawArraysIndirect' (GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> drawElementsIndirect: mode with: type with: indirect [

	<generated>
	<apicall: void 'glDrawElementsIndirect' (GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> drawTransformFeedback: mode with: id [

	<generated>
	<apicall: void 'glDrawTransformFeedback' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> drawTransformFeedbackStream: mode with: id with: stream [

	<generated>
	<apicall: void 'glDrawTransformFeedbackStream' (GLenum GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> endQueryIndexed: target with: index [

	<generated>
	<apicall: void 'glEndQueryIndexed' (GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> genTransformFeedbacks: n with: ids [

	<generated>
	<apicall: void 'glGenTransformFeedbacks' (GLsizei GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> getActiveSubroutineName: program with: shadertype with: index with: bufSize with: length with: name [

	<generated>
	<apicall: void 'glGetActiveSubroutineName' (GLuint GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> getActiveSubroutineUniformName: program with: shadertype with: index with: bufSize with: length with: name [

	<generated>
	<apicall: void 'glGetActiveSubroutineUniformName' (GLuint GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> getActiveSubroutineUniformiv: program with: shadertype with: index with: pname with: values [

	<generated>
	<apicall: void 'glGetActiveSubroutineUniformiv' (GLuint GLenum GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> getProgramStageiv: program with: shadertype with: pname with: values [

	<generated>
	<apicall: void 'glGetProgramStageiv' (GLuint GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> getQueryIndexediv: target with: index with: pname with: params [

	<generated>
	<apicall: void 'glGetQueryIndexediv' (GLenum GLuint GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> getSubroutineIndex: program with: shadertype with: name [

	<generated>
	<apicall: GLuint 'glGetSubroutineIndex' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> getSubroutineUniformLocation: program with: shadertype with: name [

	<generated>
	<apicall: GLint 'glGetSubroutineUniformLocation' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> getUniformSubroutineuiv: shadertype with: location with: params [

	<generated>
	<apicall: void 'glGetUniformSubroutineuiv' (GLenum GLint GLuint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> getUniformdv: program with: location with: params [

	<generated>
	<apicall: void 'glGetUniformdv' (GLuint GLint GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> isTransformFeedback: id [

	<generated>
	<apicall: GLboolean 'glIsTransformFeedback' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> minSampleShading: value [

	<generated>
	<apicall: void 'glMinSampleShading' (GLfloat)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> patchParameterfv: pname with: values [

	<generated>
	<apicall: void 'glPatchParameterfv' (GLenum GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> patchParameteri: pname with: value [

	<generated>
	<apicall: void 'glPatchParameteri' (GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> pauseTransformFeedback [

	<generated>
	<apicall: void 'glPauseTransformFeedback' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> resumeTransformFeedback [

	<generated>
	<apicall: void 'glResumeTransformFeedback' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniform1d: location with: x [

	<generated>
	<apicall: void 'glUniform1d' (GLint GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniform1dv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform1dv' (GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniform2d: location with: x with: y [

	<generated>
	<apicall: void 'glUniform2d' (GLint GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniform2dv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform2dv' (GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniform3d: location with: x with: y with: z [

	<generated>
	<apicall: void 'glUniform3d' (GLint GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniform3dv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform3dv' (GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniform4d: location with: x with: y with: z with: w [

	<generated>
	<apicall: void 'glUniform4d' (GLint GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniform4dv: location with: count with: value [

	<generated>
	<apicall: void 'glUniform4dv' (GLint GLsizei GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniformMatrix2dv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix2dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniformMatrix2x3dv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix2x3dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniformMatrix2x4dv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix2x4dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniformMatrix3dv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix3dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniformMatrix3x2dv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix3x2dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniformMatrix3x4dv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix3x4dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniformMatrix4dv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix4dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniformMatrix4x2dv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix4x2dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniformMatrix4x3dv: location with: count with: transpose with: value [

	<generated>
	<apicall: void 'glUniformMatrix4x3dv' (GLint GLsizei GLboolean GLdouble*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL40Core >> uniformSubroutinesuiv: shadertype with: count with: indices [

	<generated>
	<apicall: void 'glUniformSubroutinesuiv' (GLenum GLsizei GLuint*)>
	^ self externalCallFailed
]