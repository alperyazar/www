---
summary: Tcl installation
---
# Tcl Installation

## Linux

This part is tested on almost vanilla Debian 10 "buster". It looks like
Tcl is installed already. Check:

```shell
$ tclsh
```

you should get an interactive prompt

```tcl
%
```

Type `exit` and press `Enter`.

Where is `tclsh`?

```shell
$ which tclsh
/usr/bin/tclsh
```

Which package provides Tcl?

```shell
$ dpkg -S /usr/bin/tclsh
tcl: /usr/bin/tclsh
```

So, if you are missing `tclsh`, you can run

```shell
$ sudo apt install tcl
```

If you are using different distro, check distro guides.

## Online

There are web sites with online Tcl interpreters [^2f], [^3f].

## Windows

Didn't try yet [^4f].

## Version Checking

Getting version of installed Tcl isn't easy as passing `-v` flag [^1f].

Open `tclsh` then

```tcl
% puts $tcl_version
8.6
```

I think you will get either 8.6 or 8.5.

[^1f]: [https://stackoverflow.com/a/9200215](https://stackoverflow.com/a/9200215)
[^2f]: [https://www.tutorialspoint.com/execute_tcl_online.php](https://www.tutorialspoint.com/execute_tcl_online.php)
[^3f]: [https://rextester.com/l/tcl_online_compiler](https://rextester.com/l/tcl_online_compiler)
[^4f]: [https://www.tcl.tk/software/tcltk/bindist.html](https://www.tcl.tk/software/tcltk/bindist.html)
