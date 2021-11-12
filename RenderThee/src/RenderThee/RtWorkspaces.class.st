Class {
	#name : #RtWorkspaces,
	#superclass : #Object,
	#category : #'RenderThee-Examples'
}

{
	#category : #creation,
	#'squeak_changestamp' : 'stlu 8/13/2021 12:56'
}
RtWorkspaces class >> allButFirstLine: aString [

	aString lineIndicesDo: [:start :endWithoutDelimites :end |
		end >= aString size ifTrue: [^ ''].
		^ aString copyFrom: end + 1 to: aString size].
]

{
	#category : #workspaces,
	#'squeak_changestamp' : 'stlu 11/12/2021 15:14'
}
RtWorkspaces class >> batchedTextRendering [ <title: 'Rudimentary batched text rendering'> <auto: false> <collapsed: false> | example glyphTexture renderer |
"Batched text rendering is finally working. There's still a lot of issues with it like glyph quality, no interleaved batches, etc."
example := RtBatchingExample world.

"We are finally actually using the texture atlas."
renderer := example renderer.
glyphTexture := renderer glyphStore texture.
(glyphTexture library withErrorChecking makeCurrentDuring: [glyphTexture asForm]) asMorph openInHand.
]

{
	#category : #workspaces,
	#'squeak_changestamp' : 'stlu 11/12/2021 15:14'
}
RtWorkspaces class >> bulkPluginBenchmarks [ <title: 'Bulk plugin benchmarks'> <auto: false> <collapsed: false> | array |
[1 to: 1e3 do: [:index | "do nothing" ]] bench.
" '553,000 per second. 1.81 microseconds per run. 0 % GC time.'"

array := IntegerArray new: 14.
[1 to: 1e3 do: [:index | array at: 1 put: 42]] bench.
" '140,000 per second. 7.13 microseconds per run. 0 % GC time.'"

array := Float32Array new: 14.
[1 to: 1e3 do: [:index | array at: 1 put: 1.0]] bench.
" '76,200 per second. 13.1 microseconds per run. 0 % GC time.'"

[1 to: 1e3 do: [:index | array primInternalPluginAt: 1 put: 1.0]] bench.
" '31,700 per second. 31.5 microseconds per run. 0 % GC time.'"

[1 to: 1e3 do: [:index | array primExternalPluginOldAt: 1 put: 1.0]] bench.
" '31,200 per second. 32 microseconds per run. 0 % GC time.'"

[1 to: 1e3 do: [:index | array primExternalPluginNewAt: 1 put: 1.0]] bench.
" '36,200 per second. 27.6 microseconds per run. 0 % GC time.'"

[1 to: 1e3 do: [:index | array primExternalPluginNoneAt: 1 put: 1.0]] bench.
" '40,600 per second. 24.6 microseconds per run. 0 % GC time.'"

[1 to: 1e3 do: [:index | array startingAt: 1 put: 1.0 put: 2.0]] bench.
" '33,100 per second. 30.2 microseconds per run. 0 % GC time.'"


array := Float32Array new: 14.
array := Array new: 14.
[1 to: 1e3 do: [:index |
	array at: 1 put: 1.0.
	array at: 2 put: 2.0.
	array at: 3 put: 3.0.
	array at: 4 put: 4.0.
	array at: 5 put: 5.0.
	array at: 6 put: 6.0.
	array at: 7 put: 7.0.
	array at: 8 put: 8.0.
	array at: 9 put: 9.0.
	array at: 10 put: 10.0.
	array at: 11 put: 11.0.
	array at: 12 put: 12.0.
	array at: 13 put: 13.0.
	array at: 14 put: 14.0]] bench.
" '16,200 per second. 61.6 microseconds per run. 0 % GC time.'"
" '7,010 per second. 143 microseconds per run. 0 % GC time.'"

[1 to: 1e3 do: [:index |
	{1.0. 2.0. 3.0 . 4.0 . 5.0 . 6.0 . 7.0 . 8.0 . 9.0 . 10.0 . 11.0 . 12.0 . 13.0 . 14.0}]] bench.
" '5,860 per second. 171 microseconds per run. 19.67606 % GC time.'"

[1 to: 1e3 do: [:index |
	array
		startingAt: 1
		put: 1.0 put: 2.0 put: 3.0 put: 4.0
		put: 5.0 put: 6.0 put: 7.0 put: 8.0
		put: 9.0 put: 10.0 put: 11.0 put: 12.0
		put: 13.0 put: 14.0]] bench.
" '18,000 per second. 55.5 microseconds per run. 0 % GC time.'"

[1 to: 1e3 do: [:index |
	array at: 1 put: 1.0.
	array at: 2 put: 2.0.
	array at: 3 put: 3.0]] bench.
" '31,200 per second. 32 microseconds per run. 0 % GC time.'"

[1 to: 1e3 do: [:index |
	array
		startingAt: 1
		put: 1.0 put: 2.0 put: 3.0]] bench.
" '32,700 per second. 30.5 microseconds per run. 0 % GC time.'"

Smalltalk unloadModule: 'Float32ArrayBulkPlugin'.
]

{
	#category : #workspaces,
	#'squeak_changestamp' : 'stlu 11/12/2021 15:14'
}
RtWorkspaces class >> copyingMemoryIsFast [ <title: 'Advantages in Caching'> <auto: false> <collapsed: false> | original repIndex repSize replacement |
"-----------------------------------------------------------"
"Copying chunks of memory is MUCH faster"
"-----------------------------------------------------------"
repSize := 1000.
replacement := Float32Array new: repSize.
1 to: repSize do: [:index | replacement at: index put: index asFloat].
original := Float32Array new: 512 squared.
repIndex := 2.
"-----------------------------------------------------------"

[original replaceFrom: repIndex to: repIndex + repSize - 1 with: replacement startingAt: 1] bench.
"1000|512^2 '3,040,000 per second. 329 nanoseconds per run. 0 % GC time.'"
"100|512^2 '18,200,000 per second. 54.9 nanoseconds per run. 0 % GC time.'"
"10|1000 '37,200,000 per second. 26.9 nanoseconds per run. 0 % GC time.'"

[1 to: repSize do: [:index | original at: repIndex + index - 1 put: (replacement at: index)]] bench.
"1000|512^2 '35,800 per second. 28 microseconds per run. 0 % GC time.'"
"100|512^2 '354,000 per second. 2.82 microseconds per run. 0 % GC time.'"
"10|1000 '3,400,000 per second. 294 nanoseconds per run. 0 % GC time.'"

"-----------------------------------------------------------"

"We could use this extensively, but right now we're only using it for Picstring"
PicStringNode >> #calculateRightEdges.
]

{
	#category : #workspaces,
	#'squeak_changestamp' : 'stlu 11/12/2021 15:14'
}
RtWorkspaces class >> learnOpenGLExamples [ <title: 'learnopengl.com Examples'> <auto: true> <collapsed: false>
"1.1.1" LOGLHelloWindow run.
"1.1.2" LOGLHelloWindowClear run.
"1.2.1" LOGLHelloTriangle run.
"1.2.2" LOGLHelloTriangleIndexed run.
"1.3.1" LOGLShadersUniform run.
"1.3.2" LOGLShadersInterpolation run.
"1.4.1" LOGLTextures run.
"1.5.1" LOGLTransformations run.
"1.6.1" LOGLCoordinateSystems run.
"1.6.2" LOGLCoordinateSystemsDepth run.
"1.6.3" LOGLCoordinateSystemsMultiple run.
"1.7.1" LOGLCameraCircle run.
"1.7.4" LOGLCameraClass run.
"4.1.1" LOGLDepthTesting run.
"4.3.1" LOGLDiscarding run.
"4.3.2" LOGLBlending run.
"4.10.1" LOGLInstancing run.
LOGLBreakout run.

GLFW terminate.
]

{
	#category : #workspaces,
	#'squeak_changestamp' : 'stlu 11/12/2021 15:53'
}
RtWorkspaces class >> morphicRenderingExamples [ <title: 'Morphic rendering examples'> <auto: true> <collapsed: false>
RtBatchingExample world.
RtBatchingExample benchWorld.
RtBatchingExample bouncingAtoms: 500.
RtBatchingExample drawReference.
RtBatchingExample browser.
RtBatchingExample chineseCheckers.
RtBatchingExample spaceGame.

RtOpenGLCanvasExample world.
RtOpenGLCanvasExample benchWorld.
RtOpenGLCanvasExample bouncingAtoms: 500.
RtOpenGLCanvasExample drawReference.
RtOpenGLCanvasExample browser.
RtOpenGLCanvasExample chineseCheckers.
RtOpenGLCanvasExample spaceGame.

RtFormCanvasExample world.
RtFormCanvasExample benchWorld.
RtFormCanvasExample bouncingAtoms: 500.
RtFormCanvasExample drawReference.
RtFormCanvasExample browser.
RtFormCanvasExample chineseCheckers.
RtFormCanvasExample spaceGame.
]

{
	#category : #creation,
	#'squeak_changestamp' : 'stlu 8/12/2021 18:51'
}
RtWorkspaces class >> openAll [

	| availableWorkspaces |
	availableWorkspaces := (Pragma allNamed: #auto: in: self theMetaClass)
		select: [:each | each arguments first]
		thenCollect: [:each | each method selector].
	availableWorkspaces do: [:each |
		self openWorkspace: each].
]

{
	#category : #creation,
	#'squeak_changestamp' : 'stlu 8/12/2021 18:54'
}
RtWorkspaces class >> openWorkspace: aSymbol [

	| method title closable contents workspace window collapsed |
	closable := false.
	method := self theMetaClass compiledMethodAt: aSymbol.
	title := (method pragmaAt: #title:)
		ifNil: ['Unnamed Workspace']
		ifNotNil: [:titlePragma | titlePragma arguments first].
	collapsed := (method pragmaAt: #collapsed:)
		ifNil: [false]
		ifNotNil: [:collapsedPragma | collapsedPragma arguments first].
	contents := self allButFirstLine: method getSource asString.
	workspace := Workspace new.
	workspace acceptContents: contents.
	window := workspace openLabel: title.
	closable ifFalse: [window makeUnclosable].
	collapsed ifTrue: [window collapse].
]

{
	#category : #workspaces,
	#'squeak_changestamp' : 'stlu 11/12/2021 15:15'
}
RtWorkspaces class >> pictureAndCanvasBenchmarking [ <title: 'Picture and Canvas Benchmarking'> <auto: false> <collapsed: false> | formCanvas morphPic morph nullCanvas picUpdaterCanvas picCanvas pic visitor w1 w10 w11 w12 w13 w14 w15 w16 w2 w3 w4 w5 w6 w7 w8 w9 world |
[
world := (PasteUpMorph newWorldForProject: nil)
	hResizing: #spaceFill;
	vResizing: #spaceFill;
	viewBox: (0@0 corner: (1920@1080) * 1);
	layoutFrame: LayoutFrame fullFrame;
	fillStyle: Project current world fillStyle;
	fullBounds;
	yourself.

w1 := (ToolSet browse: Morph selector: #drawOn:) dependents detect: [:ea | ea isSystemWindow].
w2 := ToolSet
		browseMessageSet: (SystemNavigation default allCallsOn: #negated)
		name: 'Senders' translated autoSelect: 'negated'.
w3 := (Workspace new contents: '3+4 "Select and hit [CMD]+[P]."') openLabel: 'Workspace'.
w4 := (ToolSet browse: FormCanvas selector: #transformBy:clippingTo:during:smoothing:) dependents detect: [:ea | ea isSystemWindow].
w5 := ToolSet
		browseMessageSet: (SystemNavigation default allCallsOn: #OrderedCollection)
		name: 'Users of OrderedCollection' autoSelect: 'OrderedCollection'.
w6 := ToolBuilder open: MCWorkingCopyBrowser new.
w7 := ToolSet explore: w1.
w8 := ToolSet inspect: w5 model messageList.
w9 := (ToolSet browse: Dictionary selector: #scanFor:) dependents detect: [:ea | ea isSystemWindow].
w10 := (ToolSet browse: SequenceableCollection selector: #do:) dependents detect: [:ea | ea isSystemWindow].
w11 := (ToolSet browse: Float selector: #printOn:base:) dependents detect: [:ea | ea isSystemWindow].
w12 := (ToolSet browse: Point selector: #normalized) dependents detect: [:ea | ea isSystemWindow].
w13 := (ToolSet browse: Rectangle selector: #area) dependents detect: [:ea | ea isSystemWindow].
w14 := (ToolSet browse: Color selector: #alpha:) dependents detect: [:ea | ea isSystemWindow].
w15 := (ToolSet browse: Boolean selector: #ifTrue:ifFalse:) dependents detect: [:ea | ea isSystemWindow].
w16 := (ToolSet browse: ProtoObject selector: #identityHash) dependents detect: [:ea | ea isSystemWindow].


{w1. w2. w3 . w4 . w5 . w6 . w7 . w8 . w9 . w10 . w11 . w12 . w13 . w14 . w15 . w16} do: [:ea |
	ea openInWorld: world].
48 timesRepeat: [
	| w |
	w := (ToolSet browse: Dictionary selector: #scanFor:) dependents detect: [:ea | ea isSystemWindow].
	w openInWorld: world].

world openInHand.
world abandon
].

"_______________________________________________"

morph := ActiveWorld.
morph := world.

[w1 changed] bench.
" '1,900,000 per second. 526 nanoseconds per run. 3.71851 % GC time.'"

[morph picture] bench.
" '13,900,000 per second. 71.8 nanoseconds per run. 0 % GC time.'"

[morph picture: morphPic] bench.
" '8,570,000 per second. 117 nanoseconds per run. 0 % GC time.'"

"_______________________________________________"

picCanvas := PicCanvas new.
picUpdaterCanvas := PicPatcherCanvas new.

pic := (picCanvas reset; fullDrawMorph: morph; yourself) getPicture.
morphPic := (picUpdaterCanvas reset; fullDrawMorph: morph; yourself) getPicture.

visitor := PicVisitor new.
nullCanvas := RtNullCanvas new.
formCanvas := FormCanvas extent: morph extent.

pic open.
morphPic open.

[nullCanvas fullDrawMorph: morph] bench.
" '296 per second. 3.38 milliseconds per run. 6.37617 % GC time.'"

[formCanvas reset; fullDrawMorph: morph] bench.
" '18.5 per second. 54.2 milliseconds per run. 0.37728 % GC time.'"

[picCanvas reset; fullDrawMorph: morph] bench.
" '221 per second. 4.53 milliseconds per run. 6.57343 % GC time.'"

[picUpdaterCanvas reset; fullDrawMorph: morph] bench.
" '38.8 per second. 25.8 milliseconds per run. 37.83243 % GC time.'"

[morph allMorphsDo: [:each | each picture: nil]] bench.
" '4,240 per second. 236 microseconds per run. 14.37712 % GC time.'"

[morph allMorphsDo: [:each | each picture: nil].
picUpdaterCanvas reset; fullDrawMorph: morph] bench.
" '164 per second. 6.09 milliseconds per run. 6.35492 % GC time.'"


[nullCanvas draw: pic] bench.
" '8,110 per second. 123 microseconds per run. 3.21871 % GC time.'"

[nullCanvas draw: morphPic] bench.
" '2,800 per second. 357 microseconds per run. 2.31954 % GC time.'"


[visitor visit: pic] bench.
" '21,300 per second. 46.9 microseconds per run. 2.9994 % GC time.'"

[visitor visit: morphPic] bench.
" '3,530 per second. 283 microseconds per run. 2.05959 % GC time.'"


PicCounter new visit: pic; counts.
PicCounter new visit: morphPic; counts.


RtOpenGLCanvasExample world: morph.
RtBatchingExample world: morph.
RtFormCanvasExample world: morph.


]

{
	#category : #workspaces,
	#'squeak_changestamp' : 'stlu 11/12/2021 15:13'
}
RtWorkspaces class >> textureAtlasAllocator [ <title: 'Texture atlas allocator'> <auto: false> <collapsed: false> | allocations allocator fc requests |
allocator := RtBucketAllocator extent: 1024 @ 1024.
allocator numColumns: 2.

[[1 to: 1000 do: [:index |
	allocator allocate: 64 atRandom @ 64 atRandom].
allocator clear] benchFor: 30 seconds] timeProfile.
" '24.9 per second. 40.2 milliseconds per run. 0.05977 % GC time.'"

requests := OrderedCollection new.
600 timesRepeat: [requests add: 61 atRandom @ 61 atRandom + 3].

allocator := RtBucketAllocator extent: 1024 @ 1024 numColumns: 2.
allocations := OrderedCollection new.
requests do: [:extent | allocations add: (allocator allocate: extent)].
allocator imageForm asMorph openInHand.

fc := FormCanvas extent: allocator extent.
fc fillColor: Color white.
fc frameRectangle: (0@0 extent: fc extent) color: Color black.
allocations with: requests do: [:alloc :request |
	fc fillRectangle: alloc rectangle color: Color red.
	fc fillRectangle: (alloc rectangle origin extent: request) color: Color green.
	fc frameRectangle: alloc rectangle color: Color black].
fc form asMorph openInHand.
]
