Class {
	#name : #VkPhysicalDevicePerformanceQueryPropertiesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDevicePerformanceQueryPropertiesKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(allowCommandBufferQueryCopies 'VkBool32')
	)
]
