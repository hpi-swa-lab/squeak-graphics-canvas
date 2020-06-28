Class {
	#name : #VkConditionalRenderingBeginInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkConditionalRenderingBeginInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(buffer 'VkBuffer')
		(offset 'VkDeviceSize')
		(flags 'VkConditionalRenderingFlagsEXT')
	)
]
