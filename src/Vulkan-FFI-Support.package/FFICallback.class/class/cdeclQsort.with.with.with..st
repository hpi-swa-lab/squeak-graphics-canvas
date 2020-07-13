examples
cdeclQsort: values with: number with: width with: callback

	<cdecl: void 'qsort' (void* size_t size_t void*) module: 'msvcrt.dll'>
	^ self externalCallFailed