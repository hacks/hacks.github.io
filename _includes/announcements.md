{% assign pages_list = site.announcements %}

{% for p in pages_list %} 
{{ p.content }} 
{% endfor %}
