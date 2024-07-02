
  
    

    create table "iceberg"."bronze"."stg_raw_issues"
      
      WITH (format = 'PARQUET')
    as (
      

with
    staging as (
        select
            id
            ,response
            ,created_at
            ,load_date
            ,row_number() over(partition by id order by load_date desc) as rank_dups
        from
            "iceberg"."bronze"."issues"
        
)
select
    id
    ,response
    ,created_at
    ,load_date
from
    staging
where
    rank_dups = 1
    );

  