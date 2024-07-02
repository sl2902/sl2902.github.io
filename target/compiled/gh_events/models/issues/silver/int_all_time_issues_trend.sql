with
    summary as (
        select
            repo,
            cast(created_at as date) as created_at,
            count(*) as num_issues
        from
            "iceberg"."bronze"."stg_issues"
        group by
            repo,
            cast(created_at as date)
)
select
    *
from
    summary