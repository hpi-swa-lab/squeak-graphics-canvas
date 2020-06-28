as yet unclassified
layerNames

	| layer addr data layers |
	SBLabel text: [
		'TODO: we''re leaking the memory for the layers here'].
	layer := 'VK_LAYER_KHRONOS_validation'.
	addr := ExternalAddress allocate: layer size + 1.
	data := ExternalData fromHandle: addr type: ExternalType string.
	1 to: layer size do: [:index |
		data getHandle byteAt: index put: (layer at: index) asInteger].
	data getHandle byteAt: layer size + 1 put: 0.
	
	layers := ExternalData fromHandle: (ExternalAddress allocate: ExternalAddress wordSize) type: ExternalType string asPointerType.
	layers getHandle pointerAt: 1 put: data getHandle.
	^ layers