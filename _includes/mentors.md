{% assign pages_list = site.pages %}
{% for p in pages_list %}
  {% if p.layout == "mentor" %}
    {{ p.content | markdownify }}
  {% endif %}
{% endfor %}
