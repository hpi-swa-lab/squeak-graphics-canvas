Class {
	#name : #GLDirectProgramInterfaceQueryImplementation,
	#superclass : #GLProgramInterfaceQueryImplementation,
	#category : #'OpenGL-Wrappers-Programs',
	#commentStamp : ''
}

{
	#category : #inputs,
	#timestamp : 'stlu 12/13/2020 15:52'
}
GLDirectProgramInterfaceQueryImplementation >> getInputs: aProgram [

	^ self getResources: GLProgramInput program: aProgram
]

{
	#category : #'resource querying',
	#timestamp : 'stlu 12/13/2020 14:42'
}
GLDirectProgramInterfaceQueryImplementation >> getResource: aResourceClass program: aProgram at: index [

	| properties name |
	properties := self
					queryResourceProperties: aResourceClass propertiesToQuery
					program: aProgram
					interface: aResourceClass interface
					at: index.
	name := self
				queryResourceName: properties first
				program: aProgram
				interface:aResourceClass interface
				at: index.
	^ aResourceClass
		program: aProgram
		name: name
		properties: properties
]

{
	#category : #'resource querying',
	#timestamp : 'stlu 12/13/2020 16:06'
}
GLDirectProgramInterfaceQueryImplementation >> getResources: aResourceClass program: aProgram [

	| numResources resources |
	numResources := self
						queryInterface: aResourceClass interface
						program: aProgram
						property: GL_ACTIVE_RESOURCES.
	resources := Dictionary new: numResources.
	1 to: numResources do: [:i |
		| resource |
		resource := self getResource: aResourceClass program: aProgram at: i - 1.
		resources at: resource name put: resource].
	^ resources
]

{
	#category : #uniforms,
	#timestamp : 'stlu 12/13/2020 14:55'
}
GLDirectProgramInterfaceQueryImplementation >> getUniforms: aProgram [

	^ self getResources: GLUniform program: aProgram
]

{
	#category : #'resource querying',
	#timestamp : 'stlu 12/13/2020 14:47'
}
GLDirectProgramInterfaceQueryImplementation >> queryInterface: interfaceEnum program: aProgram property: propertyEnum [

	| result |
	result := WordArray new: 1.
	GL
		getProgramInterfaceiv: aProgram id
		with: interfaceEnum
		with: propertyEnum
		with: result.
	^ result first
]

{
	#category : #'resource querying',
	#timestamp : 'stlu 12/13/2020 14:42'
}
GLDirectProgramInterfaceQueryImplementation >> queryResourceName: nameLength program: aProgram interface: interfaceEnum at: index [

	| result |
	result := ByteArray new: nameLength "includes null-terminator".
	GL
		getProgramResourceName: aProgram id
		with: interfaceEnum
		with: index
		with: result size
		with: nil
		with: result.
	^ result allButLast utf8Decoded
]

{
	#category : #'resource querying',
	#timestamp : 'stlu 12/13/2020 14:42'
}
GLDirectProgramInterfaceQueryImplementation >> queryResourceProperties: aWordArray program: aProgram interface: interfaceEnum at: index [

	| result |
	result := WordArray new: aWordArray size.
	GL
		getProgramResourceiv: aProgram id
		with: interfaceEnum
		with: index
		with: aWordArray size
		with: aWordArray
		with: result size
		with: nil
		with: result.
	^ result
]
