as yet unclassified
formatNumber: aString

	| string |
	SBExample self: [VkGenerator new] args: [{'(~0U)'}] label: 'example'.
	string := aString.
	#('~0ULL' '~0U')
		with: #(18446744073709551615 4294967295)
		do: [:symbol :value |
			string := string copyReplaceAll: symbol with: '16r', (value printStringBase: 16)].
	^ string