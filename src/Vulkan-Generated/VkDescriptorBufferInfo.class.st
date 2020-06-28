Class {
	#name : #VkDescriptorBufferInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorBufferInfo class >> fields [

	^ #(
		(buffer 'VkBuffer')
		(offset 'VkDeviceSize')
		(range 'VkDeviceSize')
	)
]
