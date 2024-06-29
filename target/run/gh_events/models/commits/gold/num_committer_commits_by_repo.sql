
  
    

    create table "iceberg"."bronze"."num_committer_commits_by_repo__dbt_tmp"
      
      
    as (
      with    
    final as (
        select
            repo,
            committer_name,
            num_commits
        from
            "iceberg"."bronze"."fct_num_committer_commits"
)
select
    *
from
    final
order by
    repo,
    num_commits desc
    );

  