
  
    

    create table "iceberg"."bronze"."last_7_days_fct_issues__dbt_tmp"
      
      
    as (
      with 
    final as (
        select
            repo,
            created_at,
            last_7_days as issue_count
        from
            "iceberg"."bronze"."fct_cumulative_issues"
        where
            created_at >= current_date - interval '7' day
    )
    select
        *
    from
        final
    );

  