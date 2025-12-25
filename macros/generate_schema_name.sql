{% macro generate_schema_name(custom_schema_name, node) %}
    {% if node.resource_type == 'model' %}
        {{ log("model=" ~ node.name ~ ", schema=" ~ custom_schema_name, info=True) }}
    {% endif %}
    {%- if custom_schema_name is none -%}
        {{ target.schema }}
    {%- else -%}
        {{ custom_schema_name | trim }}
    {%- endif -%}
{% endmacro %}