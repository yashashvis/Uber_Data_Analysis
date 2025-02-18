SELECT b.payment_type_name, SUM(a.tip_amount) FROM `adept-snow-430315-n2.Uber_data_analytics.Uber_data` a
JOIN `adept-snow-430315-n2.Uber_data_analytics.payment_type_dim` b
ON a.payment_type_id = b.payment_type_id
GROUP BY b.payment_type_name;