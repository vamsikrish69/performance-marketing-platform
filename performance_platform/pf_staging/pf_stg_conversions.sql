
SELECT
    user_id,
    campaign_id,
    revenue,
    DATE(date) AS date
FROM `marketingdataplatform-500711.marketing_dataset.conversions_large_table`
