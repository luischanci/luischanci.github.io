---
layout: page
title: "Resources"
permalink: "/resources/"
order: 5
---

This page is a repository of resources: Programs and other documents.

-----
### Programs

#### R
<!--- (Estoy trabajando en esta parte: crear lin similar a publicaciones... postear contenido de clases) -->

<div id="resources">
<ul class="ul-resources">
  {% for item in site.resources %}{% if item.software == 'r' %}
    <li>
    {{ item.topic }}
    </li>
  {% endif %}{% endfor %}
</ul>
</div>


#### Stata
> `mypoissonch`:
  - This is my a simple program using mata for poisson regression. It is a test for posting material online using Github. To install from Stata,
  - `net install mypoissonch, replace (from "https://github.com/luischanci/mystatacodes/raw/master")`

Visit my Github repository for more info: <a href="https://github.com/luischanci/mystatacodes/tree/master/mypoissonch">Download File</a>


### Documents

In progress.

### Lectures

In progress.
