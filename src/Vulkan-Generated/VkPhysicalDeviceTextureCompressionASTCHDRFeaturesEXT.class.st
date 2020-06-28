Class {
	#name : #VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(textureCompressionASTC_HDR 'VkBool32')
	)
]
