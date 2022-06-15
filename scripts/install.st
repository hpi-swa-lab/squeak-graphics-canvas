"Find repository directory"
workspacePath := [| dir |
	dir := (Smalltalk globals at: #CIPrepareImageDirectory) directoryEntry.
	[(dir / '.squot') exists] whileFalse: [
		dir = (dir := dir containingDirectory) ifTrue: [
			self error: 'repository not found']].
	dir fullName] value.

"Ensure Metacello is loaded."
Transcript showln: 'Installing Metacello...'.
Metacello new.
Transcript showln: 'Metacello was installed.'.

"Ensure Tonel is loaded."
Transcript showln: 'Installing Tonel...'.
[ (Smalltalk classNamed: #MCTonelMissing) signal ] valueSupplyingAnswer: true.
Transcript showln: 'Tonel was installed.'.

"Install RenderThee"
Transcript showln: ('Installing RenderThee from {1} ... ' format: {workspacePath}).
Utilities useAuthorInitials: 'CI' during: [
  "Author initials need to be set to install OpenGL"
  Metacello new
    baseline: 'RenderThee';
    repository: 'tonel://' , workspacePath , '/RenderThee/src';
    onConflictUseIncoming;
    load: (Smalltalk globals at: #CIMCRequired ifAbsent: [#default])].
Transcript showln: 'RenderThee was installed'.

