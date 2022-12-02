CREATE OR REPLACE MODEL `mkr-real-data-369810.mkr_real_data.quantity_good_forecasting_arima_model`
OPTIONS(
  MODEL_TYPE='ARIMA_PLUS',
  TIME_SERIES_TIMESTAMP_COL='date_time',
  TIME_SERIES_DATA_COL='total_quantity',
  TIME_SERIES_ID_COL='good_name',
  HOLIDAY_REGION='UA',
  AUTO_ARIMA = TRUE,
  DATA_FREQUENCY = 'AUTO_FREQUENCY',
  DECOMPOSE_TIME_SERIES = TRUE
) AS SELECT
    date_time,
    good_name,
    total_quantity
FROM `mkr-real-data-369810.mkr_real_data.v_cosmetics-sales-per-good`