Class {
	#name : #VkPhysicalDeviceDiagnosticsConfigFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceDiagnosticsConfigFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(diagnosticsConfig 'VkBool32')
	)
]
