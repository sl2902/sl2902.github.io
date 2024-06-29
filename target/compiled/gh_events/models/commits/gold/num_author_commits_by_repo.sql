with    
    final as (
        select
            repo,
            author_name,
            num_commits
        from
            "iceberg"."bronze"."fct_num_author_commits"
)
select
    *
from
    final
order by
    repo,
    num_commits desc