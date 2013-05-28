Spruce v1.0
======

A great low-level programming language designed to be both easy to program and easy to compile.

Spruce combines high-level object-orientation with efficient low-level imperative programming.

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
```

Function syntax: `function [name] ([param]:[type]) ([param2]:[type2] ...) returns [type] does ... end`

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
s.myFunction 3;
```

Basic class syntax:

`class [name] contains ... end`

`public [var-type] [var-name];`

`private [var-type] [var-name] (getter?) (setter?)`

`[class-name] [var-name] = new [class-name] { [class-vars] };`

`if ( [var-name] is [class-name] ) then ... end`
