Class {
	#name : #VkBufferViewCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkBufferViewCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkBufferViewCreateFlags')
		(buffer 'VkBuffer')
		(format 'VkFormat')
		(offset 'VkDeviceSize')
		(range 'VkDeviceSize')
	)
]
