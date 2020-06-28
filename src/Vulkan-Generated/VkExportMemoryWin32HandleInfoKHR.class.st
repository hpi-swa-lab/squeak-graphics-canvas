Class {
	#name : #VkExportMemoryWin32HandleInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkExportMemoryWin32HandleInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(pAttributes 'void*')
		(dwAccess 'void')
		(name 'void')
	)
]
