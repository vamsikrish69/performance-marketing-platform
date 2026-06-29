
SELECT
    campaign_id,
    LOWER(campaign_name) AS campaign_name,
    cost AS spend,
    impressions,
    clicks,
    DATE(date) AS date
FROM `marketingdataplatform-500711.marketing_dataset.google_ads_large`
