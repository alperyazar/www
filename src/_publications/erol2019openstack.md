---
title: OpenStack Generalization for Hardware Accelerated Clouds
excerpt: 2019 28th International Conference on Computer Communication and Networks (ICCCN). IEEE, 2019
date: 2019-07-29
tags:
    - en
    - openstack
    - cloud
header:
    teaser: /assets/images/publication/erol2019openstack-promo.png
aytype: conference
---

[Access to the publication](https://doi.org/10.1109/ICCCN.2019.8847115)

`10.1109/ICCCN.2019.8847115`

EROL, Ahmet; **YAZAR, Alper**; SCHMIDT, Ece Guran. OpenStack Generalization for
Hardware Accelerated Clouds. In: 2019 28th International Conference on Computer
Communication and Networks (ICCCN). IEEE, 2019. p. 1-8.

```bibtex
@inproceedings{erol2019openstack,
  title={OpenStack Generalization for Hardware Accelerated Clouds},
  author={Erol, Ahmet and Yazar, Alper and Schmidt, Ece Guran},
  booktitle={2019 28th International Conference on Computer Communication and Networks (ICCCN)},
  pages={1--8},
  year={2019},
  organization={IEEE}
}
```

# Abstract

OpenStack is a widely used management tool for cloud computing which is designed
to work on servers and allocate standard computing resources such as CPU, memory
or disk. The current trend for integrating different hardware accelerators such
as FPGAs and GPUs in the cloud require managing these heterogeneous resources.
In this paper, we propose a generalization for OpenStack Nova project which
extends the relevant data structures to include these new resources. More
importantly, we present a new lightweight Nova Compute module that we call
Nova-G Compute that is suitable to work with different hardware platforms and
can communicate with the rest of the OpenStack Projects. We implement a
hypervisor-like software to enable Nova-G compute accessing the FPGA resources.
We perform experimental evaluation of Nova-G using the known and used OpenStack
benchmarking tool Rally. Our results show that Nova-G Compute works as desired
without any reduced performance compared to standard Nova.
