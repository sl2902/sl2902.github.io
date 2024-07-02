
  create or replace view
    "iceberg"."bronze"."int_percent_change_downloads_overall"
  security definer
  as
    with
    int as (
        select
            id,
            package,
            category,
            date,
            downloads,
            lag(downloads, 1) over(partition by package, category order by date) as prev_download,
            (1 - 1. * lag(downloads, 1) over(partition by package, category order by date)/cast(downloads as double)) as percent_change,
            load_date
        from
            "iceberg"."bronze"."stg_overall"
)
select
    *
from
    int
  ;
