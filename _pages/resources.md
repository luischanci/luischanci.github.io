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
Programs can be installed using\\
 `net install mypoisson_ch, from(https://github.com/luischanci/luischanci.github.io/blob/master/_resources/_stata/mypoissonch) replace`.


### Documents

In progress.

### Lectures

In progress.
