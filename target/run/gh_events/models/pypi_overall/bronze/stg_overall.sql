
  
    

    create table "iceberg"."bronze"."stg_overall"
      
      WITH (format = 'PARQUET')
    as (
      

with
    staging as (
        select
            id
            ,package
            ,endpoint
            ,category
            ,date
            ,downloads
            ,load_date
            ,row_number() over(partition by id order by load_date desc) as rank_dups
        from
            "iceberg"."bronze"."overall"
        
        
)
select
       id
        ,package
        ,endpoint
        ,category
        ,date
        ,downloads
        ,load_date
from
    staging
where
    rank_dups = 1
    );

  