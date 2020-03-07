---
date: "2020-03-07T22:21:07+03:00"
---
# Variable Assignment

!!! note
    In Tcl, everything is a string! [^1f]

Unlike other programming languages, we don't assign variables using `=`, instead
there is a command for this: `set`.

```text
NAME
       set - Read and write variables

SYNOPSIS
       set varName ?value?
```

The following example assigns value `b` to variable `a` and returns value `b`.

```tcl
set a b
```

Therefore the following code prints `b`. We will talk about `[]` later.

```tcl
puts [set a b]
```

If we omit the second parameter of `set`, value of the first parameter is returned.
Thus the following code also prints `b`.

```tcl
set a b
puts [set a]
```

## The `$` sign

The following code assigns not literal string `b` to variable `a` but assigns **value**
stored in variable `b` to variable `a`.

```tcl
set a $b
```

## `""` and `$`

If a variable is referenced with preceding `$` sign in a string enclosed by `""`,
then it is replaced by its value. For example

```tcl
set a "World!"
puts "Hello $a"
```

prints

```text
Hello World!
```

## Example

```tcl
set X "This is a string"
set Y 1.24
set label "The value in Y is: "

puts $X
puts "X: $X"
puts "Y: $Y"
puts "$label $Y"
```

results:

```text
This is a string
X: This is a string
Y: 1.24
The value in Y is:  1.24
```

[^1f]: Tcl may choose more suitable internal representation for variables like
list, integer, double, etc. [everything is a string](https://wiki.tcl-lang.org/page/everything+is+a+string)
, [Everything is a Symbol](https://wiki.tcl-lang.org/page/Everything+is+a+Symbol),
[Is everything really a string in TCL? (Vivado oriented question)](https://stackoverflow.com/questions/53512478/is-everything-really-a-string-in-tcl/53523111).
