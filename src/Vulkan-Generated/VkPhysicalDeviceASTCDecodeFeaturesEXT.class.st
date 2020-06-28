Class {
	#name : #VkPhysicalDeviceASTCDecodeFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceASTCDecodeFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(decodeModeSharedExponent 'VkBool32')
	)
]
