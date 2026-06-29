
{{ config(
    materialized='table'
) }}

SELECT
    source_name,

    SUM(spend) AS total_spend,
    SUM(revenue) AS total_revenue,

    ROUND(SUM(revenue) / NULLIF(SUM(spend), 0), 2) AS avg_roas,
    ROUND(SUM(clicks) / NULLIF(SUM(impressions), 0), 4) AS avg_ctr

FROM {{ ref('pf_int_campaign_performance_base') }}

GROUP BY source_name
