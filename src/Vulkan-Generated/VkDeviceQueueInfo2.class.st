Class {
	#name : #VkDeviceQueueInfo2,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceQueueInfo2 class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkDeviceQueueCreateFlags')
		(queueFamilyIndex 'uint32_t')
		(queueIndex 'uint32_t')
	)
]
