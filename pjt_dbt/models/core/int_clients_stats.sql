-- Calcul de Length
SELECT 
    id,
    name AS name,
    Length(name) AS nb_name
FROM {{ ref('stg_clients') }}