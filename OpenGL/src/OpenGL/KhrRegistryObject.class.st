Class {
	#name : #KhrRegistryObject,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#classVars : [
		'Suffixes'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 3/5/2021 12:58'
}
KhrRegistryObject class >> suffixes [

	^ Suffixes ifNil: [
		Suffixes := #('3DFX' '3DL' 'AMD' 'APPLE' 'ARB' 'ARM' 'ATI' 'DMP' 'EXT' 'FJ' 'GREMEDY' 'HP' 'I3D' 'IBM' 'IMG' 'INGR' 'INTEL' 'KHR' 'MESA' 'MESAX' 'NV' 'NVX' 'OES' 'OML' 'OVR' 'PGI' 'QCOM' 'REND' 'S3TC' 'SGI' 'SGIS' 'SGIX' 'SUN' 'SUNX' 'WIN') asSet]
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:03'
}
KhrRegistryObject >> acceptVisitor: aVisitor [

	self subclassResponsibility
]

{
	#category : #testing,
	#timestamp : 'stlu 12/28/2020 13:52'
}
KhrRegistryObject >> isCommand [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 12/28/2020 13:52'
}
KhrRegistryObject >> isEnum [

	^ false
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/1/2020 19:34'
}
KhrRegistryObject >> name [

	^ name
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/1/2020 21:29'
}
KhrRegistryObject >> name: stringOrSymbol [

	name := stringOrSymbol
]
