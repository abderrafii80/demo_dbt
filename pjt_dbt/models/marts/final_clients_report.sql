-- Table finale à exposer
SELECT
    c.id,
    c.name,
    c.email,
    s.nb_name
FROM {{ ref('stg_clients') }} c JOIN {{ ref('int_clients_stats') }} s
ON c.id = s.id
