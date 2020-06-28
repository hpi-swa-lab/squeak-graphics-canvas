Class {
	#name : #VkDeviceQueueCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceQueueCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkDeviceQueueCreateFlags')
		(queueFamilyIndex 'uint32_t')
		(queueCount 'uint32_t')
		(pQueuePriorities 'float*')
	)
]
