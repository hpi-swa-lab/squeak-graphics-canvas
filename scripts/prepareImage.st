Transcript showln: 'Begin installation...'.
((Smalltalk globals at: #CIPrepareImageDirectory) directoryEntry / 'install.st') readStream fileIn.
Transcript showln: 'Installation complete.'.

Transcript showln: 'Closing windows...'.
ReleaseBuilder deleteAllWindows.
PreferenceWizardMorph allInstancesDo: [:each | each abandon].

Transcript showln: 'Setting preferences...'.
TranscriptStream characterLimit: 10000000. "10MB"
Workspace shouldStyle: true.
Model useColorfulWindows: true.
Model windowActiveOnFirstClick: true.
Preferences disable: #traceMessages.
Preferences disable: #showSharedFlaps.
UIManager openToolsAttachedToMouseCursor: true.
TextEditor autoEnclose: false.
TextEditor encloseSelection: true.

"Other preferences"
"Preferences enable: #mouseOverForKeyboardFocus.
Preferences disable: #alternativeBrowseIt.
MorphicProject worldGridEnabled: true."

Transcript showln: 'Adding workspace lookup pools...'.
Workspace addLookupPool: GLConstants.
Workspace addLookupPool: GLFWConstants.
Workspace addLookupPool: PicConstants.

Transcript showln: 'Opening profiling morphs...'.
{ RtFrameRateMorph. RtGCPressureMorph. RtIdleTimeMorph } inject: 0 into: [:top :cls || morph |
  morph := cls new
    setToAdhereToEdge: #right;
    color: Color white;
    retentionDuration: 2e6;
    top: top;
    openInWorld;
    lock;
    yourself.
  morph bottom].

"Open MagnifierMorph"
"MagnifierMorph new
  openInWorld;
  setToAdhereToEdge: #bottomLeft;
  magnification: 4;
  lock."

"Open pre-prepared workspaces"
"RtWorkspaces openAll."

"Clean up and save the image."
Transcript showln: 'Collecting garbage...'.
Smalltalk garbageCollect.
Transcript showln: 'Condensing changes...'.
Smalltalk condenseChanges.

Transcript showln: 'Image preparation complete.'.
