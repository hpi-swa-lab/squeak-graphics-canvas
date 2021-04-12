Class {
	#name : #GLGenRegistryObject,
	#superclass : #Object,
	#instVars : [
		'name',
		'definitions'
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
GLGenRegistryObject class >> suffixes [

	^ Suffixes ifNil: [
		Suffixes := #('3DFX' '3DL' 'AMD' 'APPLE' 'ARB' 'ARM' 'ATI' 'DMP' 'EXT' 'FJ' 'GREMEDY' 'HP' 'I3D' 'IBM' 'IMG' 'INGR' 'INTEL' 'KHR' 'MESA' 'MESAX' 'NV' 'NVX' 'OES' 'OML' 'OVR' 'PGI' 'QCOM' 'REND' 'S3TC' 'SGI' 'SGIS' 'SGIX' 'SUN' 'SUNX' 'WIN') asSet]
]

{
	#category : #accessing,
	#timestamp : 'stlu 4/11/2021 12:56'
}
GLGenRegistryObject >> definitions [

	^ definitions ifNil: [definitions := OrderedCollection new]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/1/2020 19:34'
}
GLGenRegistryObject >> name [

	^ name
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/1/2020 21:29'
}
GLGenRegistryObject >> name: stringOrSymbol [

	name := stringOrSymbol
]

{
	#category : #accessing,
	#timestamp : 'stlu 4/12/2021 12:50'
}
GLGenRegistryObject >> removeIn: apiSymbol profile: profileSymbolOrNil version: versionString [

	self definitions add: { #feature . #remove . apiSymbol . profileSymbolOrNil . versionString }
]

{
	#category : #accessing,
	#timestamp : 'stlu 4/12/2021 12:51'
}
GLGenRegistryObject >> requireIn: apiSymbol profile: profileSymbolOrNil extension: extensionName [

	self definitions add: { #extension . #require . apiSymbol . profileSymbolOrNil . extensionName }
]

{
	#category : #accessing,
	#timestamp : 'stlu 4/12/2021 12:50'
}
GLGenRegistryObject >> requireIn: apiSymbol profile: profileSymbolOrNil version: versionString [

	self definitions add: { #feature . #require . apiSymbol . profileSymbolOrNil . versionString }
]
