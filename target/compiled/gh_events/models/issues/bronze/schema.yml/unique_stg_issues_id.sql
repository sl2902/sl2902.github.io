
    
    

select
    id as unique_field,
    count(*) as n_records

from "iceberg"."bronze"."stg_issues"
where id is not null
group by id
having count(*) > 1


