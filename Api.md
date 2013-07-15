Spruce v1.0 API
========

Functions
---------

### Lambda Function

`lambda [parameters:types] return:Type does ... end`

For nostalgic Lisp programmers. Returns a function. Note that Type is an enum consisting of the datatypes in Spruce.

`lambda` is more like a keyword than a function in actuality.

Note the # before `func_name` in line 3: it represents that the value of the variable be used, in lieu of its name.
In this context, `function func_name` would create a function with the name `func_name`.

Also, note that lambdas are compiled along with the rest of the code, but only resolved at runtime.
This means that in this example, using `raiseToPower5` before the loop would cause an error.

Example usage:

```
for i in 1..10 do
    String func_name = String -> concat "raiseToPower" i;
    lambda func_name base:int returns int does
        int result = 1;
        for i in 1..i do
            result *= base;
        end
        return result;
    end
end
```

### Output Function

`output msg`

Outputs the message. The message can be any type. If it is a class other than String, its string equivalent is printed.

### Input Function

`msg = input "Prompt"`

Inputs a message, displaying the prompt. Returns an object of type String.

Classes
-------

### String class

Represents a null-terminated string.

Only instance function is `print`, which displays the string on the console.

Static functions include `concat`, `==`, and others. These are self explanatory and will not be discussed in detail.
