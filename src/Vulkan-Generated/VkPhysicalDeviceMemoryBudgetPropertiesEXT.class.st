Class {
	#name : #VkPhysicalDeviceMemoryBudgetPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceMemoryBudgetPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(heapBudget 'VkDeviceSize')
		(heapUsage 'VkDeviceSize')
	)
]
