
  
    

    create table "iceberg"."bronze"."fct_all_time_issues_trend__dbt_tmp"
      
      
    as (
      with
    summary as (
        select
            repo,
            cast(created_at as date) as created_at,
            count(*) as num_issues
        from
            "iceberg"."bronze"."fct_issues"
        group by
            repo,
            cast(created_at as date)
)
select
    *
from
    summary
    );

  