-- Nettoyage de la table Clients
WITH source AS(
    SELECT *
    FROM {{source('dbt_schema', 'clients')}}
)

SELECT 
    id,
    trim(name) AS name,
    lower(email) AS email
FROM source    