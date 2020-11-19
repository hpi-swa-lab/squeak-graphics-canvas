Class {
	#name : #'GL4_6',
	#superclass : #'GL4_5',
	#category : #'OpenGL-API-GL'
}

{ #category : #accessing }
GL4_6 class >> majorVersion [

	^ 4
]

{ #category : #accessing }
GL4_6 class >> minorVersion [

	^ 6
]

{ #category : #accessing }
GL4_6 class >> versionNumber [

	^ 46
]

{ #category : #'constants - required' }
GL4_6 >> CLIPPING_INPUT_PRIMITIVES [

	<generated>
	^ GL_CLIPPING_INPUT_PRIMITIVES
]

{ #category : #'constants - required' }
GL4_6 >> CLIPPING_OUTPUT_PRIMITIVES [

	<generated>
	^ GL_CLIPPING_OUTPUT_PRIMITIVES
]

{ #category : #'constants - required' }
GL4_6 >> COMPUTE_SHADER_INVOCATIONS [

	<generated>
	^ GL_COMPUTE_SHADER_INVOCATIONS
]

{ #category : #'constants - required' }
GL4_6 >> CONTEXT_FLAG_NO_ERROR_BIT [

	<generated>
	^ GL_CONTEXT_FLAG_NO_ERROR_BIT
]

{ #category : #'constants - required' }
GL4_6 >> CONTEXT_RELEASE_BEHAVIOR [

	<generated>
	^ GL_CONTEXT_RELEASE_BEHAVIOR
]

{ #category : #'constants - required' }
GL4_6 >> CONTEXT_RELEASE_BEHAVIOR_FLUSH [

	<generated>
	^ GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH
]

{ #category : #'constants - required' }
GL4_6 >> FRAGMENT_SHADER_INVOCATIONS [

	<generated>
	^ GL_FRAGMENT_SHADER_INVOCATIONS
]

{ #category : #'constants - required' }
GL4_6 >> GEOMETRY_SHADER_INVOCATIONS [

	<generated>
	^ GL_GEOMETRY_SHADER_INVOCATIONS
]

{ #category : #'constants - required' }
GL4_6 >> GEOMETRY_SHADER_PRIMITIVES_EMITTED [

	<generated>
	^ GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED
]

{ #category : #'constants - required' }
GL4_6 >> MAX_TEXTURE_MAX_ANISOTROPY [

	<generated>
	^ GL_MAX_TEXTURE_MAX_ANISOTROPY
]

{ #category : #'constants - required' }
GL4_6 >> NONE [

	<generated>
	^ GL_NONE
]

{ #category : #'constants - required' }
GL4_6 >> NUM_SPIR_V_EXTENSIONS [

	<generated>
	^ GL_NUM_SPIR_V_EXTENSIONS
]

{ #category : #'constants - required' }
GL4_6 >> PARAMETER_BUFFER [

	<generated>
	^ GL_PARAMETER_BUFFER
]

{ #category : #'constants - required' }
GL4_6 >> PARAMETER_BUFFER_BINDING [

	<generated>
	^ GL_PARAMETER_BUFFER_BINDING
]

{ #category : #'constants - required' }
GL4_6 >> POLYGON_OFFSET_CLAMP [

	<generated>
	^ GL_POLYGON_OFFSET_CLAMP
]

{ #category : #'constants - required' }
GL4_6 >> PRIMITIVES_SUBMITTED [

	<generated>
	^ GL_PRIMITIVES_SUBMITTED
]

{ #category : #'constants - required' }
GL4_6 >> SHADER_BINARY_FORMAT_SPIR_V [

	<generated>
	^ GL_SHADER_BINARY_FORMAT_SPIR_V
]

{ #category : #'constants - required' }
GL4_6 >> SPIR_V_BINARY [

	<generated>
	^ GL_SPIR_V_BINARY
]

{ #category : #'constants - required' }
GL4_6 >> SPIR_V_EXTENSIONS [

	<generated>
	^ GL_SPIR_V_EXTENSIONS
]

{ #category : #'constants - required' }
GL4_6 >> TESS_CONTROL_SHADER_PATCHES [

	<generated>
	^ GL_TESS_CONTROL_SHADER_PATCHES
]

{ #category : #'constants - required' }
GL4_6 >> TESS_EVALUATION_SHADER_INVOCATIONS [

	<generated>
	^ GL_TESS_EVALUATION_SHADER_INVOCATIONS
]

{ #category : #'constants - required' }
GL4_6 >> TEXTURE_MAX_ANISOTROPY [

	<generated>
	^ GL_TEXTURE_MAX_ANISOTROPY
]

{ #category : #'constants - required' }
GL4_6 >> TRANSFORM_FEEDBACK_OVERFLOW [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_OVERFLOW
]

{ #category : #'constants - required' }
GL4_6 >> TRANSFORM_FEEDBACK_STREAM_OVERFLOW [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW
]

{ #category : #'constants - required' }
GL4_6 >> VERTEX_SHADER_INVOCATIONS [

	<generated>
	^ GL_VERTEX_SHADER_INVOCATIONS
]

{ #category : #'constants - required' }
GL4_6 >> VERTICES_SUBMITTED [

	<generated>
	^ GL_VERTICES_SUBMITTED
]

{ #category : #'api - required' }
GL4_6 >> multiDrawArraysIndirectCount: mode with: indirect with: drawcount with: maxdrawcount with: stride [

	<generated>
	<apicall: void 'glMultiDrawArraysIndirectCount' (GLenum void* GLintptr GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL4_6 >> multiDrawElementsIndirectCount: mode with: type with: indirect with: drawcount with: maxdrawcount with: stride [

	<generated>
	<apicall: void 'glMultiDrawElementsIndirectCount' (GLenum GLenum void* GLintptr GLsizei GLsizei)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL4_6 >> polygonOffsetClamp: factor with: units with: clamp [

	<generated>
	<apicall: void 'glPolygonOffsetClamp' (GLfloat GLfloat GLfloat)>
	^ self externalCallFailed
]

{ #category : #'api - required' }
GL4_6 >> specializeShader: shader with: pEntryPoint with: numSpecializationConstants with: pConstantIndex with: pConstantValue [

	<generated>
	<apicall: void 'glSpecializeShader' (GLuint GLchar* GLuint GLuint* GLuint*)>
	^ self externalCallFailed
]
