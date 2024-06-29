-- back compat for old kwarg name
  
  
        
            
            
        

        

        merge into "iceberg"."bronze"."fct_base_repo_stats" as DBT_INTERNAL_DEST
            using "iceberg"."bronze"."fct_base_repo_stats__dbt_tmp" as DBT_INTERNAL_SOURCE
            on (
                DBT_INTERNAL_SOURCE.stat_id = DBT_INTERNAL_DEST.stat_id
            )

        
        when matched then update set
            "owner" = DBT_INTERNAL_SOURCE."owner","repo" = DBT_INTERNAL_SOURCE."repo","stat_id" = DBT_INTERNAL_SOURCE."stat_id","fork_count" = DBT_INTERNAL_SOURCE."fork_count","size_count" = DBT_INTERNAL_SOURCE."size_count","watchers_count" = DBT_INTERNAL_SOURCE."watchers_count","open_issues_count" = DBT_INTERNAL_SOURCE."open_issues_count","network_count" = DBT_INTERNAL_SOURCE."network_count","stargazers_count" = DBT_INTERNAL_SOURCE."stargazers_count","subscribers_count" = DBT_INTERNAL_SOURCE."subscribers_count","created_at" = DBT_INTERNAL_SOURCE."created_at","pushed_at" = DBT_INTERNAL_SOURCE."pushed_at","updated_at" = DBT_INTERNAL_SOURCE."updated_at","response" = DBT_INTERNAL_SOURCE."response","load_date" = DBT_INTERNAL_SOURCE."load_date"
        

        when not matched then insert
            ("owner", "repo", "stat_id", "fork_count", "size_count", "watchers_count", "open_issues_count", "network_count", "stargazers_count", "subscribers_count", "created_at", "pushed_at", "updated_at", "response", "load_date")
        values
            (DBT_INTERNAL_SOURCE."owner", DBT_INTERNAL_SOURCE."repo", DBT_INTERNAL_SOURCE."stat_id", DBT_INTERNAL_SOURCE."fork_count", DBT_INTERNAL_SOURCE."size_count", DBT_INTERNAL_SOURCE."watchers_count", DBT_INTERNAL_SOURCE."open_issues_count", DBT_INTERNAL_SOURCE."network_count", DBT_INTERNAL_SOURCE."stargazers_count", DBT_INTERNAL_SOURCE."subscribers_count", DBT_INTERNAL_SOURCE."created_at", DBT_INTERNAL_SOURCE."pushed_at", DBT_INTERNAL_SOURCE."updated_at", DBT_INTERNAL_SOURCE."response", DBT_INTERNAL_SOURCE."load_date")

    
