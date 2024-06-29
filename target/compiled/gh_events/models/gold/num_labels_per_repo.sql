with
    final as (
        select
            repo,
            label,
            num_labels
        from
            "iceberg"."bronze"."fct_num_labels_in_issues"
)
select
    *
from
    final