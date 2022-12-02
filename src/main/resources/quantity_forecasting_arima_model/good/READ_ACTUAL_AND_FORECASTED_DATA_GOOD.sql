SELECT
    history_timestamp AS timestamp,
 history_value,
 NULL AS forecast_value,
 NULL AS prediction_interval_lower_bound,
 NULL AS prediction_interval_upper_bound
FROM
    (
    SELECT
    date_time AS history_timestamp,
    total_quantity AS history_value
    FROM
    `mkr-real-data-369810.mkr_real_data.v_cosmetics-sales-per-good`
    WHERE good_name = 'Unseen Sunscreen Broad Spectrum SPF 40'
    ORDER BY date_time ASC
    )
UNION ALL
SELECT
    forecast_timestamp AS timestamp,
 NULL AS history_value,
 forecast_value,
 prediction_interval_lower_bound,
 prediction_interval_upper_bound
FROM
    ML.FORECAST(MODEL `mkr-real-data-369810.mkr_real_data.quantity_good_forecasting_arima_model`,
    STRUCT(30 AS horizon, 0.8 AS confidence_level))
WHERE good_name = 'Unseen Sunscreen Broad Spectrum SPF 40'