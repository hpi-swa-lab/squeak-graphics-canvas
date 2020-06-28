as yet unclassified
createDebugUtilsMessengerEXT: instance with: createInfo with: pAllocator with: pDebugMessenger

	| funcAddr |
	VkAPI new vkGetInstanceProcAddr: instance with: 'vkEnumeratePhysicalDevices'.
	funcAddr := VkAPI new vkGetInstanceProcAddr: instance with: 'vkCreateDebugUtilsMessengerEXT'.
	funcAddr isNull ifTrue: [self error: 'extension method could not be loaded'].
	
	^ SBToggledCode
		comment: ''
		active: 2
		do: {
			[
				(ExternalLibraryFunction
					name: 'vkCreateDebugUtilsMessengerEXT'
					module: nil
					callType: ExternalLibraryFunction callTypeAPI
					returnType: VkResult externalType
					argumentTypes: (ExternalType lookupTypes: #(#VkInstance #VkDebugUtilsMessengerCreateInfoEXT #* #VkAllocationCallbacks #* #VkDebugUtilsMessengerEXT #*)))
					setHandle: funcAddr getHandle;
					invokeWith: instance with: createInfo with: pAllocator with: pDebugMessenger].
			[ | method |
				method := VkAPI >> #vkCreateDebugUtilsMessengerEXT:with:with:with:.
				(method literalAt: 1) setHandle: funcAddr getHandle.
				VkAPI new vkCreateDebugUtilsMessengerEXT: instance with: createInfo with: pAllocator with: pDebugMessenger]
		}