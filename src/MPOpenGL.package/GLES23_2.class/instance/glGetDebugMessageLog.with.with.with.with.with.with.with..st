as yet unclassified
glGetDebugMessageLog: count with: bufSize with: sources with: types with: ids with: severities with: lengths with: messageLog

	<apicall: ulong 'glGetDebugMessageLog' (ulong long ulong* ulong* ulong* ulong* long* char*)>
	^ self externalCallFailed