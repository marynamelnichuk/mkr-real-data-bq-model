CREATE TABLE `mkr-real-data-369810.mkr_real_data.sales` (
    invoice_id STRING NOT NULL,
    date_time DATETIME NOT NULL,
    shop_name STRING NOT NULL,
    good_name STRING NOT NULL,
    quantity INTEGER NOT NULL,
    price FLOAT64 NOT NULL,
    region STRING
) CLUSTER BY
  invoice_id, good_name, shop_name;