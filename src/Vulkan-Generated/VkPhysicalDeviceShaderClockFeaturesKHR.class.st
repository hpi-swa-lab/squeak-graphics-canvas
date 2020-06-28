Class {
	#name : #VkPhysicalDeviceShaderClockFeaturesKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceShaderClockFeaturesKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(shaderSubgroupClock 'VkBool32')
		(shaderDeviceClock 'VkBool32')
	)
]
