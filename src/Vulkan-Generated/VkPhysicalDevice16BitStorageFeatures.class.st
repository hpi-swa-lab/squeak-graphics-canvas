Class {
	#name : #VkPhysicalDevice16BitStorageFeatures,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDevice16BitStorageFeatures class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(storageBuffer16BitAccess 'VkBool32')
		(uniformAndStorageBuffer16BitAccess 'VkBool32')
		(storagePushConstant16 'VkBool32')
		(storageInputOutput16 'VkBool32')
	)
]
