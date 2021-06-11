Class {
	#name : #BaselineOfOpenGLCanvas,
	#superclass : #BaselineOf,
	#category : #BaselineOfOpenGLCanvas
}

{
	#category : #baseline,
	#'squeak_changestamp' : 'stlu 06/11/2021 16:31'
}
BaselineOfOpenGLCanvas >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			baseline: 'OpenGL' with: [
				spec repository: 'github://hpi-swa-lab/squeak-graphics-opengl:main/OpenGL/src/'];
			baseline: 'OpenGLObjects' with: [
				spec repository: 'github://hpi-swa-lab/squeak-graphics-opengl:main/OpenGLObjects/src/'];
			baseline: '3DTransform' with: [
				spec repository: 'github://hpi-swa-lab/squeak-graphics-opengl:main/3DTransform/src/'];
			baseline: 'RenderThee' with: [
				spec repository: 'github://hpi-swa-lab/squeak-morphic-layers:main/RenderThee/src/'];
			
			package: 'OpenGLCanvas' with: [spec requires: #('OpenGL' 'OpenGLObjects' '3DTransform' 'RenderThee')].
		
		spec
			group: 'default' with: #('all');
			group: 'all' with: #('OpenGLCanvas')]
]

{
	#category : #baseline,
	#'squeak_changestamp' : 'stlu 06/11/2021 16:24'
}
BaselineOfOpenGLCanvas >> projectClass [

	^ self environment
		at: #MetacelloCypressBaselineProject
		ifAbsent: [super projectClass]
]
