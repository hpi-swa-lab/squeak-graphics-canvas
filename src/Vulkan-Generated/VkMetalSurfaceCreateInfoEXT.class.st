Class {
	#name : #VkMetalSurfaceCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkMetalSurfaceCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkMetalSurfaceCreateFlagsEXT')
		(pLayer 'CAMetalLayer*')
	)
]
