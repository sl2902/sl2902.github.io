-- back compat for old kwarg name
  
  
        
            
            
        

        

        merge into "iceberg"."bronze"."dim_resp_issues" as DBT_INTERNAL_DEST
            using "iceberg"."bronze"."dim_resp_issues__dbt_tmp" as DBT_INTERNAL_SOURCE
            on (
                DBT_INTERNAL_SOURCE.id = DBT_INTERNAL_DEST.id
            )

        
        when matched then update set
            "id" = DBT_INTERNAL_SOURCE."id","response" = DBT_INTERNAL_SOURCE."response","created_at" = DBT_INTERNAL_SOURCE."created_at"
        

        when not matched then insert
            ("id", "response", "created_at")
        values
            (DBT_INTERNAL_SOURCE."id", DBT_INTERNAL_SOURCE."response", DBT_INTERNAL_SOURCE."created_at")

    
