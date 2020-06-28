Class {
	#name : #VkHeadlessSurfaceCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkHeadlessSurfaceCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkHeadlessSurfaceCreateFlagsEXT')
	)
]
