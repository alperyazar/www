---
date: 2020-03-07T14:18:04+03:00
---
# Hello World and Basics

(almost ?) All Tcl operations including variable assignments are done with
commands unlike C, Python, etc. Commands should be separated with
either `newline` or `;`.

Our first command is `puts`. It prints text to **standard output device** unless
output channel is given.

```tcl
puts Hello,
puts World
```

Result

```text
Hello,
World
```

`puts` automatically inserts newline character, like `\n` but exact
character depends on platform settings [^1f], at the end. `-nonewline` option prohibits this.

```tcl
puts -nonewline Hello,
puts World
```

```text
Hello,World
```

## Finding Documentation

!!! question
    How can we find a document about `puts` which explains `-nonewline` option?

### Linux

On linux, install `tcl-doc` or a similar package. For example on Debian 10:

```shell
$ sudo apt install tcl-doc
```

then run

```shell
$ apropos puts
fputs (3)            - output of characters and strings
fputs_unlocked (3)   - nonlocking stdio functions
intel-virtual-output (4) - Utility for connecting the Integrated Intel GPU to discrete outputs
puts (3)             - output of characters and strings
puts (3tcl)          - Write to a channel
putspent (3)         - get shadow password file entry
```

then

```shell
$ man 3tcl puts
```

```text
NAME
       puts - Write to a channel

SYNOPSIS
       puts ?-nonewline? ?channelId? string
...
...
...
```

We can see that `-nonewline` is an optional argument since it is between
`?` characters. We can also read the explanation.

### Online

There are also online man pages available. For example, for v8.6:

[https://www.tcl.tk/man/tcl8.6/](https://www.tcl.tk/man/tcl8.6/)

## Command Arguments

Each word separated by `whitespace` is an argument to a command. `whitespace`
can be `space` or `tab` (I don't know other characters, these two are sufficient for me).
It can't be `newline` because it is used to separate commands.

```tcl
puts -nonewline Hello,
puts -nonewline      Hello,
puts -nonewline (TAB) Hello,
```

Here, `puts` is the command. `-nonewline` is the first argument and
`Hello,` is the second argument.

## Enclosing Strings

`""` and `{}` are used for enclosing strings. Strings enclosed by these characters
are treated as single. We will see the difference between them later.

!!! note
    `''` are not significant in Tcl unlike other languages.

## Comments

After a finishing a command with either `newline` or `;` if the next
non-whitspace (?) character is `#` then the remaining line until first
`newline` is treated as comment.

```tcl
puts "Hello, World - In quotes"    ;  # Note: comment after a command.; still comment
#Output: Hello, World - In quotes

puts {Hello, World - In Braces}
#Output: Hello, World - In Braces

# Spaces front of commands are ignored.
   puts "This is line 1"; puts "this is line 2"
#Output: This is line 1
#this is line 2

puts "Hello, World; - With  a semicolon inside the quotes"
#Output: Hello, World; - With  a semicolon inside the quotes

# No need to use quote if word doesn't contain a white space.
puts HelloWorld
#Output: HelloWorld

# The following has two arguments and the first one is used as channelId
# as it is explained in the manual.
puts Hello World
#Output: can not find channel named "Hello"
#    while executing
#"puts Hello World"
#    (file "1.tcl" line 12)
```

[^1f]:[https://www.tcl.tk/man/tcl8.6/TclCmd/puts.htm](https://www.tcl.tk/man/tcl8.6/TclCmd/puts.htm)
