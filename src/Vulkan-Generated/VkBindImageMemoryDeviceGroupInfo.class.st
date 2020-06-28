Class {
	#name : #VkBindImageMemoryDeviceGroupInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBindImageMemoryDeviceGroupInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(deviceIndexCount 'uint32_t')
		(pDeviceIndices 'uint32_t*')
		(splitInstanceBindRegionCount 'uint32_t')
		(pSplitInstanceBindRegions 'VkRect2D*')
	)
]
