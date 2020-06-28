Class {
	#name : #VkExportFenceCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExportFenceCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handleTypes 'VkExternalFenceHandleTypeFlags')
	)
]
