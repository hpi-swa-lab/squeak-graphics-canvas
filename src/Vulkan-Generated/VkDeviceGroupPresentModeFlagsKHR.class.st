Class {
	#name : #VkDeviceGroupPresentModeFlagsKHR,
	#superclass : #ExternalTypeAlias,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkDeviceGroupPresentModeFlagsKHR class >> VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR [

	^ self on: (1 bitShift: 0)
]

{ #category : #'as yet unclassified' }
VkDeviceGroupPresentModeFlagsKHR class >> VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR [

	^ self on: (1 bitShift: 3)
]

{ #category : #'as yet unclassified' }
VkDeviceGroupPresentModeFlagsKHR class >> VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR [

	^ self on: (1 bitShift: 1)
]

{ #category : #'as yet unclassified' }
VkDeviceGroupPresentModeFlagsKHR class >> VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR [

	^ self on: (1 bitShift: 2)
]

{ #category : #'as yet unclassified' }
VkDeviceGroupPresentModeFlagsKHR class >> originalTypeName [

    ^ 'long'
]
