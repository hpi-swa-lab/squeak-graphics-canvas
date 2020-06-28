Class {
	#name : #VkShaderModuleCreateInfo,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkShaderModuleCreateInfo class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkShaderModuleCreateFlags')
		(codeSize 'size_t')
		(pCode 'uint32_t*')
	)
]
