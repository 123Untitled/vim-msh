" syntax/msh.vim - Syntax highlighting for .msh files

if exists("b:current_syntax")
	finish
endif

" keywords
syntax match MshKeyword '\s*\(channel\|trigger\|octave\|velocity\|note\|gate\)\s*:'

" numbers
syntax match MshNumber /\<\d\+\>/

" hex numbers
syntax match MshNumber /\<0x[0-9a-fA-F]\+\>/

" percentages
syntax match MshPercentage '\d\+%'

" notes
syntax match MshNote '\<[A-G][#b]\?[0-9]*\>'

" comments
syntax match MshComment '#.*$'

" signatures
syntax match MshSignature '\s*@[0-9]\+\/[0-9]\+\s*'

" track
syntax match MshTrack '\[\s*[a-zA-Z0-9_]\+\s*\]'

" separators
syntax match MshSeparator '[,'\|\.]'

" control change
syntax match MshControlChange '\s*cc\s*[0-9]\+\s*:'


highlight link MshKeyword Keyword
highlight link MshNumber Number
highlight link MshPercentage Number
highlight link MshComment Comment
highlight link MshNote String
highlight link MshSignature Function
highlight link MshTrack Label
highlight link MshSeparator Comment
highlight link MshControlChange Keyword


" set the syntax
let b:current_syntax = "msh"
