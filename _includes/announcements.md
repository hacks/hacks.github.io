{% assign pages_list = (site.announcements | sort: 'date') | reverse%}

{% for p in pages_list %} 
<h3>{{ p.title }}</h3>
{{ p.content }} 
{% endfor %}
