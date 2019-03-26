---
layout: page
title: "Resources"
permalink: "/resources/"
order: 5
---

This page is a repository of resources: Programs and Documents.

-----
### Programs

#### Stata: user-written programs
1. _**chks**_
  - Estimation of a non-linear index with sample selection. This is a work in progress for the paper: Index of Crime in Colombia, by Chancí, Kumbhakar, and Sandoval (2019). It's not finished yet. [(more information)](https://luischanci.github.io/chks/){:target="_blank"}
    - To install directly from Stata,

    `net install chks, replace from ("https://luischanci.github.io/chks/")`

    - In case of any issue, it's also possible to manually install the program. Download the material directly to you PC <a href="https://github.com/luischanci/chks/zipball/master">(download here)</a>, unzip, and locate all the files into the Stata ado path (for instance, `C:\ado\personal\m\`).


2. _**mypoissonch**_
  - A simple program using mata for Poisson Regression. It's an introductory example for advanced programming in Stata. [(more info)](https://luischanci.github.io/mypoissonch/){:target="_blank"}
    - To install directly from Stata,

    `net install mypoissonch, replace from ("https://luischanci.github.io/mypoissonch/")`

    - In case of any issue, it's also possible to manually install the programm. Download the material directly to you PC <a href="https://github.com/luischanci/mypoissonch/zipball/master">(download here)</a>, unzip, and locate all the files into the Stata ado path (for instance, `C:\ado\personal\m\`).

#### R
  <!--- (Estoy trabajando en esta parte: crear lin similar a publicaciones... postear contenido de clases) -->
  In progress.

### Documents

In progress.

### Lectures

In progress.


<!--- ver luego:

<div id="resources">
<ul class="ul-resources">
  {% for item in site.resources %}{% if item.software == 'r' %}
    <li>
    {{ item.topic }}
    </li>
  {% endif %}{% endfor %}
</ul>
</div>

-->
