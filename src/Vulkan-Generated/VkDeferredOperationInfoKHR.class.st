Class {
	#name : #VkDeferredOperationInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeferredOperationInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(operationHandle 'VkDeferredOperationKHR')
	)
]
