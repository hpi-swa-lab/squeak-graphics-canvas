Class {
	#name : #VkAndroidSurfaceCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkAndroidSurfaceCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkAndroidSurfaceCreateFlagsKHR')
		(window 'void*')
	)
]
