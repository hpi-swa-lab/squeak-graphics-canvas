Class {
	#name : #VkWin32SurfaceCreateInfoKHR,
	#superclass : #ExternalStructure,
	#category : #'Vulkan-Generated'
}

{ #category : #'as yet unclassified' }
VkWin32SurfaceCreateInfoKHR class >> fields [

	^ #(
		(sType 'VkStructureType')
		(pNext 'void*')
		(flags 'VkWin32SurfaceCreateFlagsKHR')
		(hinstance 'void')
		(hwnd 'void')
	)
]
