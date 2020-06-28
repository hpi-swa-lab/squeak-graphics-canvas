Class {
	#name : #VkDisplayPresentInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDisplayPresentInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(srcRect 'VkRect2D')
		(dstRect 'VkRect2D')
		(persistent 'VkBool32')
	)
]
