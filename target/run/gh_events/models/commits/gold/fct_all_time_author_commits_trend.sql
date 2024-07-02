
  
    

    create table "iceberg"."bronze"."fct_all_time_author_commits_trend__dbt_tmp"
      
      
    as (
      with
    final as (
        select
            repo,
            commit_author_date,
            num_commits
        from
            "iceberg"."bronze"."int_all_time_author_commits_trend"
)
select
    *
from
    final
    );

  