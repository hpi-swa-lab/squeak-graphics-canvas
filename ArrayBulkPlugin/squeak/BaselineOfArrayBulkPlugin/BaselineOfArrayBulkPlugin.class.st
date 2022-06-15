Class {
	#name : #BaselineOfArrayBulkPlugin,
	#superclass : #BaselineOf,
	#category : #BaselineOfArrayBulkPlugin
}

{
	#category : #baseline,
	#'squeak_changestamp' : 'stlu 06/11/2021 17:21'
}
BaselineOfArrayBulkPlugin >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			package: 'ArrayBulkPlugin-Plugin'; "requires VMMaker"
			package: 'ArrayBulkPlugin-Primitives'.
		
		spec
			group: 'default' with: #('primitives');
			group: 'primitives' with: #('ArrayBulkPlugin-Primitives');
			group: 'plugin' with: #('ArrayBulkPlugin-Plugin');
			group: 'all' with: #('primitives' 'plugin')]
]

{
	#category : #baseline,
	#'squeak_changestamp' : 'stlu 06/11/2021 17:18'
}
BaselineOfArrayBulkPlugin >> projectClass [

	^ self environment
		at: #MetacelloCypressBaselineProject
		ifAbsent: [super projectClass]
]
