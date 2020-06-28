Class {
	#name : #VkExportMemoryWin32HandleInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExportMemoryWin32HandleInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pAttributes 'void*')
		(dwAccess 'void')
	)
]
