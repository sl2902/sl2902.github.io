with
    final as (
        select
            repo,
            created_at,
            num_issues
        from
            "iceberg"."bronze"."fct_all_time_issues_trend"
)
select
    *
from
    final