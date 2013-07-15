"Vim syntax file for Spruce
"Maintained by Alexander Kitaev, developer of Spruce
"Contact: www.github.com/88Alex
"Compliant with Spruce v1.0

if exists("b:current_syntax")
	finish
endif

"COMMENTS
syn region	sprComment	start=/<--/ end=/-->/
hi def link	sprComment	Comment

"CONSTANTS
syn match	sprDecInteger	"\v[0-9]\+"
hi def link	sprDecInteger	Number

syn match	sprHexInteger	"\v0x[0-9A-Fa-f]\+"
hi def link	sprHexInteger	Number

syn match	sprBinInteger	"\v0b[01]\+"
hi def link	sprBinInteger	Number

syn match	sprFloat	"\v[0-9]\+(\.[0-9]\+)\?"
hi def link	sprFloat	Float

syn match	sprCharacter	"\v'((.)|(\\.))'"
hi def link	sprCharacter	Character

syn match	sprString	"\v\".*\""
hi def link	sprString	String

syn keyword	sprBoolean	true false
hi def link	sprBoolean	Boolean

"IDENTIFIERS/FUNCTIONS
syn keyword	sprApiFunc	output input

"KEYWORDS

syn match	sprOperator	"\v[+\-=&\|\^]\{2}"
syn match	sprOperator	"\v=>"
syn match	sprOperator	"\v[+\-\*/\%&\|^!<>]="
syn match	sprOperator	"\v[+\-\*/\%&\|^!<>\@]"
hi def link	sprOperator	Operator

syn keyword	sprKeyword	acknowledge as asm bool break contains continue decimal
syn keyword	sprKeyword	do does else end function getter if in inherits is new
syn keyword	sprKeyword	return returns setter signal try while
hi def link	sprKeyword	Keyword

syn keyword	sprPreProc	$uses $let $exists? $else $end
hi def link	sprPreProc	PreProc

syn keyword	sprSpruceType	byte char class decimal int memloc String
hi def link	sprSpruceType	Type

let b:current_syntax="spruce"
