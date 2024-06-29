
  
    

    create table "iceberg"."bronze"."dim_resp_issues"
      
      WITH (format = 'PARQUET')
    as (
      

with
    staging as (
        select
            id
            ,response
            ,created_at
            ,row_number() over(partition by id order by created_at desc) as rank_dups
        from
            "iceberg"."bronze"."issues"
            
)
select
    id
    ,response
    ,created_at
from
    staging
where
    rank_dups = 1
    );

  