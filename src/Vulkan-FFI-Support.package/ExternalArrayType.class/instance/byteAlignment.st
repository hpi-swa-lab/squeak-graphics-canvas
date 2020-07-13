as yet unclassified
byteAlignment

	self flag: #fixme. " 8 on 64bit linux is definitely wrong. that's all we know so far "
	^ type asNonPointerType byteAlignment "type byteAlignment"