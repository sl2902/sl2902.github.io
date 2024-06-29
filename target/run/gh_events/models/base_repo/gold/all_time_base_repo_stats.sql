
  
    

    create table "iceberg"."bronze"."all_time_base_repo_stats__dbt_tmp"
      
      
    as (
      with
    final as(
        select
            repo,
            owner,
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
            updated_at
        from
            "iceberg"."bronze"."fct_base_repo_stats_summary"
)
select
    *
from
    final
    );

  