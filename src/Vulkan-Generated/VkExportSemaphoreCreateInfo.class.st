Class {
	#name : #VkExportSemaphoreCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExportSemaphoreCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(handleTypes 'VkExternalSemaphoreHandleTypeFlags')
	)
]
