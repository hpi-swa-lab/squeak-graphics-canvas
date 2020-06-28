Class {
	#name : #VkDeviceDiagnosticsConfigCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceDiagnosticsConfigCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkDeviceDiagnosticsConfigFlagsNV')
	)
]
