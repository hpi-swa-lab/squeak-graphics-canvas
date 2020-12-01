Class {
	#name : #RtLayerVisitor,
	#superclass : #Object,
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #visiting,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtLayerVisitor >> visit: anObject [

	^ anObject accept: self
]

{
	#category : #visiting,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtLayerVisitor >> visitDrawLayer: aLayer [

	
]

{
	#category : #visiting,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtLayerVisitor >> visitGroupLayer: aLayer [

	aLayer children do: [:child |
		child accept: self]
]
