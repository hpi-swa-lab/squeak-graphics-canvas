Class {
	#name : #VkShaderModuleValidationCacheCreateInfoEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkShaderModuleValidationCacheCreateInfoEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(validationCache 'VkValidationCacheEXT')
	)
]
