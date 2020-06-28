Class {
	#name : #VkImportAndroidHardwareBufferInfoANDROID,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkImportAndroidHardwareBufferInfoANDROID class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(buffer 'void*')
	)
]
