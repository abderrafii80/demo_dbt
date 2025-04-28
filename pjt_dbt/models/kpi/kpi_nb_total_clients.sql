-- Models models/kpi/kpi_nb_total_clients.sql

{{ config(materialized='view') }}

SELECT 
    COUNT(id) AS nb_total_clients
FROM 
    {{ ref('clients') }}