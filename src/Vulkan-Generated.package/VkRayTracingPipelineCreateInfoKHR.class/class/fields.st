as yet unclassified
fields

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkPipelineCreateFlags')
		(stageCount 'uint32_t')
		(pStages 'VkPipelineShaderStageCreateInfo*')
		(groupCount 'uint32_t')
		(pGroups 'VkRayTracingShaderGroupCreateInfoKHR*')
		(maxRecursionDepth 'uint32_t')
		(libraries 'VkPipelineLibraryCreateInfoKHR')
		(pLibraryInterface 'VkRayTracingPipelineInterfaceCreateInfoKHR*')
		(layout 'VkPipelineLayout')
		(basePipelineHandle 'VkPipeline')
		(basePipelineIndex 'int32_t')
	)