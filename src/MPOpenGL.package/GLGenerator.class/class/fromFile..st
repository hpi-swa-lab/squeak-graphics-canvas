instance creation
fromFile: filePath
	"xml file can be downloaded from https://github.com/KhronosGroup/OpenGL-Registry/blob/master/xml/gl.xml"
	^ self xml: (XMLDOMParser parseDocumentFrom: filePath asURI contentStream)