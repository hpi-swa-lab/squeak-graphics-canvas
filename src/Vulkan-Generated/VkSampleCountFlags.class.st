Class {
	#name : #VkSampleCountFlags,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkSampleCountFlags class >> VK_SAMPLE_COUNT_16_BIT [

	^ self on: (1 bitShift: 4)
]

{ #category : #'as yet unclassified' }
VkSampleCountFlags class >> VK_SAMPLE_COUNT_1_BIT [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkSampleCountFlags class >> VK_SAMPLE_COUNT_2_BIT [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkSampleCountFlags class >> VK_SAMPLE_COUNT_32_BIT [

	^ self on: (1 bitShift: 5)
]

{ #category : #'as yet unclassified' }
VkSampleCountFlags class >> VK_SAMPLE_COUNT_4_BIT [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkSampleCountFlags class >> VK_SAMPLE_COUNT_64_BIT [

	^ self on: (1 bitShift: 6)
]

{ #category : #'as yet unclassified' }
VkSampleCountFlags class >> VK_SAMPLE_COUNT_8_BIT [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkSampleCountFlags class >> originalTypeName [

    ^ 'long'
]
