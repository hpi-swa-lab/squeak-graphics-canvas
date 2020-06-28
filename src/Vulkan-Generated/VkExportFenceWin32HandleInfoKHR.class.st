Class {
	#name : #VkExportFenceWin32HandleInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExportFenceWin32HandleInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pAttributes 'void*')
		(dwAccess 'void')
		(name 'void')
	)
]
