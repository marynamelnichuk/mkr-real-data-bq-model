CREATE OR REPLACE MODEL `mkr-real-data-369810.mkr_real_data.quantity_general_forecasting_arima_model`
OPTIONS(
  MODEL_TYPE='ARIMA_PLUS',
  TIME_SERIES_TIMESTAMP_COL='date_time',
  TIME_SERIES_DATA_COL='total_quantity',
  HOLIDAY_REGION='UA',
  AUTO_ARIMA = TRUE,
  DATA_FREQUENCY = 'AUTO_FREQUENCY',
  DECOMPOSE_TIME_SERIES = TRUE
) AS SELECT
    date_time,
    total_quantity
FROM `mkr-real-data-369810.mkr_real_data.v_cosmetics-sales-general`