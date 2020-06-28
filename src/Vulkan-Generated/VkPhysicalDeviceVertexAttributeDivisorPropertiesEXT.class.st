Class {
	#name : #VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(maxVertexAttribDivisor 'uint32_t')
	)
]
