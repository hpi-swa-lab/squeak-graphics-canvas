Class {
	#name : #VkPhysicalDeviceType,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkPhysicalDeviceType class >> VK_PHYSICAL_DEVICE_TYPE_CPU [

	^ self on: (4)
]

{ #category : #'as yet unclassified' }
VkPhysicalDeviceType class >> VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU [

	^ self on: (2)
]

{ #category : #'as yet unclassified' }
VkPhysicalDeviceType class >> VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU [

	^ self on: (1)
]

{ #category : #'as yet unclassified' }
VkPhysicalDeviceType class >> VK_PHYSICAL_DEVICE_TYPE_OTHER [

	^ self on: (0)
]

{ #category : #'as yet unclassified' }
VkPhysicalDeviceType class >> VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU [

	^ self on: (3)
]

{ #category : #'as yet unclassified' }
VkPhysicalDeviceType class >> originalTypeName [

    ^ 'long'
]
