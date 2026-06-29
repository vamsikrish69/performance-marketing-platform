
{{ config(
    materialized='table'
) }}

SELECT
    campaign_id,
    campaign_name,
    source_name,

    SUM(spend) AS total_spend,
    SUM(impressions) AS total_impressions,
    SUM(clicks) AS total_clicks,
    SUM(revenue) AS total_revenue,

    -- ✅ CTR
    ROUND(SUM(clicks) / NULLIF(SUM(impressions), 0), 4) AS ctr,

    -- ✅ ROAS
    ROUND(SUM(revenue) / NULLIF(SUM(spend), 0), 2) AS roas,

    -- ✅ ROI
    ROUND((SUM(revenue) - SUM(spend)) / NULLIF(SUM(spend), 0), 2) AS roi

FROM {{ ref('pf_int_campaign_performance_base') }}

GROUP BY
    campaign_id,
    campaign_name,
    source_name
