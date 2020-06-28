Class {
	#name : #VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceFragmentShaderInterlockFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(fragmentShaderSampleInterlock 'VkBool32')
		(fragmentShaderPixelInterlock 'VkBool32')
		(fragmentShaderShadingRateInterlock 'VkBool32')
	)
]
