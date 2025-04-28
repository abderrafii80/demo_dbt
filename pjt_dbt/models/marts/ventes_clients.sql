

SELECT
    c.id AS client_id,
    c.name,
    c.email,
    c.statut,
    c.age,
    v.montant_vente,
    v.date_vente
FROM {{ ref('clients') }} c LEFT JOIN {{ ref('ventes') }} v 
ON c.id = v.id_client
ORDER BY c.name