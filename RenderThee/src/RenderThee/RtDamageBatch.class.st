Class {
	#name : #RtDamageBatch,
	#superclass : #RtBatch,
	#category : #'RenderThee-Batching'
}

{
	#category : #rendering,
	#'squeak_changestamp' : 'stlu 1/3/2022 15:49'
}
RtDamageBatch >> draw [

	self uploadInstanceData.
	
	GL disable: GL_CULL_FACE.
	GL disable: GL_DEPTH_TEST.
	GL depthMask: GL_FALSE.
	GL disable: GL_BLEND.
	
	(self vao vertexBufferBindingAt: 1) buffer: instanceVBO.
	
	self program boundDuring: [
		self vao
			drawElements: GL_TRIANGLES
			numVertices: 6
			indexType: GL_UNSIGNED_BYTE
			numInstances: instanceIndex].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 1/3/2022 15:15'
}
RtDamageBatch >> initialize [

	super initialize.
	isAlpha := false.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/3/2022 18:04'
}
RtDamageBatch >> instanceDataType [

	^ ExternalType int32_t
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/3/2022 15:43'
}
RtDamageBatch >> program [

	^ renderer damageProgram
]
