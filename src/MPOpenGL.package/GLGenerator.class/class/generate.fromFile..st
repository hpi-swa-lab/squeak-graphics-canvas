as yet unclassified
generate: api fromFile: filePath
	"api can for example be 'GL' or 'GLES2'
	xml file can be downloaded from https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/gl.xml"
	| xml |
	xml := XMLDOMParser parseDocumentFrom: (filePath asURI contentStream).
	^ self generate: xml api: api