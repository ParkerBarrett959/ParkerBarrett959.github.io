---
layout: default
title: Home
---

# 👋 Welcome

I'm **Parker Barrett**, a software engineer with a strong mathematical background, specializing in **high-performance estimation** and **sensor fusion** systems for robotics and autonomous platforms.

---

## 🔧 What I Do

- ✅ Sensor fusion (e.g. Kalman Filters, nonlinear state estimation)
- ✅ Real-time systems & high-performance C++
- ✅ Robotics & autonomous vehicle platforms
- ✅ Technical writing & clean code practices

---

## 📂 Featured Projects

<ul>
  {% for project in site.data.projects %}
    <li>
      <strong>{{ project.icon }} <a href="{{ project.github }}">{{ project.name }}</a></strong><br>
      {{ project.description }}
    </li>
  {% endfor %}
</ul>

> ✨ See more on the [Projects](/projects) page.


---

## 📝 Latest Blog Posts

<ul>
  {% for post in site.posts limit:3 %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      <br>
      <small>{{ post.date | date: "%B %d, %Y" }}</small>
    </li>
  {% endfor %}
</ul>

> 📰 [See all posts →](/blog)

---

## 🔗 Connect with Me

- [About Me](/about)
- [GitHub](https://github.com/ParkerBarrett959)
- [Email Me](mailto:your-email@example.com)

