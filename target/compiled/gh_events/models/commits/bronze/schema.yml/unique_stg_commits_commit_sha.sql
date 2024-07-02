
    
    

select
    commit_sha as unique_field,
    count(*) as n_records

from "iceberg"."bronze"."stg_commits"
where commit_sha is not null
group by commit_sha
having count(*) > 1


