with
    final as (
        select
            id,
            package,
            category,
            date,
            downloads,
            percent_change,
            load_date
        from
            "iceberg"."bronze"."int_percent_change_downloads_overall"
)
select
    *
from
    final