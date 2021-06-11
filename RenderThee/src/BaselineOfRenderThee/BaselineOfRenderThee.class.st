Class {
	#name : #BaselineOfRenderThee,
	#superclass : #BaselineOf,
	#category : #BaselineOfRenderThee
}

{
	#category : #baseline,
	#'squeak_changestamp' : 'stlu 06/11/2021 16:18'
}
BaselineOfRenderThee >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			baseline: 'OpenGL' with: [
				spec repository: 'github://hpi-swa-lab/squeak-graphics-opengl:main/OpenGL/src/'];
			baseline: 'OpenGLObjects' with: [
				spec repository: 'github://hpi-swa-lab/squeak-graphics-opengl:main/OpenGLObjects/src/'];
			baseline: '3DTransform' with: [
				spec repository: 'github://hpi-swa-lab/squeak-graphics-opengl:main/3DTransform/src/'];
			baseline: 'GLFW' with: [
				spec repository: 'github://hpi-swa-lab/squeak-graphics-opengl:main/GLFW/src/'];
			baseline: 'LearnOpenGL' with: [
				spec repository: 'github://hpi-swa-lab/squeak-graphics-opengl:main/LearnOpenGL/src/'];
			
			package: 'RenderThee' with: [spec requires: #('OpenGL' 'OpenGLObjects' 'GLFW' '3DTransform' 'LearnOpenGL')].
		
		spec
			group: 'default' with: #('all');
			group: 'all' with: #('RenderThee')]
]

{
	#category : #baseline,
	#'squeak_changestamp' : 'stlu 06/11/2021 16:14'
}
BaselineOfRenderThee >> projectClass [

	^ self environment
		at: #MetacelloCypressBaselineProject
		ifAbsent: [super projectClass]
]
