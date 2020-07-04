Class {
	#name : #VkShaderStatisticsInfoAMD,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkShaderStatisticsInfoAMD class >> fields [

	^ #(
		(shaderStageMask 'VkShaderStageFlags')
		(resourceUsage 'VkShaderResourceUsageAMD')
		(numPhysicalVgprs 'uint32_t')
		(numPhysicalSgprs 'uint32_t')
		(numAvailableVgprs 'uint32_t')
		(numAvailableSgprs 'uint32_t')
		(computeWorkGroupSize 'uint32_t[3]')
	)
]
