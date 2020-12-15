Extension { #name : #GLSLMatrix }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/15/2020 16:25'
}
GLSLMatrix >> * another [
	(another isMatrix or: [ another isVector ] or: [ another isScalar ]) ifFalse: [
		^ self error: 'Tried to multiply matrix with something that is neither a vector nor a matrix nor a scalar'].
	self componentType = another componentType ifFalse: [
		^ self error: 'Tried to multiply ', self class name , ' with ', another class name, ', which have different component types.'].
	
	another isMatrix ifTrue: [
		self numColumns = another numRows ifFalse: [
			^ self error: 'Tried to multiply matrix of width', self numColumns, 'with matrix of height ', another numRows].
		^ SLMappingToOperator new
			type: (GLSLMatrix componentType: self componentType numColumns: another numColumns numRows: self numRows);
			targetSelector: '*'].
		
	another isVector ifTrue: [
		self numColumns = another numComponents ifFalse: [
			^ self error: 'Tried to multiply matrix of width', self numColumns, 'with vector of length ', another numComponents].
		^ SLMappingToOperator new
			type: (GLSLVector componentType: self componentType numComponents: self numRows);
			targetSelector: '*'].
	
	"another is a scalar"
	^ SLMappingToOperator new
		type: self;
		targetSelector: '*'
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/15/2020 13:07'
}
GLSLMatrix >> negated [
	^ SLMappingToOperator new
			type: self componentType;
			selector: '-'
]
