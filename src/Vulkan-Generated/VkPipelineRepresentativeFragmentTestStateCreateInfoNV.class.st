Class {
	#name : #VkPipelineRepresentativeFragmentTestStateCreateInfoNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPipelineRepresentativeFragmentTestStateCreateInfoNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(representativeFragmentTestEnable 'VkBool32')
	)
]
