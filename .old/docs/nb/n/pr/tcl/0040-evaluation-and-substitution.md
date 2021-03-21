---
date: "2020-03-07T22:52:33+03:00"
---
<!-- markdownlint-disable MD009 MD010 -->
# `""`, `{}`, `[]` ,`\`

Tcl commands are evaluated in 2 steps. In the first step, **substitution** is done.
In the second step resulting command is **evaluated**. Substitution is carried
out only one pass.

!!! todo
    Formal tutorial page emphasizes *one pass substitution* [^1f].
    Didn't get it. What are the implications of *one*?

For example:

```tcl
set foo "Hello World!"
puts $foo
```

When `puts $foo` is invoked, first `$foo` is **substituted** with its value.
Then, `puts "Hello World!"` is **evaluated**.

## `""`, Enabling Substitution

Grouping words within `""` allows `$varName` substitutions as mentioned
[before](0030-variable-assignment.md).

Example:

```tcl
set foo "Hello"
puts "$foo World!"
```

result:

```text
Hello World!
```

## `\`, Guiding Substitution

`\` disables substitution for the next character. But some strings consisting of
either single or multiple characters after `\` have special meanings.

| String | Output | Hex value |
|---|---|---|
|`\b`|Backspace|0x08|
|`\n`|New Line|0x0a|
|`\r`|Carriage Return|0x0d|
|`\t`|Tab|0x0d|
|`\0dd`|Octal Value|`d` is between 0-7.|
|`\uHHHH`|16-bit Unicode character|H (one to four digits) is a hex digit 0-9,A-F,a-f.|
|`\xHH`|Hexadecimal Value|H (two digits) is a hex digit 0-9,A-F,a-f.|

!!! warning
    `\x` substitution **does not** "keep going" as long as it has hexadecimal digits,
    but only uses the first two.

Example:

```tcl
puts "\x41" ;# 0x41 is ASCII representation of 'A'.
puts "\x42" ;# 0x42 is ASCII representation of 'B'.
puts "\x4142"
puts "\x434142" ;# 0x43 is ASCII representation of 'C'.
puts "\x41C42"
puts "\x41GC42"
puts "\xAG42C42" ;# 0x0A is new line
puts "\xGG41"
puts "\xGA41"
```

output:

```text
A
B
A42
C4142
AC42
AGC42

G42C42
xGG41
xGA41

```

!!! todo
    However, the original manual pages say **last two** not **first two** [^2f], [^3f].
    Examples show the **first two**.

If `\` is used at the end of a line of text, interpreter replaces `\` with a
space character.

```tcl
puts "Hello\
World!"
```

result:

```text
Hello World!
```

This looks like working on commands too, not only on strings. Example:

```tcl
set a\
b
puts "a is $a"
```

```text
a is b
```

### Example

```tcl
set Z Albany
set Z_LABEL "The Capitol of New York is: "

puts "$Z_LABEL $Z"   ;# Prints the value of Z
puts "$Z_LABEL \$Z"  ;# Prints literal $Z instead of the value of Z

puts "\nBen Franklin is on the \$100.00 bill"

set a 100.00
puts "Washington is not on the $a bill"    ;# Not what you want
puts "Lincoln is not on the $$a bill"      ;# This is OK
puts "Hamilton is not on the \$a bill"     ;# Not what you want either
puts "Ben Franklin is on the \$$a bill"    ;# But, this is OK

puts "\n................. examples of escape strings"
puts "Tab\tTab\tTab"
puts "This string prints out \non two lines"
puts "This string comes out\
on a single line"
```

```text
The Capitol of New York is:  Albany
The Capitol of New York is:  $Z

Ben Franklin is on the $100.00 bill
Washington is not on the 100.00 bill
Lincoln is not on the $100.00 bill
Hamilton is not on the $a bill
Ben Franklin is on the $100.00 bill

................. examples of escape strings
Tab	Tab	Tab
This string prints out 
on two lines
This string comes out on a single line

```

## `{}`, Disabling Substitution

Unlike `""` grouping, grouping with `{}` disables substitution. Characters
within `{}` are passed to a command exactly as written. The only interpreted
character is `\` at the end of a line used for line continuation character.

If a string already grouped by `""` having `{` like `"foo{bar"` doesn't have
any special meaning.

### Example

```tcl
set Z Albany
set Z_LABEL "The Capitol of New York is: "

puts "\n.............. examples of differences between  \" and \{"

#Actually no need to escape { since the string is grouped by "".
puts "\n.............. examples of differences between  \" and {"
puts "test {braces}"
puts "$Z_LABEL $Z"
puts {$Z_LABEL $Z}

puts "\n....... examples of differences in nesting \{ and \" "
puts "$Z_LABEL {$Z}"
puts {Who said, "What this country needs is a good $0.05 cigar!"?}

puts "\n.............. examples of escape strings"
puts {Note: no substitutions done within braces \n \r \x0a \f \v}
puts {But:
The escaped newline at the end of a\
string is replaced by a space}
```

output:

```text

.............. examples of differences between  " and {

.............. examples of differences between  " and {
test {braces}
The Capitol of New York is:  Albany
$Z_LABEL $Z

....... examples of differences in nesting { and " 
The Capitol of New York is:  {Albany}
Who said, "What this country needs is a good $0.05 cigar!"?

.............. examples of escape strings
Note: no substitutions done within braces \n \r \x0a \f \v
But:
The escaped newline at the end of a string is replaced by a space
```

```tcl
puts {"1" "2 {3}}
```

output:

```text
"1" "2 {3}
```

```tcl
puts {"1" "2 }3}}
```

gives error:

```text
extra characters after close-brace
    while executing
"puts {"1" "2 }3"
    (file "1.tcl" line 1)
```

```tcl
puts "1 }2 {3} }"
```

output:

```text
1 }2 {3} }
```

```tcl
puts "1 }2 {3" }"
```

gives error:

```text
can not find channel named "1 }2 {3"
    while executing
"puts "1 }2 {3" }""
    (file "1.tcl" line 1)
```

## `[]`, Return Evaluation Result

Using `[]` is equivalent of `` ` `` in shell programming or using return value
of a function in C.

String `[]` is evaluated by Tcl interpreter. As an example

```tcl
puts [readsensor [selectsensor]]
```

Evaluates `selectsensor` and its result is used as parameter of `readsensor`
command. Finally `puts` prints result of evaluated `readsensor`.

If a square bracket is escaped with `\`, it is considered as literal (string
character) square bracket.

`[]` within `{}` is not interpreted and used as literal character.

### Example

```tcl
set x abc
puts "A simple substitution: $x\n"

set y [set x "def"]
puts "Remember that set returns the new value of the variable:"
puts "    X: $x Y: $y\n"

set z {[set x "String within quotes within braces"]}
puts "Note curly braces: $z\n"
puts "\$x is: $x\n"

set a "[set x {String within braces within quotes}]"
puts "See how the set is executed: $a"
puts "\$x is: $x\n"

set b "\[set y {This is a string within braces within quotes}]"
# Note the \ escapes the bracket, and must be doubled to be a
# literal character in double quotes
puts "Note the \\ escapes the bracket:\n \$b is: $b"
puts "\$y is: $y"
```

```text
A simple substitution: abc

Remember that set returns the new value of the variable:
    X: def Y: def

Note curly braces: [set x "String within quotes within braces"]

$x is: def

See how the set is executed: String within braces within quotes
$x is: String within braces within quotes

Note the \ escapes the bracket:
 $b is: [set y {This is a string within braces within quotes}]
$y is: def
```

```tcl
puts "["
```

gives error:

```text
extra characters after close-quote
    while executing
"puts "["
#puts "["
    (file "1.tcl" line 1)
```

```tcl
puts "]"
puts "[set x a]"
puts {[}
```

output:

```text
]
a
[
```

[^1f]: [https://wiki.tcl-lang.org/page/Tcl+Tutorial+Lesson+3](https://wiki.tcl-lang.org/page/Tcl+Tutorial+Lesson+3)
[^2f]: [https://wiki.tcl-lang.org/page/Tcl+Tutorial+Lesson+3](https://wiki.tcl-lang.org/page/Tcl+Tutorial+Lesson+3)
[^3f]: [https://www.tcl.tk/man/tcl8.5/tutorial/Tcl3.html](https://www.tcl.tk/man/tcl8.5/tutorial/Tcl3.html)
