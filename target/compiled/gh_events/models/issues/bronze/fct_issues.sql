

with
    staging as (
        select
            id
            ,owner
            ,repo
            ,number
            ,title
            ,state
            ,created_at
            ,updated_at
            ,closed_at
            ,comments
            ,draft
            ,author_association
            ,user_id
            ,label_id
            ,repository_url
            ,total_count
            ,plus1
            ,minus1
            ,laugh
            ,hooray
            ,confused
            ,heart
            ,rocket
            ,eyes
            ,response
            ,load_date
            ,row_number() over(partition by id order by created_at desc) as rank_dups
        from
            "iceberg"."bronze"."issues"
        
            
)
select
        id
        ,owner
        ,repo
        ,number
        ,title
        ,state
        ,created_at
        ,updated_at
        ,closed_at
        ,comments
        ,draft
        ,author_association
        ,user_id
        ,label_id
        ,repository_url
        ,total_count
        ,plus1
        ,minus1
        ,laugh
        ,hooray
        ,confused
        ,heart
        ,rocket
        ,eyes
        ,response
        ,load_date
from
    staging
where
    rank_dups = 1