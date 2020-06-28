Class {
	#name : #VkHdrMetadataEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkHdrMetadataEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(displayPrimaryRed 'VkXYColorEXT')
		(displayPrimaryGreen 'VkXYColorEXT')
		(displayPrimaryBlue 'VkXYColorEXT')
		(whitePoint 'VkXYColorEXT')
		(maxLuminance 'float')
		(minLuminance 'float')
		(maxContentLightLevel 'float')
		(maxFrameAverageLightLevel 'float')
	)
]
