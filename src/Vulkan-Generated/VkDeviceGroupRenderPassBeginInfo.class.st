Class {
	#name : #VkDeviceGroupRenderPassBeginInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceGroupRenderPassBeginInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(deviceMask 'uint32_t')
		(deviceRenderAreaCount 'uint32_t')
		(pDeviceRenderAreas 'VkRect2D*')
	)
]
