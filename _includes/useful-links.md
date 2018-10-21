{% assign pages_list = site.data.links %} 

{% for p in pages_list %} 
[{{p.title}}]({{p.url}})
{% endfor %}
