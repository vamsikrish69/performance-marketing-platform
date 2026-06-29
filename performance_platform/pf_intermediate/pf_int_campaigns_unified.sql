
SELECT
    campaign_id,
    campaign_name,
    spend,
    impressions,
    clicks,
    date,
    'meta' AS source_name
FROM {{ ref('pf_stg_meta_ads') }}

UNION ALL

SELECT
    campaign_id,
    campaign_name,
    spend,
    impressions,
    clicks,
    date,
    'google' AS source_name
FROM {{ ref('pf_stg_google_ads') }}