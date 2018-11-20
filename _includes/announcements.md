{% assign pages_list = (site.announcements | sort: 'date') | reverse%}

{% for p in pages_list %} 
{{ p.content }} 
{% endfor %}
