{% macro margin_percent(turnover, purchase_cost, precision=2) %}
   ROUND( SAFE_DIVIDE( ({{ turnover }} - {{ purchase_cost }}) , {{ turnover }} ) , {{ precision }})
{% endmacro %}
-- macros/margin_functions.sql

-- Calculate the margin based on turnover and purchase_cost
{% macro margin(turnover, purchase_cost, precision=2) %}
   ROUND( SAFE_DIVIDE( ({{ turnover }} - {{ purchase_cost }}) , {{ turnover }} ) , {{ precision }})
{% endmacro %}