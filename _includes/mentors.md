{% assign pages_list = site.data.mentors %} 

{% for p in pages_list %} 
### {{ p.name }}
{{ p.blurb }}

{% endfor %}
