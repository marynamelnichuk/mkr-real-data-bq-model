SELECT *
FROM ML.FORECAST(MODEL `mkr-real-data-369810.mkr_real_data.quantity_general_forecasting_arima_model`,
                STRUCT(30 AS horizon, 0.8 AS confidence_level))