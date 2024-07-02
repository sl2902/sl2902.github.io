


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
            row_number() over(partition by stat_id order by load_date desc) rank_dups
        from
            "iceberg"."bronze"."base_repo"

        
        where
            load_date > (SELECT coalesce(max(load_date), cast('1970-01-01 00:00:00' as timestamp)) from "iceberg"."bronze"."stg_base_repo_stats")

        
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