A CustomOpenGLParentTestCase is a TestCase that requires for each test method to open another window.
This can be done through any possible lib, such as sdl or glfw.

Instance Variables
	window:		The window object created for each test method

SubclassResponsibilities:
	- setUpWindow
	- tearDownWindow
