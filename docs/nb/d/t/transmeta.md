---
date: 2020-02-22
---
# Transmeta

A company tried to compete with Intel. They wanted to design x86 processor. They wrote a software translation layer which takes x86 code and translates to a code for the internal microarchitecture ([VLIW](../v/vliw.md) type) that is simpler than x86. Why? Because implementing an efficient x86 ISA microarchitecture isn't a trivial thing especially for a small, startup company. They chose to design very fast internal microarchitecture but they needed an efficient translation layer. Notice that translation layer is a software. But the bottleneck was that layer. In the end, they failed racing. Read [@klaiber2000technology] and [@dehnert2003transmeta].[^1f]

[^1f]: As mentioned [there](../../n/l/dodd-s18/lec02.md)

\bibliography
