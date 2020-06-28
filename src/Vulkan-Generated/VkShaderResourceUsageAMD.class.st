Class {
	#name : #VkShaderResourceUsageAMD,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkShaderResourceUsageAMD class >> fields [

	^ #(
		(numUsedVgprs 'uint32_t')
		(numUsedSgprs 'uint32_t')
		(ldsSizePerLocalWorkGroup 'uint32_t')
		(ldsUsageSizeInBytes 'size_t')
		(scratchMemUsageInBytes 'size_t')
	)
]
