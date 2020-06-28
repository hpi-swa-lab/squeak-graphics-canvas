Class {
	#name : #VkDeviceGroupSwapchainCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceGroupSwapchainCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(modes 'VkDeviceGroupPresentModeFlagsKHR')
	)
]
