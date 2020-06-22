---
date: 2020-02-23T15:17:35+03:00
---
# bloom filter

*Approximate Set Membership*. You can tolerate false positive (although a member is not in the send, you find that it belongs to the set). You can not tolerate false negative (element in the set but you think that it isn’t). You want to control false positive rate but don’t want any false negative.[^1f]

Original idea: [@bloom1970space] It is a probabilistic data structure that compactly represents set membership.

There is an example from Prof. Mutlu [there](../../n/l/dodd-s18/lec04.md) (1:16:00).

[^1f]: As mentioned [there](../../n/l/dodd-s18/lec04.md)

\bibliography
