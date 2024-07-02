
  
    

    create table "iceberg"."bronze"."fct_all_time_issues_trend__dbt_tmp"
      
      
    as (
      with
    final as (
        select
            repo,
            created_at,
            num_issues
        from
            "iceberg"."bronze"."int_all_time_issues_trend"
)
select
    *
from
    final
    );

  