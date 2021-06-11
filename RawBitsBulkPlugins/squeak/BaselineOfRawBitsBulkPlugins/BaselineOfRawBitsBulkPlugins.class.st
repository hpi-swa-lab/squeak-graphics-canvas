Class {
	#name : #BaselineOfRawBitsBulkPlugins,
	#superclass : #BaselineOf,
	#category : #BaselineOfRawBitsBulkPlugins
}

{
	#category : #baseline,
	#'squeak_changestamp' : 'stlu 06/11/2021 17:21'
}
BaselineOfRawBitsBulkPlugins >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			package: 'RawBitsBulkPlugins-Plugins'; "requires VMMaker"
			package: 'RawBitsBulkPlugins-Primitives'.
		
		spec
			group: 'default' with: #('primitives');
			group: 'primitives' with: #('RawBitsBulkPlugins-Primitives');
			group: 'plugins' with: #('RawBitsBulkPlugins-Plugins');
			group: 'all' with: #('primitives' 'plugins')]
]

{
	#category : #baseline,
	#'squeak_changestamp' : 'stlu 06/11/2021 17:18'
}
BaselineOfRawBitsBulkPlugins >> projectClass [

	^ self environment
		at: #MetacelloCypressBaselineProject
		ifAbsent: [super projectClass]
]
