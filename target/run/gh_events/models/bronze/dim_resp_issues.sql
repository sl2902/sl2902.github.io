
  
    

    create table "iceberg"."bronze"."dim_resp_issues__dbt_tmp"
      
      
    as (
      

with
    staging as (
        select
            id
            ,response
        from
            "iceberg"."bronze"."issues"
)
select
    *
from
    staging
    );

  