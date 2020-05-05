as yet unclassified
initTypes
	typesMap := {
		'void' -> 'void'.
		'void *' -> 'void*'.
		'const void *' -> 'void*'.
		'void **' -> 'void*'.
		'const void *const*' -> 'void*'.
		'GLenum' -> 'ulong'.
		'GLboolean' -> 'uchar'.
		'GLbitfield' -> 'ulong'.
		'GLubyte' -> 'ubyte'.
		'GLbyte' -> 'byte'.
		'GLshort' -> 'short'.
		'GLushort' -> 'ushort'.
		'GLint' -> 'long'.
		'GLuint' -> 'ulong'.
		'GLclampx' -> 'long'.
		'GLsizei' -> 'long'.
		'GLfloat' -> 'float'.
		'GLclampf' -> 'float'.
		'GLdouble' -> 'double'.
		'GLclampd' -> 'double'.
		'GLeglClientBufferEXT' -> 'void *'.
		'GLeglImageOES' -> 'void *'.
		'GLchar' -> 'byte'.
		'GLcharARB' -> 'byte'.
		'GLhandleARB' -> 'long'. "void* on Apple"
		'GLhalf' -> 'ushort'.
		'GLhalfARB' -> 'ushort'.
		'GLfixed' -> 'long'.
		'GLfixedARG' -> 'long'.
		'GLintptr' -> 'longlong'.
		'GLintptrARB' -> 'longlong'.
		'GLsizeiptr' -> 'longlong'.
		'GLsizeiptrARB' -> 'longlong'.
		'GLint64' -> 'longlong'.
		'GLint64EXT' -> 'longlong'.
		'GLuint64' -> 'ulonglong'.
		'GLuint64EXT' -> 'ulonglong'.
		'GLsync' -> 'void*'
	}as: Dictionary.