Class {
	#name : #VkExternalSemaphoreProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalSemaphoreProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(exportFromImportedHandleTypes 'VkExternalSemaphoreHandleTypeFlags')
		(compatibleHandleTypes 'VkExternalSemaphoreHandleTypeFlags')
		(externalSemaphoreFeatures 'VkExternalSemaphoreFeatureFlags')
	)
]
