
{{ config(
    materialized='table'
) }}

SELECT
    c.campaign_id,

    COUNT(DISTINCT c.user_id) AS total_customers,

    SUM(p.spend) AS total_spend,

    -- ✅ CAC
    ROUND(SUM(p.spend) / NULLIF(COUNT(DISTINCT c.user_id), 0), 2) AS cac

FROM {{ ref('pf_int_user_acquisition') }} c

JOIN {{ ref('pf_int_campaign_performance_base') }} p
    ON c.campaign_id = p.campaign_id

GROUP BY c.campaign_id

