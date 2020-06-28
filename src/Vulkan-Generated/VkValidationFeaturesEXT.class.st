Class {
	#name : #VkValidationFeaturesEXT,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkValidationFeaturesEXT class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(enabledValidationFeatureCount 'uint32_t')
		(pEnabledValidationFeatures 'VkValidationFeatureEnableEXT*')
		(disabledValidationFeatureCount 'uint32_t')
		(pDisabledValidationFeatures 'VkValidationFeatureDisableEXT*')
	)
]
