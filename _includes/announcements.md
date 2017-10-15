{% assign pages_list = site.pages %} {% for p in pages_list %} {% if p.layout == "announcement" %} {{ p.content | markdownify }} {% endif %} {% endfor %}
