
  
    

    create table "iceberg"."bronze"."fct_num_labels_per_repo__dbt_tmp"
      
      
    as (
      with
    final as (
        select
            repo,
            label,
            num_labels
        from
            "iceberg"."bronze"."int_num_labels_in_issues"
)
select
    *
from
    final
order by
    label,
    num_labels desc
    );

  