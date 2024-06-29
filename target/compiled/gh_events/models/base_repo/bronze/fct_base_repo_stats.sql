


with 
    base as (
        select
            owner,
            repo,
            stat_id,
            fork_count,
            size_count,
            watchers_count,
            open_issues_count,
            network_count,
            stargazers_count,
            subscribers_count,
            created_at,
            pushed_at,
            updated_at,
            response,
            load_date,
            row_number() over(partition by stat_id order by updated_at desc) rank_dups
        from
            "iceberg"."bronze"."base_repo"

        
)
select
    owner,
    repo,
    stat_id,
    fork_count,
    size_count,
    watchers_count,
    open_issues_count,
    network_count,
    stargazers_count,
    subscribers_count,
    created_at,
    pushed_at,
    updated_at,
    response,
    load_date
from
    base
where
    rank_dups = 1