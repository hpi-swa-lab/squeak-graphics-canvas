Class {
	#name : #VkPhysicalDeviceLineRasterizationFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceLineRasterizationFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(rectangularLines 'VkBool32')
		(bresenhamLines 'VkBool32')
		(smoothLines 'VkBool32')
		(stippledRectangularLines 'VkBool32')
		(stippledBresenhamLines 'VkBool32')
		(stippledSmoothLines 'VkBool32')
	)
]
