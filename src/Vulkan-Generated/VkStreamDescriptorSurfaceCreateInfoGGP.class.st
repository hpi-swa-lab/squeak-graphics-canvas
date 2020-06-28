Class {
	#name : #VkStreamDescriptorSurfaceCreateInfoGGP,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkStreamDescriptorSurfaceCreateInfoGGP class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkStreamDescriptorSurfaceCreateFlagsGGP')
		(streamDescriptor 'void')
	)
]
