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
  - This is a simple program using mata for poisson regressions. It basically represents a kind of test for posting material using Github. To install from Stata,
  - `net install mypoissonch, replace from ("https://github.com/luischanci/mystatacodes/raw/master/mypoissonch")`
  - In case of any issue, it's also possible to download the main ado file and other related material (e.g. the `help` file) directly in a zip file. Then, it is necessary to locate those files into you personal stata ado path (for instance, `C:\ado\personal\m\`): <a href="https://github.com/luischanci/mystatacodes/raw/master/mypoissonch/zipball/master">Download Files</a>


### Documents

In progress.

### Lectures

In progress.
