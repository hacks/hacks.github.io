{% assign pages_list = site.pages %}
{% for p in pages_list %}
  {% if p.layout == "useful-links" %}
    {{ p.content | markdownify }}
  {% endif %}
{% endfor %}
