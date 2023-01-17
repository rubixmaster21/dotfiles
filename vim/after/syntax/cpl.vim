"Syntax file for a Commonplace;
"see https://controlaltbackspace.org/commonplace/

if exists("b:current_syntax")
				finish
endif
let b:current_syntax = "cpe"

syn match Date "^\(January\|February\|March\|April\|May\|June\|July\|August\|September\|October\|November\|December\) [0-9][0-9]*, 20[0-9][0-9]$"

syn match Attr "\" --\S.*"ms=s+2 contains=Hashtag "quote sources on same line
syn match Attr "^--\S.*" contains=Hashtag  "quote source on new line

"Highlight speakers in dialogue sections; speaker name limited to 20
"characters
syn match Speaker /^[a-zA-Z0-9\.' ]\{-1,20\}: "/he=e-2 "standard
syn match Speaker /^[a-zA-Z0-9\.' ]\{-1,20\}: (/he=e-2 "parenthetized actions
syn match Speaker /^<.\{-\}>/ "IRC

syn match Hashtag "\(\s\|(\|--\|\"\) \#\w\+"
syn match Hashtag "\(\s\|(\|--\|\"\) \#\w\+" contained

syn match Ref "\[*RF$\S\+" 
syn match Ref "^[@#][0-9]*\."

syn match Link "[cC]f\."
syn match Link "[cC]f\. [A-Z]B[0-9]\+\.[0-9]\+"
syn match Link "{BL .*}"

syn match Emphasis "\*\{-\}\*" contained
syn match Emphasis "\<_.\{-\}_\>*" contained
syn match Emphasis "\*\{-\}\*"
syn match Emphasis "\<_.\{-\}_\>*"

syn match Scratch "\*\*\*\*\* Scratch area \*\*\*\*\*"

syn region Code start="@@@" end="@@@"

hi link Emphasis Formatted
hi link Hashtag Keyword
hi link Link Keyword
hi link Ref PreProc
hi link Attr String
hi link Speaker Comment
hi link Scratch Underlined
hi link Date Function
hi link Code Constant
hi Formatted cterm=bold
