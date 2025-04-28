{% snapshot clients_snapshots %}
{{ 
  config(
    target_schema='snapshots', 
    unique_key='id', 
    strategy='check', 
    check_cols=['email', 'statut', 'age']
  ) 
}}

SELECT * 
FROM {{ source('dbt_schema', 'clients') }}

{% endsnapshot %}
