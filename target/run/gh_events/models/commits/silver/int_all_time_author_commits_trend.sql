
  
    

    create table "iceberg"."bronze"."int_all_time_author_commits_trend__dbt_tmp"
      
      
    as (
      with
    summary as (
        select
            repo,
            cast(commit_author_date as date) as commit_author_date,
            count(*) as num_commits
        from
            "iceberg"."bronze"."stg_commits"
        group by
            repo,
            cast(commit_author_date as date)
)
select
    *
from
    summary
    );

  