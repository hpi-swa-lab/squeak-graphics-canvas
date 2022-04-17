Extension { #name : #PluggableCanvas }

{
	#category : #'*RenderThee',
	#'squeak_changestamp' : 'stlu 1/27/2022 16:27'
}
PluggableCanvas >> form [

	self apply: [:c | ^ c form].
]
