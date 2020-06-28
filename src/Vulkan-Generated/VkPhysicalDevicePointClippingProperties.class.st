Class {
	#name : #VkPhysicalDevicePointClippingProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDevicePointClippingProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pointClippingBehavior 'VkPointClippingBehavior')
	)
]
