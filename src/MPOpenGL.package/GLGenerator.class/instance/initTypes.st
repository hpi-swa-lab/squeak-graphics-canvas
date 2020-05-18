as yet unclassified
initTypes
	typesMap := {
		'void' -> 'void'.
		'void *' -> 'void*'.
		'const void *' -> 'void*'.
		'void **' -> 'void**'.
		'const void *const*' -> 'void*'.
		'const GLchar *const*' -> 'NestedString*'.
		'const GLubyte *' -> 'void*'.
		'const GLchar *' -> 'char*'.
		'GLchar *' -> 'char*'.
		'GLfloat *' -> 'float*'.
		'const GLfloat *' -> 'float*'.
		'const GLdouble *' -> 'double*'.
		'const GLint *' -> 'long*'.
		'const GLuint *' -> 'ulong*'.
		'const GLshort *' -> 'short*'.
		'const GLushort *' -> 'ushort*'.
		'const GLbyte *' -> 'void*'.
		'GLint *' -> 'long*'.
		'GLuint *' -> 'ulong*'.
		'GLboolean *' -> 'ulong*'.
		'const GLenum *' -> 'ulong*'.
		'GLenum *' -> 'ulong*'.
		'GLsizei *' -> 'long*'.
		'const GLsizei *' -> 'long*'.
		'GLint64 *' -> 'longlong*'.
		'GLuint64 *' -> 'ulonglong*'.
		'GLdouble *' -> 'double*'.
		'GLshort *' -> 'short*'.
		'GLenum' -> 'ulong'.
		'GLboolean' -> 'ulong'.
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
		'GLsync' -> 'void*'.
		'const GLsizeiptr *' -> 'longlong*'.
		'GLDEBUGPROC' -> 'void*'.
		'const GLboolean *' -> 'uchar*'.
		'GLushort *' -> 'ushort*'.
		'GLubyte *' -> 'void*'.
		'const GLintptr *' -> 'int**'.
	}as: Dictionary.