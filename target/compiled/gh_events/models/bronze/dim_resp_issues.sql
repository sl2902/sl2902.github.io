

with
    staging as (
        select
            id
            ,response
        from
            "iceberg"."bronze"."issues"
)
select
    *
from
    staging