Class {
	#name : #VkExportSemaphoreWin32HandleInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExportSemaphoreWin32HandleInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pAttributes 'void*')
		(dwAccess 'void')
		(name 'void')
	)
]
