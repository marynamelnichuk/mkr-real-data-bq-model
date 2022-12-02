CREATE VIEW `mkr-real-data-369810.mkr_real_data.v_cosmetics-sales-per-good` AS (
    SELECT
        TIMESTAMP_SECONDS(15*60 * DIV(UNIX_SECONDS(TIMESTAMP(date_time)), 15*60)) as date_time,
        good_name,
        SUM(quantity) AS total_quantity
    FROM `mkr-real-data-369810.mkr_real_data.cosmetics-sales`
    GROUP BY
        date_time, good_name
);