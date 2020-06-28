Class {
	#name : #VkPhysicalDeviceYcbcrImageArraysFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceYcbcrImageArraysFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(ycbcrImageArrays 'VkBool32')
	)
]
