Extension { #name : #GLFW }

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
GLFW class >> waitEvents [

	<apicall: void 'glfwWaitEvents' () module: 'libglfw'>
	^ self externalCallFailed
]
