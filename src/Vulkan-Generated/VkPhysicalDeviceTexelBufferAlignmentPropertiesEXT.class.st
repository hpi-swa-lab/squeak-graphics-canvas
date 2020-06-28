Class {
	#name : #VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(storageTexelBufferOffsetAlignmentBytes 'VkDeviceSize')
		(storageTexelBufferOffsetSingleTexelAlignment 'VkBool32')
		(uniformTexelBufferOffsetAlignmentBytes 'VkDeviceSize')
		(uniformTexelBufferOffsetSingleTexelAlignment 'VkBool32')
	)
]
