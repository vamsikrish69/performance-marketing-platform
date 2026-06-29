
SELECT
    cust.user_id,
    cust.signup_date,
    cust.acquisition_channel,
    conv.campaign_id
FROM {{ ref('pf_stg_customers') }} cust

LEFT JOIN {{ ref('pf_stg_conversions') }} conv
    ON cust.user_id = CAST(conv.user_id AS STRING)
