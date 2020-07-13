Extension { #name : #GLFW }

{ #category : #'*Vulkan-Core' }
GLFW class >> GLFW_CLIENT_API [
	^16r00022001
]

{ #category : #'*Vulkan-Core' }
GLFW class >> GLFW_NO_API [
	^0
]

{ #category : #'*Vulkan-Core' }
GLFW class >> createWindowSurface: instance with: window with: allocator with: surface [

	<apicall: VkResult 'glfwCreateWindowSurface' (VkInstance void* VkAllocationCallbacks* intptr_t*) module: 'libglfw'>
	^ self externalCallFailed
]

{ #category : #'*Vulkan-Core' }
GLFW class >> getFramebufferSize: window with: width with: height [

	<apicall: void 'glfwGetFramebufferSize' (void* long* long*) module: 'libglfw'>
	^ self externalCallFailed
]

{ #category : #'*Vulkan-Core' }
GLFW class >> getRequiredInstanceExtensions: count [
	<apicall: byte* 'glfwGetRequiredInstanceExtensions' (uint32_t*) module: 'libglfw.so'>
	^self externalCallFailed
]

{ #category : #'*Vulkan-Core' }
GLFW class >> waitEvents [

	<apicall: void 'glfwWaitEvents' () module: 'libglfw'>
	^ self externalCallFailed
]
