Class {
	#name : #VkProtectedSubmitInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkProtectedSubmitInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(protectedSubmit 'VkBool32')
	)
]
