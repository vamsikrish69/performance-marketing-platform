
SELECT
    c.campaign_id,
    c.campaign_name,
    c.source_name,
    c.date,
    c.spend,
    c.impressions,
    c.clicks,

    COALESCE(conv.revenue, 0) AS revenue,
    conv.user_id

FROM {{ ref('pf_int_campaigns_unified') }} c

LEFT JOIN {{ ref('pf_stg_conversions') }} conv
    ON c.campaign_id = conv.campaign_id
    AND c.date = conv.date