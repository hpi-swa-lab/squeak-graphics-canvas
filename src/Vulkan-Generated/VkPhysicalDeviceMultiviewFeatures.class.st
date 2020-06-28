Class {
	#name : #VkPhysicalDeviceMultiviewFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceMultiviewFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(multiview 'VkBool32')
		(multiviewGeometryShader 'VkBool32')
		(multiviewTessellationShader 'VkBool32')
	)
]
