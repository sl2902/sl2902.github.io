
  
    

    create table "iceberg"."bronze"."fct_num_author_commits_by_repo__dbt_tmp"
      
      
    as (
      with    
    final as (
        select
            repo,
            author_name,
            num_commits
        from
            "iceberg"."bronze"."int_num_author_commits"
)
select
    *
from
    final
order by
    repo,
    num_commits desc
    );

  