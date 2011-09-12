# Calculator extension for the Ruby Strings #

Adds a method `calculate` to the Ruby String-class.

The method can do the following mathematical operations:

*   Addition
*   Subtraction
*   Multiplication
*   Division

### Examples: ###

    "1 + 2".calculate   # => 3
    "9 - 2".calculate   # => 7
    "5 * 2".calculate   # => 10
    "15 / 3".calculate  # => 5

## Advanced expressions ##

It also handles more advanced expressions with operations done in the following order:

1.  Multiplication
2.  Division
3.  Subtraction
4.  Addition

### Examples: ###

    "15+35-5*5".calculate           # => 25
    "5+10/2-8*4".calculate          # => -22
    "16*12/6+67-12+20/5".calculate  # => 91
