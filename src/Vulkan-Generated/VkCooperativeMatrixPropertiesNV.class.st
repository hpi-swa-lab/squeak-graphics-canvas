Class {
	#name : #VkCooperativeMatrixPropertiesNV,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkCooperativeMatrixPropertiesNV class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(MSize 'uint32_t')
		(NSize 'uint32_t')
		(KSize 'uint32_t')
		(AType 'VkComponentTypeNV')
		(BType 'VkComponentTypeNV')
		(CType 'VkComponentTypeNV')
		(DType 'VkComponentTypeNV')
		(scope 'VkScopeNV')
	)
]
