-- Nettoyage de la table Ventes
WITH source2 AS(
    SELECT *
    FROM {{source2('dbt_schema', 'produits')}}
)

SELECT 
    id_vente,
    montant_vente,
    date_vente,
    id_client
FROM source2   