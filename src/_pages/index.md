---
title: Hi, I am Alper!
permalink: /
layout: single
classes: wide
---

I am a [full-time]({% link _pages/cv.md%}#professional-experience)
**E**lectrical and **E**lectronics **E**ngineer, PhD candidate at
[METU](https://www.metu.edu.tr/) [EEE](https://eee.metu.edu.tr/) and project
co-manager of [ACCLOUD]({% link
_projects/accloud.md %}) (Accelerated Cloud)
project and I live in
[Ankara](https://en.wikipedia.org/wiki/Ankara)/[TURKEY](https://en.wikipedia.org/wiki/Turkey).

I got my BSc and MSc degrees from the same department,
[METU](https://www.metu.edu.tr/) [EEE](https://eee.metu.edu.tr/), in 2012 and
2015, respectively. My [master's thesis]({% link
_publications/yazar2015application.md %}) was about statistical signal
processing. Now, I am working on FPGA accelerated cloud computing as a PhD
candidate. At work, most of the time I work on FPGA/embedded related stuffs. I
am also experienced in analog/digital circuit and PCB design.

I love spending my time on electronics and computers since I was 10. I like
doing [projects]({% link _pages/cv.md%}#projects), reading blogs/projects/codes,
watching videos and [attending courses/webinars]({% link
_pages/cv.md%}#attended-trainings), [publishing papers]({% link
_pages/cv.md%}#publications) and doing other geeky
things. I am a big fan of free and open source projects and initiatives 🐧.
Besides, I like music and musical instruments 🎵.

This is my personal site and you can view [my CV]({% link _pages/cv.md%}), read
[my posts](/log) or [contact me]({% link
_pages/contact.md %}) if you wish. The
content is organized in [Collections 📚]({% link _pages/collections.md%}) page.
The site is bilingual and flags (🇬🇧, 🇹🇷) denote language of the content.

I hope you will find some useful content on this site.

(🇹🇷) Bu sayfanın Türkçe'si de [mevcut.]({% link _pages/tr/merhaba.md %})
{: .notice--info}

# Most Recent Posts

<!-- markdownlint-capture -->
<!-- markdownlint-disable -->
<div class="entries-grid">
    {% assign entries = site.posts | sort: 'date' | reverse %}
    {% for post in entries limit:4 %}
        {% include archive-single.html type='grid' %}
    {% endfor %}
</div>
<div class="cf"></div>
<!-- markdownlint-restore -->
