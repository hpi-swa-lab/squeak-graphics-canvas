Class {
	#name : #GL32Compat,
	#superclass : #GL31,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 22:37'
}
GL32Compat class >> defaultProfile [

	^ #compatibility
]

{
	#category : #testing,
	#timestamp : 'stlu 2/18/2021 22:35'
}
GL32Compat class >> isProfile: aSymbol [

	^ #compatibility = aSymbol
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL32Compat class >> majorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL32Compat class >> minorVersion [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:52'
}
GL32Compat class >> versionNumber [

	^ 32
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> ALREADY_SIGNALED [

	<generated>
	^ GL_ALREADY_SIGNALED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> CONDITION_SATISFIED [

	<generated>
	^ GL_CONDITION_SATISFIED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> CONTEXT_COMPATIBILITY_PROFILE_BIT [

	<generated>
	^ GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> CONTEXT_CORE_PROFILE_BIT [

	<generated>
	^ GL_CONTEXT_CORE_PROFILE_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> CONTEXT_PROFILE_MASK [

	<generated>
	^ GL_CONTEXT_PROFILE_MASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> DEPTH_CLAMP [

	<generated>
	^ GL_DEPTH_CLAMP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> FIRST_VERTEX_CONVENTION [

	<generated>
	^ GL_FIRST_VERTEX_CONVENTION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> FRAMEBUFFER_ATTACHMENT_LAYERED [

	<generated>
	^ GL_FRAMEBUFFER_ATTACHMENT_LAYERED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS [

	<generated>
	^ GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> GEOMETRY_INPUT_TYPE [

	<generated>
	^ GL_GEOMETRY_INPUT_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> GEOMETRY_OUTPUT_TYPE [

	<generated>
	^ GL_GEOMETRY_OUTPUT_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> GEOMETRY_SHADER [

	<generated>
	^ GL_GEOMETRY_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> GEOMETRY_VERTICES_OUT [

	<generated>
	^ GL_GEOMETRY_VERTICES_OUT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> INT_SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_INT_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> INT_SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> LAST_VERTEX_CONVENTION [

	<generated>
	^ GL_LAST_VERTEX_CONVENTION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> LINES_ADJACENCY [

	<generated>
	^ GL_LINES_ADJACENCY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> LINE_STRIP_ADJACENCY [

	<generated>
	^ GL_LINE_STRIP_ADJACENCY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_COLOR_TEXTURE_SAMPLES [

	<generated>
	^ GL_MAX_COLOR_TEXTURE_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_DEPTH_TEXTURE_SAMPLES [

	<generated>
	^ GL_MAX_DEPTH_TEXTURE_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_FRAGMENT_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_FRAGMENT_INPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_GEOMETRY_INPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_INPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_GEOMETRY_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_GEOMETRY_OUTPUT_VERTICES [

	<generated>
	^ GL_MAX_GEOMETRY_OUTPUT_VERTICES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_GEOMETRY_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_GEOMETRY_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_INTEGER_SAMPLES [

	<generated>
	^ GL_MAX_INTEGER_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_SAMPLE_MASK_WORDS [

	<generated>
	^ GL_MAX_SAMPLE_MASK_WORDS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_SERVER_WAIT_TIMEOUT [

	<generated>
	^ GL_MAX_SERVER_WAIT_TIMEOUT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> MAX_VERTEX_OUTPUT_COMPONENTS [

	<generated>
	^ GL_MAX_VERTEX_OUTPUT_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> OBJECT_TYPE [

	<generated>
	^ GL_OBJECT_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> PROGRAM_POINT_SIZE [

	<generated>
	^ GL_PROGRAM_POINT_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> PROVOKING_VERTEX [

	<generated>
	^ GL_PROVOKING_VERTEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> PROXY_TEXTURE_2D_MULTISAMPLE [

	<generated>
	^ GL_PROXY_TEXTURE_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION [

	<generated>
	^ GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> SAMPLE_MASK [

	<generated>
	^ GL_SAMPLE_MASK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> SAMPLE_MASK_VALUE [

	<generated>
	^ GL_SAMPLE_MASK_VALUE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> SAMPLE_POSITION [

	<generated>
	^ GL_SAMPLE_POSITION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> SIGNALED [

	<generated>
	^ GL_SIGNALED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> SYNC_CONDITION [

	<generated>
	^ GL_SYNC_CONDITION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> SYNC_FENCE [

	<generated>
	^ GL_SYNC_FENCE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> SYNC_FLAGS [

	<generated>
	^ GL_SYNC_FLAGS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> SYNC_FLUSH_COMMANDS_BIT [

	<generated>
	^ GL_SYNC_FLUSH_COMMANDS_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> SYNC_GPU_COMMANDS_COMPLETE [

	<generated>
	^ GL_SYNC_GPU_COMMANDS_COMPLETE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> SYNC_STATUS [

	<generated>
	^ GL_SYNC_STATUS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> TEXTURE_2D_MULTISAMPLE [

	<generated>
	^ GL_TEXTURE_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> TEXTURE_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_TEXTURE_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> TEXTURE_BINDING_2D_MULTISAMPLE [

	<generated>
	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> TEXTURE_CUBE_MAP_SEAMLESS [

	<generated>
	^ GL_TEXTURE_CUBE_MAP_SEAMLESS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> TEXTURE_FIXED_SAMPLE_LOCATIONS [

	<generated>
	^ GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> TEXTURE_SAMPLES [

	<generated>
	^ GL_TEXTURE_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> TIMEOUT_EXPIRED [

	<generated>
	^ GL_TIMEOUT_EXPIRED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> TIMEOUT_IGNORED [

	<generated>
	^ GL_TIMEOUT_IGNORED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> TRIANGLES_ADJACENCY [

	<generated>
	^ GL_TRIANGLES_ADJACENCY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> TRIANGLE_STRIP_ADJACENCY [

	<generated>
	^ GL_TRIANGLE_STRIP_ADJACENCY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> UNSIGNALED [

	<generated>
	^ GL_UNSIGNALED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY [

	<generated>
	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> WAIT_FAILED [

	<generated>
	^ GL_WAIT_FAILED
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> clientWaitSync: sync with: flags with: timeout [

	<generated>
	<apicall: GLenum 'glClientWaitSync' (GLsync GLbitfield GLuint64)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> deleteSync: sync [

	<generated>
	<apicall: void 'glDeleteSync' (GLsync)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> drawElementsBaseVertex: mode with: count with: type with: indices with: basevertex [

	<generated>
	<apicall: void 'glDrawElementsBaseVertex' (GLenum GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> drawElementsInstancedBaseVertex: mode with: count with: type with: indices with: instancecount with: basevertex [

	<generated>
	<apicall: void 'glDrawElementsInstancedBaseVertex' (GLenum GLsizei GLenum void* GLsizei GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> drawRangeElementsBaseVertex: mode with: start with: end with: count with: type with: indices with: basevertex [

	<generated>
	<apicall: void 'glDrawRangeElementsBaseVertex' (GLenum GLuint GLuint GLsizei GLenum void* GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> fenceSync: condition with: flags [

	<generated>
	<apicall: GLsync 'glFenceSync' (GLenum GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> framebufferTexture: target with: attachment with: texture with: level [

	<generated>
	<apicall: void 'glFramebufferTexture' (GLenum GLenum GLuint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> getBufferParameteri64v: target with: pname with: params [

	<generated>
	<apicall: void 'glGetBufferParameteri64v' (GLenum GLenum GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> getInteger64i_v: target with: index with: data [

	<generated>
	<apicall: void 'glGetInteger64i_v' (GLenum GLuint GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> getInteger64v: pname with: data [

	<generated>
	<apicall: void 'glGetInteger64v' (GLenum GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> getMultisamplefv: pname with: index with: val [

	<generated>
	<apicall: void 'glGetMultisamplefv' (GLenum GLuint GLfloat*)>
	^ self externalCallFailed
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/12/2020 15:44'
}
GL32Compat >> getProfile [

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
GL32Compat >> getProfileMask [

	^ self getIntegerParameter: GL_CONTEXT_PROFILE_MASK
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> getSynciv: sync with: pname with: count with: length with: values [

	<generated>
	<apicall: void 'glGetSynciv' (GLsync GLenum GLsizei GLsizei* GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> isSync: sync [

	<generated>
	<apicall: GLboolean 'glIsSync' (GLsync)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> multiDrawElementsBaseVertex: mode with: count with: type with: indices with: drawcount with: basevertex [

	<generated>
	<apicall: void 'glMultiDrawElementsBaseVertex' (GLenum GLsizei* GLenum void** GLsizei GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> provokingVertex: mode [

	<generated>
	<apicall: void 'glProvokingVertex' (GLenum)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> sampleMaski: maskNumber with: mask [

	<generated>
	<apicall: void 'glSampleMaski' (GLuint GLbitfield)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> texImage2DMultisample: target with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<generated>
	<apicall: void 'glTexImage2DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> texImage3DMultisample: target with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<generated>
	<apicall: void 'glTexImage3DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL32Compat >> waitSync: sync with: flags with: timeout [

	<generated>
	<apicall: void 'glWaitSync' (GLsync GLbitfield GLuint64)>
	^ self externalCallFailed
]
