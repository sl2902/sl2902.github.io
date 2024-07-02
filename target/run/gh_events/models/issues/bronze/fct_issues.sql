-- back compat for old kwarg name
  
  
        
            
            
        

        

        merge into "iceberg"."bronze"."fct_issues" as DBT_INTERNAL_DEST
            using "iceberg"."bronze"."fct_issues__dbt_tmp" as DBT_INTERNAL_SOURCE
            on (
                DBT_INTERNAL_SOURCE.id = DBT_INTERNAL_DEST.id
            )

        
        when matched then update set
            "id" = DBT_INTERNAL_SOURCE."id","owner" = DBT_INTERNAL_SOURCE."owner","repo" = DBT_INTERNAL_SOURCE."repo","number" = DBT_INTERNAL_SOURCE."number","title" = DBT_INTERNAL_SOURCE."title","state" = DBT_INTERNAL_SOURCE."state","created_at" = DBT_INTERNAL_SOURCE."created_at","updated_at" = DBT_INTERNAL_SOURCE."updated_at","closed_at" = DBT_INTERNAL_SOURCE."closed_at","comments" = DBT_INTERNAL_SOURCE."comments","draft" = DBT_INTERNAL_SOURCE."draft","author_association" = DBT_INTERNAL_SOURCE."author_association","user_id" = DBT_INTERNAL_SOURCE."user_id","label_id" = DBT_INTERNAL_SOURCE."label_id","repository_url" = DBT_INTERNAL_SOURCE."repository_url","total_count" = DBT_INTERNAL_SOURCE."total_count","plus1" = DBT_INTERNAL_SOURCE."plus1","minus1" = DBT_INTERNAL_SOURCE."minus1","laugh" = DBT_INTERNAL_SOURCE."laugh","hooray" = DBT_INTERNAL_SOURCE."hooray","confused" = DBT_INTERNAL_SOURCE."confused","heart" = DBT_INTERNAL_SOURCE."heart","rocket" = DBT_INTERNAL_SOURCE."rocket","eyes" = DBT_INTERNAL_SOURCE."eyes","response" = DBT_INTERNAL_SOURCE."response","load_date" = DBT_INTERNAL_SOURCE."load_date"
        

        when not matched then insert
            ("id", "owner", "repo", "number", "title", "state", "created_at", "updated_at", "closed_at", "comments", "draft", "author_association", "user_id", "label_id", "repository_url", "total_count", "plus1", "minus1", "laugh", "hooray", "confused", "heart", "rocket", "eyes", "response", "load_date")
        values
            (DBT_INTERNAL_SOURCE."id", DBT_INTERNAL_SOURCE."owner", DBT_INTERNAL_SOURCE."repo", DBT_INTERNAL_SOURCE."number", DBT_INTERNAL_SOURCE."title", DBT_INTERNAL_SOURCE."state", DBT_INTERNAL_SOURCE."created_at", DBT_INTERNAL_SOURCE."updated_at", DBT_INTERNAL_SOURCE."closed_at", DBT_INTERNAL_SOURCE."comments", DBT_INTERNAL_SOURCE."draft", DBT_INTERNAL_SOURCE."author_association", DBT_INTERNAL_SOURCE."user_id", DBT_INTERNAL_SOURCE."label_id", DBT_INTERNAL_SOURCE."repository_url", DBT_INTERNAL_SOURCE."total_count", DBT_INTERNAL_SOURCE."plus1", DBT_INTERNAL_SOURCE."minus1", DBT_INTERNAL_SOURCE."laugh", DBT_INTERNAL_SOURCE."hooray", DBT_INTERNAL_SOURCE."confused", DBT_INTERNAL_SOURCE."heart", DBT_INTERNAL_SOURCE."rocket", DBT_INTERNAL_SOURCE."eyes", DBT_INTERNAL_SOURCE."response", DBT_INTERNAL_SOURCE."load_date")

    
