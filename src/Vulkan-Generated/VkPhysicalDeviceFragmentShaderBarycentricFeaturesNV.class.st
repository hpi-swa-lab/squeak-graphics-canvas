Class {
	#name : #VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(fragmentShaderBarycentric 'VkBool32')
	)
]
