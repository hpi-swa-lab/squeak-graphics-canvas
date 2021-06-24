| monitor |
FileStream startUp: true.
monitor := [ [
  FileStream stdout nextPutAll: '.'; flush.
  (Delay forMilliseconds: 5000) wait] repeat ] forkAt: 75.

"Update Squeak image"
Smalltalk at: #MCMcmUpdater ifPresent: [ :updater |
  [[ (updater respondsTo: #doUpdate)
    ifTrue: [ updater doUpdate ]
    ifFalse: [
      (updater respondsTo: #updateFromDefaultRepository)
        ifTrue: [ updater updateFromDefaultRepository ]
        ifFalse: [ ((updater respondsTo: #default) and: [
          updater default respondsTo: #doUpdate: ])
            ifTrue: [ updater default doUpdate: false ] ] ] ]
    on: Warning do: [ :ex | ex resume: true ]]
      on: Error do: [ :ex |
        FileStream stdout nextPutAll: ex asString.
        Smalltalk snapshot: true andQuit: true ]].

"Close update transcript"
ReleaseBuilder deleteAllWindows.

[[
  Utilities useAuthorInitials: 'CI' during: [
    | token |
    "Ensure Metacello is loaded."
    Metacello new.

    "Ensure Tonel is loaded."
    [ (Smalltalk classNamed: #MCTonelMissing) signal ] valueSupplyingAnswer: true.

    "Install OSProcess to read environment variables"
    Installer ss project: 'OSProcess'; install: 'OSProcess'.

    token := OSProcess thisOSProcess environmentAt: 'GITHUB_TOKEN'.
    token ifNil: [self error: 'Invalid GITHUB_TOKEN'].

    "Load RenderThee"
    [ Metacello new
      baseline: 'RenderThee';
      repository: 'github://hpi-swa-lab/squeak-morphic-layers:main/RenderThee/src/';
      password: token;
      onConflict: [:ex | ex pass];
      load ] on: Warning do: [:w | w resume ].

    "Load OpenGLCanvas"
    [ Metacello new
      baseline: 'OpenGLCanvas';
      repository: 'github://hpi-swa-lab/squeak-morphic-layers:main/OpenGLCanvas/src/';
      password: token;
      onConflict: [:ex | ex pass];
      load ] on: Warning do: [:w | w resume ].
    
    "Fix FFI"
    ExternalType resetAllTypes].

  "The best preferences"
  TranscriptStream characterLimit: 10000000. "10MB"
  Workspace shouldStyle: true.
  Model useColorfulWindows: true.
  Preferences disable: #traceMessages.
  UIManager openToolsAttachedToMouseCursor: true.
  TextEditor autoEnclose: false.
  TextEditor encloseSelection: true.
  Preferences disable: #showSharedFlaps.
  Model windowActiveOnFirstClick: true.

  "Open FrameRateMorph"
  FrameRateMorph new
    openInWorld;
    setToAdhereToEdge: #bottomRight;
    color: Color white;
    lock.

  "Open Workspace with preferences relevant for High-DPI users"
  Workspace new
    openLabel: 'High-DPI preferences';
    acceptContents:
  '[Preferences setDemoFonts] valueSupplyingAnswer: true.
  Preferences disable: #scrollBarsNarrow.
  Cursor useBiggerCursors: true.
  AbstractResizerMorph gripThickness: 6.'.

  Workspace new
    openLabel: 'Optional preferences';
    acceptContents:
  'Preferences enable: #mouseOverForKeyboardFocus.
  Preferences disable: #alternativeBrowseIt.
  MorphicProject worldGridEnabled: true.'.
]
    on: Warning do: [ :ex | ex resume: true ]]
      on: Error do: [ :ex |
        FileStream stdout nextPutAll: ex asString.
        Smalltalk snapshot: true andQuit: true ].

"Remove stdout output"
monitor terminate.
monitor := nil.

"Clean up and save the image."
Smalltalk garbageCollect.
Smalltalk condenseChanges.
Smalltalk snapshot: true andQuit: true.

!