Class {
	#name : #VkAPIConstants,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_ATTACHMENT_UNUSED [

	^ self on: ((16rFFFFFFFF))
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_FALSE [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_LOD_CLAMP_NONE [

	^ self on: (1000.0f)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_LUID_SIZE [

	^ self on: (8)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_LUID_SIZE_KHR [

	^ self on: (self VK_LUID_SIZE)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_MAX_DESCRIPTION_SIZE [

	^ self on: (256)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_MAX_DEVICE_GROUP_SIZE [

	^ self on: (32)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_MAX_DEVICE_GROUP_SIZE_KHR [

	^ self on: (self VK_MAX_DEVICE_GROUP_SIZE)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_MAX_DRIVER_INFO_SIZE [

	^ self on: (256)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_MAX_DRIVER_INFO_SIZE_KHR [

	^ self on: (self VK_MAX_DRIVER_INFO_SIZE)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_MAX_DRIVER_NAME_SIZE [

	^ self on: (256)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_MAX_DRIVER_NAME_SIZE_KHR [

	^ self on: (self VK_MAX_DRIVER_NAME_SIZE)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_MAX_EXTENSION_NAME_SIZE [

	^ self on: (256)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_MAX_MEMORY_HEAPS [

	^ self on: (16)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_MAX_MEMORY_TYPES [

	^ self on: (32)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_MAX_PHYSICAL_DEVICE_NAME_SIZE [

	^ self on: (256)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_QUEUE_FAMILY_EXTERNAL [

	^ self on: ((16rFFFFFFFF-1))
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_QUEUE_FAMILY_EXTERNAL_KHR [

	^ self on: (self VK_QUEUE_FAMILY_EXTERNAL)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_QUEUE_FAMILY_FOREIGN_EXT [

	^ self on: ((16rFFFFFFFF-2))
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_QUEUE_FAMILY_IGNORED [

	^ self on: ((16rFFFFFFFF))
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_REMAINING_ARRAY_LAYERS [

	^ self on: ((16rFFFFFFFF))
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_REMAINING_MIP_LEVELS [

	^ self on: ((16rFFFFFFFF))
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_SHADER_UNUSED_KHR [

	^ self on: ((16rFFFFFFFF))
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_SHADER_UNUSED_NV [

	^ self on: (self VK_SHADER_UNUSED_KHR)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_SUBPASS_EXTERNAL [

	^ self on: ((16rFFFFFFFF))
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_TRUE [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_UUID_SIZE [

	^ self on: (16)
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> VK_WHOLE_SIZE [

	^ self on: ((16rFFFFFFFFFFFFFFFF))
]

{ #category : #'as yet unclassified' }
VkAPIConstants class >> originalTypeName [

    ^ 'long'
]
