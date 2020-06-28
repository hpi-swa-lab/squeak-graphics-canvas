Class {
	#name : #VkExternalFenceProperties,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExternalFenceProperties class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(exportFromImportedHandleTypes 'VkExternalFenceHandleTypeFlags')
		(compatibleHandleTypes 'VkExternalFenceHandleTypeFlags')
		(externalFenceFeatures 'VkExternalFenceFeatureFlags')
	)
]
