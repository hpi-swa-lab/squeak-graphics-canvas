Class {
	#name : #VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(vertexAttributeInstanceRateDivisor 'VkBool32')
		(vertexAttributeInstanceRateZeroDivisor 'VkBool32')
	)
]
