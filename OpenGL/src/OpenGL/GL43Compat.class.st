Class {
	#name : #GL43Compat,
	#superclass : #GL42Compat,
	#category : #'OpenGL-API-GL',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL43Compat class >> majorVersion [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GL43Compat class >> minorVersion [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:52'
}
GL43Compat class >> versionNumber [

	^ 43
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> ACTIVE_RESOURCES [

	<generated>
	^ GL_ACTIVE_RESOURCES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> ACTIVE_VARIABLES [

	<generated>
	^ GL_ACTIVE_VARIABLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> ANY_SAMPLES_PASSED_CONSERVATIVE [

	<generated>
	^ GL_ANY_SAMPLES_PASSED_CONSERVATIVE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> ARRAY_SIZE [

	<generated>
	^ GL_ARRAY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> ARRAY_STRIDE [

	<generated>
	^ GL_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> ATOMIC_COUNTER_BUFFER_INDEX [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER [

	<generated>
	^ GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> AUTO_GENERATE_MIPMAP [

	<generated>
	^ GL_AUTO_GENERATE_MIPMAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> BLOCK_INDEX [

	<generated>
	^ GL_BLOCK_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> BUFFER [

	<generated>
	^ GL_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> BUFFER_BINDING [

	<generated>
	^ GL_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> BUFFER_DATA_SIZE [

	<generated>
	^ GL_BUFFER_DATA_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> BUFFER_VARIABLE [

	<generated>
	^ GL_BUFFER_VARIABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> CAVEAT_SUPPORT [

	<generated>
	^ GL_CAVEAT_SUPPORT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> CLEAR_BUFFER [

	<generated>
	^ GL_CLEAR_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COLOR_COMPONENTS [

	<generated>
	^ GL_COLOR_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COLOR_ENCODING [

	<generated>
	^ GL_COLOR_ENCODING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COLOR_RENDERABLE [

	<generated>
	^ GL_COLOR_RENDERABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPRESSED_R11_EAC [

	<generated>
	^ GL_COMPRESSED_R11_EAC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPRESSED_RG11_EAC [

	<generated>
	^ GL_COMPRESSED_RG11_EAC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPRESSED_RGB8_ETC2 [

	<generated>
	^ GL_COMPRESSED_RGB8_ETC2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 [

	<generated>
	^ GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPRESSED_RGBA8_ETC2_EAC [

	<generated>
	^ GL_COMPRESSED_RGBA8_ETC2_EAC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPRESSED_SIGNED_R11_EAC [

	<generated>
	^ GL_COMPRESSED_SIGNED_R11_EAC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPRESSED_SIGNED_RG11_EAC [

	<generated>
	^ GL_COMPRESSED_SIGNED_RG11_EAC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPRESSED_SRGB8_ALPHA8_ETC2_EAC [

	<generated>
	^ GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPRESSED_SRGB8_ETC2 [

	<generated>
	^ GL_COMPRESSED_SRGB8_ETC2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 [

	<generated>
	^ GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPUTE_SHADER [

	<generated>
	^ GL_COMPUTE_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPUTE_SHADER_BIT [

	<generated>
	^ GL_COMPUTE_SHADER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPUTE_SUBROUTINE [

	<generated>
	^ GL_COMPUTE_SUBROUTINE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPUTE_SUBROUTINE_UNIFORM [

	<generated>
	^ GL_COMPUTE_SUBROUTINE_UNIFORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPUTE_TEXTURE [

	<generated>
	^ GL_COMPUTE_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> COMPUTE_WORK_GROUP_SIZE [

	<generated>
	^ GL_COMPUTE_WORK_GROUP_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> CONTEXT_FLAG_DEBUG_BIT [

	<generated>
	^ GL_CONTEXT_FLAG_DEBUG_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_CALLBACK_FUNCTION [

	<generated>
	^ GL_DEBUG_CALLBACK_FUNCTION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_CALLBACK_USER_PARAM [

	<generated>
	^ GL_DEBUG_CALLBACK_USER_PARAM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_GROUP_STACK_DEPTH [

	<generated>
	^ GL_DEBUG_GROUP_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_LOGGED_MESSAGES [

	<generated>
	^ GL_DEBUG_LOGGED_MESSAGES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_NEXT_LOGGED_MESSAGE_LENGTH [

	<generated>
	^ GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_OUTPUT [

	<generated>
	^ GL_DEBUG_OUTPUT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_OUTPUT_SYNCHRONOUS [

	<generated>
	^ GL_DEBUG_OUTPUT_SYNCHRONOUS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_SEVERITY_HIGH [

	<generated>
	^ GL_DEBUG_SEVERITY_HIGH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_SEVERITY_LOW [

	<generated>
	^ GL_DEBUG_SEVERITY_LOW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_SEVERITY_MEDIUM [

	<generated>
	^ GL_DEBUG_SEVERITY_MEDIUM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_SEVERITY_NOTIFICATION [

	<generated>
	^ GL_DEBUG_SEVERITY_NOTIFICATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_SOURCE_API [

	<generated>
	^ GL_DEBUG_SOURCE_API
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_SOURCE_APPLICATION [

	<generated>
	^ GL_DEBUG_SOURCE_APPLICATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_SOURCE_OTHER [

	<generated>
	^ GL_DEBUG_SOURCE_OTHER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_SOURCE_SHADER_COMPILER [

	<generated>
	^ GL_DEBUG_SOURCE_SHADER_COMPILER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_SOURCE_THIRD_PARTY [

	<generated>
	^ GL_DEBUG_SOURCE_THIRD_PARTY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_SOURCE_WINDOW_SYSTEM [

	<generated>
	^ GL_DEBUG_SOURCE_WINDOW_SYSTEM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_TYPE_DEPRECATED_BEHAVIOR [

	<generated>
	^ GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_TYPE_ERROR [

	<generated>
	^ GL_DEBUG_TYPE_ERROR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_TYPE_MARKER [

	<generated>
	^ GL_DEBUG_TYPE_MARKER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_TYPE_OTHER [

	<generated>
	^ GL_DEBUG_TYPE_OTHER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_TYPE_PERFORMANCE [

	<generated>
	^ GL_DEBUG_TYPE_PERFORMANCE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_TYPE_POP_GROUP [

	<generated>
	^ GL_DEBUG_TYPE_POP_GROUP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_TYPE_PORTABILITY [

	<generated>
	^ GL_DEBUG_TYPE_PORTABILITY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_TYPE_PUSH_GROUP [

	<generated>
	^ GL_DEBUG_TYPE_PUSH_GROUP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEBUG_TYPE_UNDEFINED_BEHAVIOR [

	<generated>
	^ GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEPTH_COMPONENTS [

	<generated>
	^ GL_DEPTH_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEPTH_RENDERABLE [

	<generated>
	^ GL_DEPTH_RENDERABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DEPTH_STENCIL_TEXTURE_MODE [

	<generated>
	^ GL_DEPTH_STENCIL_TEXTURE_MODE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DISPATCH_INDIRECT_BUFFER [

	<generated>
	^ GL_DISPATCH_INDIRECT_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DISPATCH_INDIRECT_BUFFER_BINDING [

	<generated>
	^ GL_DISPATCH_INDIRECT_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> DISPLAY_LIST [

	<generated>
	^ GL_DISPLAY_LIST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FILTER [

	<generated>
	^ GL_FILTER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FRAGMENT_SUBROUTINE [

	<generated>
	^ GL_FRAGMENT_SUBROUTINE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FRAGMENT_SUBROUTINE_UNIFORM [

	<generated>
	^ GL_FRAGMENT_SUBROUTINE_UNIFORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FRAGMENT_TEXTURE [

	<generated>
	^ GL_FRAGMENT_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FRAMEBUFFER_BLEND [

	<generated>
	^ GL_FRAMEBUFFER_BLEND
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FRAMEBUFFER_DEFAULT_HEIGHT [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FRAMEBUFFER_DEFAULT_LAYERS [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_LAYERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FRAMEBUFFER_DEFAULT_SAMPLES [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FRAMEBUFFER_DEFAULT_WIDTH [

	<generated>
	^ GL_FRAMEBUFFER_DEFAULT_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FRAMEBUFFER_RENDERABLE [

	<generated>
	^ GL_FRAMEBUFFER_RENDERABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FRAMEBUFFER_RENDERABLE_LAYERED [

	<generated>
	^ GL_FRAMEBUFFER_RENDERABLE_LAYERED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> FULL_SUPPORT [

	<generated>
	^ GL_FULL_SUPPORT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> GEOMETRY_SUBROUTINE [

	<generated>
	^ GL_GEOMETRY_SUBROUTINE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> GEOMETRY_SUBROUTINE_UNIFORM [

	<generated>
	^ GL_GEOMETRY_SUBROUTINE_UNIFORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> GEOMETRY_TEXTURE [

	<generated>
	^ GL_GEOMETRY_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> GET_TEXTURE_IMAGE_FORMAT [

	<generated>
	^ GL_GET_TEXTURE_IMAGE_FORMAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> GET_TEXTURE_IMAGE_TYPE [

	<generated>
	^ GL_GET_TEXTURE_IMAGE_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_CLASS_10_10_10_2 [

	<generated>
	^ GL_IMAGE_CLASS_10_10_10_2
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_CLASS_11_11_10 [

	<generated>
	^ GL_IMAGE_CLASS_11_11_10
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_CLASS_1_X_16 [

	<generated>
	^ GL_IMAGE_CLASS_1_X_16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_CLASS_1_X_32 [

	<generated>
	^ GL_IMAGE_CLASS_1_X_32
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_CLASS_1_X_8 [

	<generated>
	^ GL_IMAGE_CLASS_1_X_8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_CLASS_2_X_16 [

	<generated>
	^ GL_IMAGE_CLASS_2_X_16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_CLASS_2_X_32 [

	<generated>
	^ GL_IMAGE_CLASS_2_X_32
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_CLASS_2_X_8 [

	<generated>
	^ GL_IMAGE_CLASS_2_X_8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_CLASS_4_X_16 [

	<generated>
	^ GL_IMAGE_CLASS_4_X_16
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_CLASS_4_X_32 [

	<generated>
	^ GL_IMAGE_CLASS_4_X_32
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_CLASS_4_X_8 [

	<generated>
	^ GL_IMAGE_CLASS_4_X_8
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_COMPATIBILITY_CLASS [

	<generated>
	^ GL_IMAGE_COMPATIBILITY_CLASS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_PIXEL_FORMAT [

	<generated>
	^ GL_IMAGE_PIXEL_FORMAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_PIXEL_TYPE [

	<generated>
	^ GL_IMAGE_PIXEL_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IMAGE_TEXEL_SIZE [

	<generated>
	^ GL_IMAGE_TEXEL_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_ALPHA_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_ALPHA_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_ALPHA_TYPE [

	<generated>
	^ GL_INTERNALFORMAT_ALPHA_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_BLUE_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_BLUE_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_BLUE_TYPE [

	<generated>
	^ GL_INTERNALFORMAT_BLUE_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_DEPTH_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_DEPTH_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_DEPTH_TYPE [

	<generated>
	^ GL_INTERNALFORMAT_DEPTH_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_GREEN_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_GREEN_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_GREEN_TYPE [

	<generated>
	^ GL_INTERNALFORMAT_GREEN_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_PREFERRED [

	<generated>
	^ GL_INTERNALFORMAT_PREFERRED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_RED_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_RED_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_RED_TYPE [

	<generated>
	^ GL_INTERNALFORMAT_RED_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_SHARED_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_SHARED_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_STENCIL_SIZE [

	<generated>
	^ GL_INTERNALFORMAT_STENCIL_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_STENCIL_TYPE [

	<generated>
	^ GL_INTERNALFORMAT_STENCIL_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> INTERNALFORMAT_SUPPORTED [

	<generated>
	^ GL_INTERNALFORMAT_SUPPORTED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IS_PER_PATCH [

	<generated>
	^ GL_IS_PER_PATCH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> IS_ROW_MAJOR [

	<generated>
	^ GL_IS_ROW_MAJOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> LOCATION [

	<generated>
	^ GL_LOCATION
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> LOCATION_INDEX [

	<generated>
	^ GL_LOCATION_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MANUAL_GENERATE_MIPMAP [

	<generated>
	^ GL_MANUAL_GENERATE_MIPMAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MATRIX_STRIDE [

	<generated>
	^ GL_MATRIX_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMBINED_DIMENSIONS [

	<generated>
	^ GL_MAX_COMBINED_DIMENSIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMBINED_SHADER_OUTPUT_RESOURCES [

	<generated>
	^ GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMBINED_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMPUTE_ATOMIC_COUNTERS [

	<generated>
	^ GL_MAX_COMPUTE_ATOMIC_COUNTERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS [

	<generated>
	^ GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMPUTE_IMAGE_UNIFORMS [

	<generated>
	^ GL_MAX_COMPUTE_IMAGE_UNIFORMS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMPUTE_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMPUTE_SHARED_MEMORY_SIZE [

	<generated>
	^ GL_MAX_COMPUTE_SHARED_MEMORY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMPUTE_TEXTURE_IMAGE_UNITS [

	<generated>
	^ GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMPUTE_UNIFORM_BLOCKS [

	<generated>
	^ GL_MAX_COMPUTE_UNIFORM_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMPUTE_UNIFORM_COMPONENTS [

	<generated>
	^ GL_MAX_COMPUTE_UNIFORM_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMPUTE_WORK_GROUP_COUNT [

	<generated>
	^ GL_MAX_COMPUTE_WORK_GROUP_COUNT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMPUTE_WORK_GROUP_INVOCATIONS [

	<generated>
	^ GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_COMPUTE_WORK_GROUP_SIZE [

	<generated>
	^ GL_MAX_COMPUTE_WORK_GROUP_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_DEBUG_GROUP_STACK_DEPTH [

	<generated>
	^ GL_MAX_DEBUG_GROUP_STACK_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_DEBUG_LOGGED_MESSAGES [

	<generated>
	^ GL_MAX_DEBUG_LOGGED_MESSAGES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_DEBUG_MESSAGE_LENGTH [

	<generated>
	^ GL_MAX_DEBUG_MESSAGE_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_DEPTH [

	<generated>
	^ GL_MAX_DEPTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_ELEMENT_INDEX [

	<generated>
	^ GL_MAX_ELEMENT_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_FRAGMENT_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_FRAMEBUFFER_HEIGHT [

	<generated>
	^ GL_MAX_FRAMEBUFFER_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_FRAMEBUFFER_LAYERS [

	<generated>
	^ GL_MAX_FRAMEBUFFER_LAYERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_FRAMEBUFFER_SAMPLES [

	<generated>
	^ GL_MAX_FRAMEBUFFER_SAMPLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_FRAMEBUFFER_WIDTH [

	<generated>
	^ GL_MAX_FRAMEBUFFER_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_GEOMETRY_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_HEIGHT [

	<generated>
	^ GL_MAX_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_LABEL_LENGTH [

	<generated>
	^ GL_MAX_LABEL_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_LAYERS [

	<generated>
	^ GL_MAX_LAYERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_NAME_LENGTH [

	<generated>
	^ GL_MAX_NAME_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_NUM_ACTIVE_VARIABLES [

	<generated>
	^ GL_MAX_NUM_ACTIVE_VARIABLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_NUM_COMPATIBLE_SUBROUTINES [

	<generated>
	^ GL_MAX_NUM_COMPATIBLE_SUBROUTINES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_SHADER_STORAGE_BLOCK_SIZE [

	<generated>
	^ GL_MAX_SHADER_STORAGE_BLOCK_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_SHADER_STORAGE_BUFFER_BINDINGS [

	<generated>
	^ GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_UNIFORM_LOCATIONS [

	<generated>
	^ GL_MAX_UNIFORM_LOCATIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_VERTEX_ATTRIB_BINDINGS [

	<generated>
	^ GL_MAX_VERTEX_ATTRIB_BINDINGS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_VERTEX_ATTRIB_RELATIVE_OFFSET [

	<generated>
	^ GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_VERTEX_SHADER_STORAGE_BLOCKS [

	<generated>
	^ GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MAX_WIDTH [

	<generated>
	^ GL_MAX_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> MIPMAP [

	<generated>
	^ GL_MIPMAP
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> NAME_LENGTH [

	<generated>
	^ GL_NAME_LENGTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> NUM_ACTIVE_VARIABLES [

	<generated>
	^ GL_NUM_ACTIVE_VARIABLES
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> NUM_SHADING_LANGUAGE_VERSIONS [

	<generated>
	^ GL_NUM_SHADING_LANGUAGE_VERSIONS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> OFFSET [

	<generated>
	^ GL_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> PRIMITIVE_RESTART_FIXED_INDEX [

	<generated>
	^ GL_PRIMITIVE_RESTART_FIXED_INDEX
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> PROGRAM [

	<generated>
	^ GL_PROGRAM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> PROGRAM_INPUT [

	<generated>
	^ GL_PROGRAM_INPUT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> PROGRAM_OUTPUT [

	<generated>
	^ GL_PROGRAM_OUTPUT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> PROGRAM_PIPELINE [

	<generated>
	^ GL_PROGRAM_PIPELINE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> QUERY [

	<generated>
	^ GL_QUERY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> READ_PIXELS [

	<generated>
	^ GL_READ_PIXELS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> READ_PIXELS_FORMAT [

	<generated>
	^ GL_READ_PIXELS_FORMAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> READ_PIXELS_TYPE [

	<generated>
	^ GL_READ_PIXELS_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> REFERENCED_BY_COMPUTE_SHADER [

	<generated>
	^ GL_REFERENCED_BY_COMPUTE_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> REFERENCED_BY_FRAGMENT_SHADER [

	<generated>
	^ GL_REFERENCED_BY_FRAGMENT_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> REFERENCED_BY_GEOMETRY_SHADER [

	<generated>
	^ GL_REFERENCED_BY_GEOMETRY_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> REFERENCED_BY_TESS_CONTROL_SHADER [

	<generated>
	^ GL_REFERENCED_BY_TESS_CONTROL_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> REFERENCED_BY_TESS_EVALUATION_SHADER [

	<generated>
	^ GL_REFERENCED_BY_TESS_EVALUATION_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> REFERENCED_BY_VERTEX_SHADER [

	<generated>
	^ GL_REFERENCED_BY_VERTEX_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SAMPLER [

	<generated>
	^ GL_SAMPLER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SHADER [

	<generated>
	^ GL_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SHADER_IMAGE_ATOMIC [

	<generated>
	^ GL_SHADER_IMAGE_ATOMIC
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SHADER_IMAGE_LOAD [

	<generated>
	^ GL_SHADER_IMAGE_LOAD
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SHADER_IMAGE_STORE [

	<generated>
	^ GL_SHADER_IMAGE_STORE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SHADER_STORAGE_BARRIER_BIT [

	<generated>
	^ GL_SHADER_STORAGE_BARRIER_BIT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SHADER_STORAGE_BLOCK [

	<generated>
	^ GL_SHADER_STORAGE_BLOCK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SHADER_STORAGE_BUFFER [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SHADER_STORAGE_BUFFER_BINDING [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SHADER_STORAGE_BUFFER_SIZE [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SHADER_STORAGE_BUFFER_START [

	<generated>
	^ GL_SHADER_STORAGE_BUFFER_START
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST [

	<generated>
	^ GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE [

	<generated>
	^ GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST [

	<generated>
	^ GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE [

	<generated>
	^ GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SRGB_READ [

	<generated>
	^ GL_SRGB_READ
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> SRGB_WRITE [

	<generated>
	^ GL_SRGB_WRITE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> STENCIL_COMPONENTS [

	<generated>
	^ GL_STENCIL_COMPONENTS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> STENCIL_RENDERABLE [

	<generated>
	^ GL_STENCIL_RENDERABLE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TESS_CONTROL_SUBROUTINE [

	<generated>
	^ GL_TESS_CONTROL_SUBROUTINE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TESS_CONTROL_SUBROUTINE_UNIFORM [

	<generated>
	^ GL_TESS_CONTROL_SUBROUTINE_UNIFORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TESS_CONTROL_TEXTURE [

	<generated>
	^ GL_TESS_CONTROL_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TESS_EVALUATION_SUBROUTINE [

	<generated>
	^ GL_TESS_EVALUATION_SUBROUTINE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TESS_EVALUATION_SUBROUTINE_UNIFORM [

	<generated>
	^ GL_TESS_EVALUATION_SUBROUTINE_UNIFORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TESS_EVALUATION_TEXTURE [

	<generated>
	^ GL_TESS_EVALUATION_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_BUFFER_OFFSET [

	<generated>
	^ GL_TEXTURE_BUFFER_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_BUFFER_OFFSET_ALIGNMENT [

	<generated>
	^ GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_BUFFER_SIZE [

	<generated>
	^ GL_TEXTURE_BUFFER_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_COMPRESSED_BLOCK_HEIGHT [

	<generated>
	^ GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_COMPRESSED_BLOCK_SIZE [

	<generated>
	^ GL_TEXTURE_COMPRESSED_BLOCK_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_COMPRESSED_BLOCK_WIDTH [

	<generated>
	^ GL_TEXTURE_COMPRESSED_BLOCK_WIDTH
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_GATHER [

	<generated>
	^ GL_TEXTURE_GATHER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_GATHER_SHADOW [

	<generated>
	^ GL_TEXTURE_GATHER_SHADOW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_IMAGE_FORMAT [

	<generated>
	^ GL_TEXTURE_IMAGE_FORMAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_IMAGE_TYPE [

	<generated>
	^ GL_TEXTURE_IMAGE_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_IMMUTABLE_LEVELS [

	<generated>
	^ GL_TEXTURE_IMMUTABLE_LEVELS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_SHADOW [

	<generated>
	^ GL_TEXTURE_SHADOW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_VIEW [

	<generated>
	^ GL_TEXTURE_VIEW
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_VIEW_MIN_LAYER [

	<generated>
	^ GL_TEXTURE_VIEW_MIN_LAYER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_VIEW_MIN_LEVEL [

	<generated>
	^ GL_TEXTURE_VIEW_MIN_LEVEL
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_VIEW_NUM_LAYERS [

	<generated>
	^ GL_TEXTURE_VIEW_NUM_LAYERS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TEXTURE_VIEW_NUM_LEVELS [

	<generated>
	^ GL_TEXTURE_VIEW_NUM_LEVELS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TOP_LEVEL_ARRAY_SIZE [

	<generated>
	^ GL_TOP_LEVEL_ARRAY_SIZE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TOP_LEVEL_ARRAY_STRIDE [

	<generated>
	^ GL_TOP_LEVEL_ARRAY_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TRANSFORM_FEEDBACK_VARYING [

	<generated>
	^ GL_TRANSFORM_FEEDBACK_VARYING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> TYPE [

	<generated>
	^ GL_TYPE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> UNIFORM [

	<generated>
	^ GL_UNIFORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> UNIFORM_BLOCK [

	<generated>
	^ GL_UNIFORM_BLOCK
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER [

	<generated>
	^ GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VERTEX_ARRAY [

	<generated>
	^ GL_VERTEX_ARRAY
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VERTEX_ATTRIB_ARRAY_LONG [

	<generated>
	^ GL_VERTEX_ATTRIB_ARRAY_LONG
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VERTEX_ATTRIB_BINDING [

	<generated>
	^ GL_VERTEX_ATTRIB_BINDING
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VERTEX_ATTRIB_RELATIVE_OFFSET [

	<generated>
	^ GL_VERTEX_ATTRIB_RELATIVE_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VERTEX_BINDING_BUFFER [

	<generated>
	^ GL_VERTEX_BINDING_BUFFER
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VERTEX_BINDING_DIVISOR [

	<generated>
	^ GL_VERTEX_BINDING_DIVISOR
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VERTEX_BINDING_OFFSET [

	<generated>
	^ GL_VERTEX_BINDING_OFFSET
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VERTEX_BINDING_STRIDE [

	<generated>
	^ GL_VERTEX_BINDING_STRIDE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VERTEX_SUBROUTINE [

	<generated>
	^ GL_VERTEX_SUBROUTINE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VERTEX_SUBROUTINE_UNIFORM [

	<generated>
	^ GL_VERTEX_SUBROUTINE_UNIFORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VERTEX_TEXTURE [

	<generated>
	^ GL_VERTEX_TEXTURE
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_128_BITS [

	<generated>
	^ GL_VIEW_CLASS_128_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_16_BITS [

	<generated>
	^ GL_VIEW_CLASS_16_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_24_BITS [

	<generated>
	^ GL_VIEW_CLASS_24_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_32_BITS [

	<generated>
	^ GL_VIEW_CLASS_32_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_48_BITS [

	<generated>
	^ GL_VIEW_CLASS_48_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_64_BITS [

	<generated>
	^ GL_VIEW_CLASS_64_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_8_BITS [

	<generated>
	^ GL_VIEW_CLASS_8_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_96_BITS [

	<generated>
	^ GL_VIEW_CLASS_96_BITS
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_BPTC_FLOAT [

	<generated>
	^ GL_VIEW_CLASS_BPTC_FLOAT
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_BPTC_UNORM [

	<generated>
	^ GL_VIEW_CLASS_BPTC_UNORM
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_RGTC1_RED [

	<generated>
	^ GL_VIEW_CLASS_RGTC1_RED
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_RGTC2_RG [

	<generated>
	^ GL_VIEW_CLASS_RGTC2_RG
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_S3TC_DXT1_RGB [

	<generated>
	^ GL_VIEW_CLASS_S3TC_DXT1_RGB
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_S3TC_DXT1_RGBA [

	<generated>
	^ GL_VIEW_CLASS_S3TC_DXT1_RGBA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_S3TC_DXT3_RGBA [

	<generated>
	^ GL_VIEW_CLASS_S3TC_DXT3_RGBA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_CLASS_S3TC_DXT5_RGBA [

	<generated>
	^ GL_VIEW_CLASS_S3TC_DXT5_RGBA
]

{
	#category : #'constants - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> VIEW_COMPATIBILITY_CLASS [

	<generated>
	^ GL_VIEW_COMPATIBILITY_CLASS
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> bindVertexBuffer: bindingindex with: buffer with: offset with: stride [

	<generated>
	<apicall: void 'glBindVertexBuffer' (GLuint GLuint GLintptr GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> clearBufferData: target with: internalformat with: format with: type with: data [

	<generated>
	<apicall: void 'glClearBufferData' (GLenum GLenum GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> clearBufferSubData: target with: internalformat with: offset with: size with: format with: type with: data [

	<generated>
	<apicall: void 'glClearBufferSubData' (GLenum GLenum GLintptr GLsizeiptr GLenum GLenum void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> copyImageSubData: srcName with: srcTarget with: srcLevel with: srcX with: srcY with: srcZ with: dstName with: dstTarget with: dstLevel with: dstX with: dstY with: dstZ with: srcWidth with: srcHeight with: srcDepth [

	<generated>
	<apicall: void 'glCopyImageSubData' (GLuint GLenum GLint GLint GLint GLint GLuint GLenum GLint GLint GLint GLint GLsizei GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> debugMessageCallback: callback with: userParam [

	<generated>
	<apicall: void 'glDebugMessageCallback' (GLDEBUGPROC void*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> debugMessageControl: source with: type with: severity with: count with: ids with: enabled [

	<generated>
	<apicall: void 'glDebugMessageControl' (GLenum GLenum GLenum GLsizei GLuint* GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> debugMessageInsert: source with: type with: id with: severity with: length with: buf [

	<generated>
	<apicall: void 'glDebugMessageInsert' (GLenum GLenum GLuint GLenum GLsizei GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> dispatchCompute: num_groups_x with: num_groups_y with: num_groups_z [

	<generated>
	<apicall: void 'glDispatchCompute' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> dispatchComputeIndirect: indirect [

	<generated>
	<apicall: void 'glDispatchComputeIndirect' (GLintptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> framebufferParameteri: target with: pname with: param [

	<generated>
	<apicall: void 'glFramebufferParameteri' (GLenum GLenum GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> getDebugMessageLog: count with: bufSize with: sources with: types with: ids with: severities with: lengths with: messageLog [

	<generated>
	<apicall: GLuint 'glGetDebugMessageLog' (GLuint GLsizei GLenum* GLenum* GLuint* GLenum* GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> getFramebufferParameteriv: target with: pname with: params [

	<generated>
	<apicall: void 'glGetFramebufferParameteriv' (GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> getInternalformati64v: target with: internalformat with: pname with: count with: params [

	<generated>
	<apicall: void 'glGetInternalformati64v' (GLenum GLenum GLenum GLsizei GLint64*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> getObjectLabel: identifier with: name with: bufSize with: length with: label [

	<generated>
	<apicall: void 'glGetObjectLabel' (GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> getObjectPtrLabel: ptr with: bufSize with: length with: label [

	<generated>
	<apicall: void 'glGetObjectPtrLabel' (void* GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> getPointerv: pname with: params [

	<generated>
	<apicall: void 'glGetPointerv' (GLenum void**)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> getProgramInterfaceiv: program with: programInterface with: pname with: params [

	<generated>
	<apicall: void 'glGetProgramInterfaceiv' (GLuint GLenum GLenum GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> getProgramResourceIndex: program with: programInterface with: name [

	<generated>
	<apicall: GLuint 'glGetProgramResourceIndex' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> getProgramResourceLocation: program with: programInterface with: name [

	<generated>
	<apicall: GLint 'glGetProgramResourceLocation' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> getProgramResourceLocationIndex: program with: programInterface with: name [

	<generated>
	<apicall: GLint 'glGetProgramResourceLocationIndex' (GLuint GLenum GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> getProgramResourceName: program with: programInterface with: index with: bufSize with: length with: name [

	<generated>
	<apicall: void 'glGetProgramResourceName' (GLuint GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> getProgramResourceiv: program with: programInterface with: index with: propCount with: props with: count with: length with: params [

	<generated>
	<apicall: void 'glGetProgramResourceiv' (GLuint GLenum GLuint GLsizei GLenum* GLsizei GLsizei* GLint*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> invalidateBufferData: buffer [

	<generated>
	<apicall: void 'glInvalidateBufferData' (GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> invalidateBufferSubData: buffer with: offset with: length [

	<generated>
	<apicall: void 'glInvalidateBufferSubData' (GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> invalidateFramebuffer: target with: numAttachments with: attachments [

	<generated>
	<apicall: void 'glInvalidateFramebuffer' (GLenum GLsizei GLenum*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> invalidateSubFramebuffer: target with: numAttachments with: attachments with: x with: y with: width with: height [

	<generated>
	<apicall: void 'glInvalidateSubFramebuffer' (GLenum GLsizei GLenum* GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> invalidateTexImage: texture with: level [

	<generated>
	<apicall: void 'glInvalidateTexImage' (GLuint GLint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> invalidateTexSubImage: texture with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth [

	<generated>
	<apicall: void 'glInvalidateTexSubImage' (GLuint GLint GLint GLint GLint GLsizei GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> multiDrawArraysIndirect: mode with: indirect with: drawcount with: stride [

	<generated>
	<apicall: void 'glMultiDrawArraysIndirect' (GLenum void* GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> multiDrawElementsIndirect: mode with: type with: indirect with: drawcount with: stride [

	<generated>
	<apicall: void 'glMultiDrawElementsIndirect' (GLenum GLenum void* GLsizei GLsizei)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> objectLabel: identifier with: name with: length with: label [

	<generated>
	<apicall: void 'glObjectLabel' (GLenum GLuint GLsizei GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> objectPtrLabel: ptr with: length with: label [

	<generated>
	<apicall: void 'glObjectPtrLabel' (void* GLsizei GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> popDebugGroup [

	<generated>
	<apicall: void 'glPopDebugGroup' ()>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> pushDebugGroup: source with: id with: length with: message [

	<generated>
	<apicall: void 'glPushDebugGroup' (GLenum GLuint GLsizei GLchar*)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> shaderStorageBlockBinding: program with: storageBlockIndex with: storageBlockBinding [

	<generated>
	<apicall: void 'glShaderStorageBlockBinding' (GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> texBufferRange: target with: internalformat with: buffer with: offset with: size [

	<generated>
	<apicall: void 'glTexBufferRange' (GLenum GLenum GLuint GLintptr GLsizeiptr)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> texStorage2DMultisample: target with: samples with: internalformat with: width with: height with: fixedsamplelocations [

	<generated>
	<apicall: void 'glTexStorage2DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> texStorage3DMultisample: target with: samples with: internalformat with: width with: height with: depth with: fixedsamplelocations [

	<generated>
	<apicall: void 'glTexStorage3DMultisample' (GLenum GLsizei GLenum GLsizei GLsizei GLsizei GLboolean)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> textureView: texture with: target with: origtexture with: internalformat with: minlevel with: numlevels with: minlayer with: numlayers [

	<generated>
	<apicall: void 'glTextureView' (GLuint GLenum GLuint GLenum GLuint GLuint GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> vertexAttribBinding: attribindex with: bindingindex [

	<generated>
	<apicall: void 'glVertexAttribBinding' (GLuint GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> vertexAttribFormat: attribindex with: size with: type with: normalized with: relativeoffset [

	<generated>
	<apicall: void 'glVertexAttribFormat' (GLuint GLint GLenum GLboolean GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> vertexAttribIFormat: attribindex with: size with: type with: relativeoffset [

	<generated>
	<apicall: void 'glVertexAttribIFormat' (GLuint GLint GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> vertexAttribLFormat: attribindex with: size with: type with: relativeoffset [

	<generated>
	<apicall: void 'glVertexAttribLFormat' (GLuint GLint GLenum GLuint)>
	^ self externalCallFailed
]

{
	#category : #'api - required',
	#timestamp : 'stlu 2/22/2021 13:15'
}
GL43Compat >> vertexBindingDivisor: bindingindex with: divisor [

	<generated>
	<apicall: void 'glVertexBindingDivisor' (GLuint GLuint)>
	^ self externalCallFailed
]
