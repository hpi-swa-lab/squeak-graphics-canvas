as yet unclassified
createInstance

	| appInfo createInfo applicationName engineName layerNames debugUtilsMessengerCreateInfo extensionsAndCount instancePtr |
	layerNames := self layerNames.
	applicationName := 'Hello Triangle' asExternalString.
	engineName := 'No Engine' asExternalString.
	appInfo := VkApplicationInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_APPLICATION_INFO;
		pApplicationName: applicationName;
		applicationVersion: (self vkMakeVersionMajor: 1 minor: 0 patch: 0);
		pEngineName: engineName;
		engineVersion: (self vkMakeVersionMajor: 1 minor: 0 patch: 0);
		apiVersion: (self vkMakeVersionMajor: 1 minor: 0 patch: 0).
	
	extensionsAndCount := self getExtensionNamesAndCount.
	debugUtilsMessengerCreateInfo := self createDebugMessenger.
	
	createInfo := VkInstanceCreateInfo externalNew
		zeroAllFields;
		sType: VkStructureType VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
		pApplicationInfo: appInfo;
		enabledExtensionCount: extensionsAndCount second;
		ppEnabledExtensionNames: (extensionsAndCount first asType: ExternalType string);
		enabledLayerCount: 1;
		ppEnabledLayerNames: layerNames;
		pNext: debugUtilsMessengerCreateInfo.
	
	instancePtr := ExternalData fromHandle: (ExternalAddress allocate: 8) type: ExternalType intptr_t asPointerType.
	self checkError: (VkAPI new vkCreateInstance: createInfo with: nil with: instancePtr).
	instance := VkInstance on: (instancePtr at: 1)