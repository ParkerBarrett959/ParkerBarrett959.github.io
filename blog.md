---
layout: default
title: Blog
---

# Blog

<ul>
  {% raw %}{% for post in site.posts %}{% endraw %}
    <li>
      <a href="{{ '{{' }} post.url {{ '}}' }}">{{ '{{' }} post.title {{ '}}' }}</a> - <small>{{ '{{' }} post.date | date: "%b %d, %Y" {{ '}}' }}</small>
    </li>
  {% raw %}{% endfor %}{% endraw %}
</ul>
