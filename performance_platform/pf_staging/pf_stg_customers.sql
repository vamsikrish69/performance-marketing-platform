
SELECT
    user_id,
    DATE(signup_date) AS signup_date,
    LOWER(acquisition_channel) AS acquisition_channel
FROM `marketingdataplatform-500711.marketing_dataset.customers`
