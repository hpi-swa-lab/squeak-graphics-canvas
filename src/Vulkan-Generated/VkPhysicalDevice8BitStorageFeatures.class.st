Class {
	#name : #VkPhysicalDevice8BitStorageFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDevice8BitStorageFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(storageBuffer8BitAccess 'VkBool32')
		(uniformAndStorageBuffer8BitAccess 'VkBool32')
		(storagePushConstant8 'VkBool32')
	)
]
