Class {
	#name : #VkDeviceGroupSubmitInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceGroupSubmitInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(waitSemaphoreCount 'uint32_t')
		(pWaitSemaphoreDeviceIndices 'uint32_t*')
		(commandBufferCount 'uint32_t')
		(pCommandBufferDeviceMasks 'uint32_t*')
		(signalSemaphoreCount 'uint32_t')
		(pSignalSemaphoreDeviceIndices 'uint32_t*')
	)
]
