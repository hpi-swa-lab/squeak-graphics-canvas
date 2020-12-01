Class {
	#name : #RtLayerVisitor,
	#superclass : #Object,
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #visiting,
	#timestamp : ''
}
RtLayerVisitor >> visit: anObject [

	^ anObject accept: self
]

{
	#category : #visiting,
	#timestamp : ''
}
RtLayerVisitor >> visitDrawLayer: aLayer [

	
]

{
	#category : #visiting,
	#timestamp : ''
}
RtLayerVisitor >> visitGroupLayer: aLayer [

	aLayer children do: [:child |
		child accept: self]
]
