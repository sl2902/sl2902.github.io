
  create or replace view
    "iceberg"."bronze"."fct_percent_change_downloads_overall"
  security definer
  as
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
  ;
