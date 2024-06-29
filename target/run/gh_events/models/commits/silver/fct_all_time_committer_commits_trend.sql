
  
    

    create table "iceberg"."bronze"."fct_all_time_committer_commits_trend__dbt_tmp"
      
      
    as (
      with
    summary as (
        select
            repo,
            cast(commit_committer_date as date) as commit_committer_date,
            count(*) as num_commits
        from
            "iceberg"."bronze"."fct_commits"
        group by
            repo,
            cast(commit_committer_date as date)
)
select
    *
from
    summary
    );

  