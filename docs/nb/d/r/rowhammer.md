---
date: 2020-02-22
---
# RowHammer

DRAM Disturbance Error. It is a story of how a simple hardware failure mechanism can create a widespread system security vulnerability. Reading a row in DRAM disturb adjacent rows. It is also possible in SSDs or HDDs, etc. When you want to read a row in memory, you apply high voltage to it. After reading, you apply low voltage. If you repeat this in most DRAM chips you get errors in adjacent rows. Notice that corruption is triggered by only reading adjacent rows. You hammer row by reading.[^1f]

See: [@kim2014flipping], [@mutlu2017rowhammer]

[@seaborn2015exploiting] gained root access on a Linux system by exploiting RowHammer.

[@van2016drammer] Hammer and root millions of Androids.

Also [@gruss2016rowhammer].

[^1f]: As mentioned [there](../../n/l/dodd-s18/lec02.md)

\bibliography
