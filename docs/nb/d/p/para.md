---
date: 2020-02-22
---
# PARA

**P**robabilistic **A**djacent **R**ow **A**ctivation is a cheaper solution to [RowHammer](../r/rowhammer.md) problem. Key idea: After closing a row, with some probability (probably low value like 0.005) you refresh its neighbors.[^1f]

[^1f]: As mentioned [there](../../n/l/dodd-s18/lec02.md)
