Class {
	#name : #VkPhysicalDeviceMultiviewProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceMultiviewProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxMultiviewViewCount 'uint32_t')
		(maxMultiviewInstanceIndex 'uint32_t')
	)
]
