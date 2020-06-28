Class {
	#name : #VkPhysicalDeviceVulkan11Features,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceVulkan11Features class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(storageBuffer16BitAccess 'VkBool32')
		(uniformAndStorageBuffer16BitAccess 'VkBool32')
		(storagePushConstant16 'VkBool32')
		(storageInputOutput16 'VkBool32')
		(multiview 'VkBool32')
		(multiviewGeometryShader 'VkBool32')
		(multiviewTessellationShader 'VkBool32')
		(variablePointersStorageBuffer 'VkBool32')
		(variablePointers 'VkBool32')
		(protectedMemory 'VkBool32')
		(samplerYcbcrConversion 'VkBool32')
		(shaderDrawParameters 'VkBool32')
	)
]
