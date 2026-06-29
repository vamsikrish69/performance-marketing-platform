
SELECT
    campaign_id,
    LOWER(campaign_name) AS campaign_name,
    spend,
    impressions,
    clicks,
    DATE(date) AS date
FROM `marketingdataplatform-500711.marketing_dataset.meta_ads_large`
