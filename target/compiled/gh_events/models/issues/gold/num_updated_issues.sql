with
    final as (
        select
            repo,
            num_days,
            num_issues
        from
            "iceberg"."bronze"."fct_count_updated_issues"
)
select
    *
from
    final