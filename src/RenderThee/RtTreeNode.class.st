Class {
	#name : #RtTreeNode,
	#superclass : #Object,
	#instVars : [
		'parent'
	],
	#category : 'RenderThee-Core'
}

{ #category : #'managing children' }
RtTreeNode >> addChild: aNode [

	aNode parent: self
]

{ #category : #accessing }
RtTreeNode >> parent [
	"The parent node of this node in the tree."
	^ parent
]

{ #category : #private }
RtTreeNode >> parent: aNode [

	parent := aNode
]

{ #category : #'managing children' }
RtTreeNode >> removeChild: childNode [

	childNode parent: nil
]
