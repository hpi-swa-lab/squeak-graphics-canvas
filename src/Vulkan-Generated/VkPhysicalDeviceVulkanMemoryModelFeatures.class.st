Class {
	#name : #VkPhysicalDeviceVulkanMemoryModelFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceVulkanMemoryModelFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(vulkanMemoryModel 'VkBool32')
		(vulkanMemoryModelDeviceScope 'VkBool32')
		(vulkanMemoryModelAvailabilityVisibilityChains 'VkBool32')
	)
]
