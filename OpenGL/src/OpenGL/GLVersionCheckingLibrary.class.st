"
I decorate a GLLibrary to automatically check API calls against a specified version.
If the API call is not available in the given version, an error is raised.
"
Class {
	#name : #GLVersionCheckingLibrary,
	#superclass : #GLLibrary,
	#instVars : [
		'library',
		'version'
	],
	#category : #'OpenGL-API',
	#commentStamp : 'stlu 4/14/2021 15:19'
}
