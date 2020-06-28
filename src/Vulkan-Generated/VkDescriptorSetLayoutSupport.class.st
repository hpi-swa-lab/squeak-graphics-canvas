Class {
	#name : #VkDescriptorSetLayoutSupport,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDescriptorSetLayoutSupport class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(supported 'VkBool32')
	)
]
