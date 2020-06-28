Class {
	#name : #VkComponentMapping,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkComponentMapping class >> fields [

	^ #(
		(r 'VkComponentSwizzle')
		(g 'VkComponentSwizzle')
		(b 'VkComponentSwizzle')
		(a 'VkComponentSwizzle')
	)
]
