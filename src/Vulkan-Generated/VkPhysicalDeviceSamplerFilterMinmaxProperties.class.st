Class {
	#name : #VkPhysicalDeviceSamplerFilterMinmaxProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceSamplerFilterMinmaxProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(filterMinmaxSingleComponentFormats 'VkBool32')
		(filterMinmaxImageComponentMapping 'VkBool32')
	)
]
