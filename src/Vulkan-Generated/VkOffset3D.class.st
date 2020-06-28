Class {
	#name : #VkOffset3D,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkOffset3D class >> fields [

	^ #(
		(x 'int32_t')
		(y 'int32_t')
		(z 'int32_t')
	)
]
