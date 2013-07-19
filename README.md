Spruce v1.0
======

A great low-level programming language designed to be both easy to program and easy to compile.

Spruce combines high-level object-orientation with efficient low-level imperative programming.

What makes it so great?
=======================

It eliminates some of the biggest pitfalls of C/C++:

- Runtime array-index checking: In Spruce, arrays are objects, and the element-access function throws a runtime exception when given an invalid array index.
- The Spruce equivalent of `if(x = 0)` gives a compilation error.

Examples
========

"Hello, World!" Program in Spruce:

```
$uses Stdio
<-- This is a comment -->
output "Hello,\sWorld!";
```

Note the usage of \s- Spruce v1.0 does not allow direct spaces in strings. \s is used instead.
Also, Spruce insists on spaces BETWEEN EVERYTHING. Like Forth. `somevar = 6` is allowed; `somevar=6` is not.

Variables and Functions
----------

```
$uses Stdio
int myInt = 5;
char myChar = 'B';
memloc myMemLoc = address myInt;
( 4 @ memloc ) = 6;
function myFunc a:int b:int returns int does
	output "myFunc";
	return ( a + b );
end
int a = myFunc 2 3;
```

Function syntax: `function [name] ([param]:[type]) ([param2]:[type2] ...) returns [type] does ... end`

To call functions: `[function-name] parameters;`

YOU DO NOT NEED PARENTHESES FOR FUNCTION CALLS! That's one of the most beautiful things about Spruce.

Operator syntax:
- 2-parameter: `( [var1] [operator] [var2] )`
- 1-parameter: `( [operator [var1] )`

Classes
-------

```
class Complex contains
  public int real;
	public int imag;
	private String secret getter setter;
	private String biggerSecret getter;
end
class SubClass inherits Complex contains
	def myFunction something:int returns Complex does
		return new Complex { 3 something };
	end
end
Complex c = new Complex { 2 3 };
if ( c is Complex ) then
	<-- ... -->
end
SubClass s = ( c as SubClass );
s -> myFunction 3;
<-- Not dots- arrowheads! -->
```

Basic class syntax:

`class [name] contains ... end`

`public [var-type] [var-name];`

`private [var-type] [var-name] (getter?) (setter?)`

`[class-name] [var-name] = new [class-name] { [class-vars] };`

`if ( [var-name] is [class-name] ) then ... end`

By the way, `output "text"` is just syntax sugar for this:
```
String anonymous = new String { ( @ firstCharOfString ) };
anonymous -> print;
```

Preprocessor Instructions and Macros
----------

```
$uses Stdio
$let A be 3
$exists? A
<-- ... -->
$else
<-- ... -->
$end
$delete A
```

Preprocessor Directive Summary:

`$uses [file]`- imports that file. Like `#include` in C/C++.
`$let [var] be [value]`- defines [var] to be [value]. Like `#define` in C/C++.
`$exists? [var]`- like `#ifdef` in C/C++.
`$else` and `$end`- self-explanatory.
`delete [var]`- deletes [var]. Like `#undef` in C/C++.
