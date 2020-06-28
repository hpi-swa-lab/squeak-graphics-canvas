Class {
	#name : #VkPhysicalDeviceRobustness2PropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceRobustness2PropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(robustStorageBufferAccessSizeAlignment 'VkDeviceSize')
		(robustUniformBufferAccessSizeAlignment 'VkDeviceSize')
	)
]
