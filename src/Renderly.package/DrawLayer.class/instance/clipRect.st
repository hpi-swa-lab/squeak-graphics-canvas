accessing
clipRect
	"global clip rect"
	^ clipRect ifNil: [clipRect := self parent clipRect]