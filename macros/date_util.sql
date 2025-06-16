{% macro function1(start_at) %}

CASE WHEN TO_TIMESTAMP({{start_at}}) < CURRENT_DATE THEN 'PAST'
ELSE 'FUTURE' END

{% endmacro %}

{% macro get_season(start_at)%}

CASE WHEN MONTH(TO_TIMESTAMP({{start_at}})) in (12,1,2)
    THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{start_at}})) in (3,4,5)
    THEN 'SPRING'
    WHEN MONTH(TO_TIMESTAMP({{start_at}})) in (6,7,8)
    THEN 'SUMMER'
    ELSE 'AUTUMN'
    END
{% endmacro  %}

{%macro DAY_TYPE (start_at) %}

CASE
WHEN DAYNAME(TO_TIMESTAMP({{start_at}})) in ('Sat','Sun')
THEN 'WEEKEND'
ELSE 'BUSINESSDAY'
END 

{%endmacro%}