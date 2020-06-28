Class {
	#name : #VkPhysicalDeviceExternalMemoryHostPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceExternalMemoryHostPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(minImportedHostPointerAlignment 'VkDeviceSize')
	)
]
