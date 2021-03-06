---
title: CV
permalink: /cv/
layout: single
toc: true
---

# Professional Experience

- **Project Co-manager.** [ACCLOUD]({% link _projects/accloud.md %}), **April
  2018 to present.**
- **Electronics Engineer.** [ASELSAN](https://www.aselsan.com.tr/), Ankara,
  TURKEY, **August 2012 to present.**
- **Intern.** [ASELSAN](https://www.aselsan.com.tr/), Ankara, TURKEY, **June
  2011 to July 2011.**
- **Intern.** [Bosch Rexroth](https://www.boschrexroth.com), Bursa, TURKEY,
  **June 2010 to July 2010.**

# Education

- **Ph.D.**, Electrical and Electronics Engineering, Middle East Technical
  University (METU), Ankara, TURKEY, **2023 (Expected)**. CGPA: 3.75/4.00
    - Area of Study: Heterogeneous Architectures, Accelerated Clouds
    - Advisor: [Prof. Ece Güran Schmidt](http://users.metu.edu.tr/eguran)
    - Minor Field: Telecommunications
- **M.Sc**., Electrical and Electronics Engineering, Middle East Technical
  University (METU), Ankara, TURKEY, **2015**. CGPA: 3.64/4.00
    - Thesis Topic: Application of F-test Method on Model Order Selection and
      Related Problems.
      [Link](http://library.metu.edu.tr/search~S4?/cV.EE+.15-53/cv.ee+.15+53/-3%2C-1%2C0%2CE/frameset&FF=cv.ee+.15+53&1%2C1%2C)
    - Advisor: [Prof. Çağatay Candan](http://users.metu.edu.tr/ccandan)
    - Area of Study: Statistical Signal Processing
- **B.Sc.**, Electrical and Electronics Engineering, Middle East Technical
  University (METU), Ankara, TURKEY, **2012**. CGPA: 3.93/4.00
    - Specialization: Computers and Telecommunications

# Patents

<!-- markdownlint-capture -->
<!-- markdownlint-disable -->
<div class="entries-grid">
    {% assign entries = site.patents | sort: date %}
    {% for post in entries reversed %}
        {% include archive-single.html type='grid' %}
    {% endfor %}
</div>
<div class="cf"></div>
<!-- markdownlint-restore -->

# Publications

## Thesis

<!-- markdownlint-capture -->
<!-- markdownlint-disable -->
<div class="entries-grid">
    {% assign entries = site.publications | sort: date %}
    {% for post in entries reversed %}
        {% if post.aytype == 'thesis' %}
            {% include archive-single.html type='grid' %}
        {% endif %}
    {% endfor %}
</div>
<div class="cf"></div>
<!-- markdownlint-restore -->

## Conference

<!-- markdownlint-capture -->
<!-- markdownlint-disable -->
<div class="entries-grid">
    {% assign entries = site.publications | sort: date %}
    {% for post in entries reversed %}
        {% if post.aytype == 'conference' %}
            {% include archive-single.html type='grid' %}
        {% endif %}
    {% endfor %}
</div>
<div class="cf"></div>
<!-- markdownlint-restore -->

## Poster

<!-- markdownlint-capture -->
<!-- markdownlint-disable -->
<div class="entries-grid">
    {% assign entries = site.publications | sort: date %}
    {% for post in entries reversed %}
        {% if post.aytype == 'poster' %}
            {% include archive-single.html type='grid' %}
        {% endif %}
    {% endfor %}
</div>
<div class="cf"></div>
<!-- markdownlint-restore -->

## Other

<!-- markdownlint-capture -->
<!-- markdownlint-disable -->
<div class="entries-grid">
    {% assign entries = site.publications | sort: date %}
    {% for post in entries reversed %}
        {% if post.aytype == 'other' %}
            {% include archive-single.html type='grid' %}
        {% endif %}
    {% endfor %}
</div>
<div class="cf"></div>
<!-- markdownlint-restore -->

# Projects

## Funded

<!-- markdownlint-capture -->
<!-- markdownlint-disable -->
<div class="entries-grid">
    {% assign entries = site.projects | sort: date %}
    {% for post in entries reversed %}
        {% if post.aytype == 'funded' %}
            {% include archive-single.html type='grid' %}
        {% endif %}
    {% endfor %}
</div>
<div class="cf"></div>
<!-- markdownlint-restore -->

## Hobby

<!-- markdownlint-capture -->
<!-- markdownlint-disable -->
<div class="entries-grid">
    {% assign entries = site.projects | sort: date %}
    {% for post in entries reversed %}
        {% if post.aytype == 'hobby' %}
            {% include archive-single.html type='grid' %}
        {% endif %}
    {% endfor %}
</div>
<div class="cf"></div>
<!-- markdownlint-restore -->

## Class

- **Ph.D.**, METU
    - **EE542 Computer Networks.** Evaluation and minor improvements on
      ClassBench
    - **CENG513 Wireless Communication and Networks.**  A load balancing
      algorithm for multi-user multiple access point wireless networks
- **M.Sc.**, METU
    - **EE604 Sensor Array Signal Processing.** Implementation and evaluation
      of two source localization methods on MATLAB: Triangulation and RSS
- **B.Sc.**, METU
    - **EE493, EE494 Engineering Design.**  Being a member of a team with four
      members, designed a voice controlled car capable of auto collision
      avoidance. Speech processing was done using MATLAB on a PC. Commands were
      transferred to car over RF channel. An RF communication protocol was
      developed top on FSK modulation.
    - **EE430 Digital Signal Processing.** Designed and implemented FSK based
      communication system over acoustic air channel using MATLAB and standard
      microphone/speaker of a PC.
    - **EE314 Digital Electronics Laboratory.** Designed clone of "Space
      Invaders" game on FPGA board with VGA output using Verilog as HDL an
      XilinX ISE tools.
    - **EE313 Analog Electronics Laboratory.** Designed an op-amp using discrete
      transistors and passives.
    - **EE214 Electronic Circuits Laboratory.** Designed a DC-DC boost
      converter using discrete components.
    - **EE213 Electrical Circuits Laboratory.** Designed RGB color sensor using
      OPAMPs and discrete components.

# Attended Trainings

- **2018.** FreeRTOS Real-Time Programming. Doulos, 3 days.†
- **2017.** Developing with Embedded Linux. Doulos, 4 days.†
- **2016.** Vivado HLS, PLC2, 1 day.
- **2016.** Basics of VxWorks, ASELSAN, 5 days.
- **2016.** Power and Analog Applications, EMPA on behalf of Texas Instruments,
  1 day.
- **2016.** The Programmable Logic Training Course Professional ZYNQ. PLC2, 5
  days.†
- **2016.** The Programmable Logic Training Course Professional VHDL. PLC2, 5
  days.†
- **2015.** Mentor Graphics Workshop Day, CDT, 1 day.
- **2015.** Easy Start FPGA, PLC2, 1 day.
- **2014.** Mentor Graphics Workshop Day, CDT, 1 day.
- **2014.** Mentor Graphics DxDesigner Training Course. CDT on behalf of Mentor
  Graphics, 2.5 days.†
- **2014.** EMC Seminar. Würth Elektronik GmbH, 1 day.†
- **2014.** Power Seminar. Linear Technology, 1 day.†
- **2013.** C6000 Embedded Design Workshop using BIOS, Texas Instruments, 5
  days.†

# Awards and Honors

- **2012-2015.** TUBITAK 2228-National MSc and PhD Scholarship Programme for
  Senior Undergraduate Students
- **2011.** Capstone Design Project Honorable Mention Award
- **2011.**  Bulent Kerim Altay Award. [About](http://bka.eee.metu.edu.tr/)
- **2011.**  Bulent Kerim Altay Award. [About](http://bka.eee.metu.edu.tr/)
- **2010.**  Bulent Kerim Altay Award. [About](http://bka.eee.metu.edu.tr/)
- **2010.**  Bulent Kerim Altay Award. [About](http://bka.eee.metu.edu.tr/)
- **2008.**  Bulent Kerim Altay Award. [About](http://bka.eee.metu.edu.tr/)
- **2008-2011.** Dean’s List.

# Attended Events

- **2018.** Embedded World. Nürnberg, Germany.

# Memberships

- **Past.** IEEE
- **Past.** IEEE Robotics and Automation Society
- **Past.** IEEE Signal Processing Society
- **Past.** [IEEE ODTÜ](http://www.ieee.metu.edu.tr)
- **Past.** [ODTÜ KTMT](https://www.odtuktmt.com/)

# Personal Activities

- Trying playing various musical instruments

† Certificate Available
