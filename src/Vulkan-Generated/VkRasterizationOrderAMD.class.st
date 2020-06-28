Class {
	#name : #VkRasterizationOrderAMD,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkRasterizationOrderAMD class >> VK_RASTERIZATION_ORDER_RELAXED_AMD [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkRasterizationOrderAMD class >> VK_RASTERIZATION_ORDER_STRICT_AMD [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkRasterizationOrderAMD class >> originalTypeName [

    ^ 'long'
]
