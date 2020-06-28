Class {
	#name : #VkDeviceGroupPresentCapabilitiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceGroupPresentCapabilitiesKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(presentMask 'uint32_t')
		(modes 'VkDeviceGroupPresentModeFlagsKHR')
	)
]
