Class {
	#name : #VkDeviceGroupPresentInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceGroupPresentInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(swapchainCount 'uint32_t')
		(pDeviceMasks 'uint32_t*')
		(mode 'VkDeviceGroupPresentModeFlagsKHR')
	)
]
