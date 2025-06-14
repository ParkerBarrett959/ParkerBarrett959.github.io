---
layout: default
title: Projects
permalink: /projects/
---

# Projects

<ul>
  {% for project in site.data.projects %}
    <li style="margin-bottom: 1.5em;">
      <h3>{{ project.icon }} {{ project.name }}</h3>
      <p>{{ project.description }}</p>
      🔗 <a href="{{ project.github }}" target="_blank">View on GitHub</a>
    </li>
  {% endfor %}
</ul>

