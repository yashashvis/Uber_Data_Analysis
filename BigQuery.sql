CREATE OR REPLACE TABLE `adept-snow-430315-n2.Uber_data_analytics.tbl_analytics` AS (
SELECT
u.VendorID,
d.tpep_pickup_datetime,
d.tpep_dropoff_datetime,
p.passenger_count,
t.trip_distance,
r.rate_code_name,
pick.pickup_latitude,
pick.pickup_longitude,
drop.dropoff_latitude,
drop.dropoff_longitude,
pay.payment_type_name,
u.fare_amount,
u.extra,
u.mta_tax,
u.tip_amount,
u.tolls_amount,
u.improvement_surcharge,
u.total_amount
FROM 

`adept-snow-430315-n2.Uber_data_analytics.Uber_data` u
JOIN `adept-snow-430315-n2.Uber_data_analytics.datetime_dim` d  ON u.datetime_id=d.datetime_id
JOIN `adept-snow-430315-n2.Uber_data_analytics.passenger_count_dim` p  ON p.passenger_count_id=u.passenger_count_id  
JOIN `adept-snow-430315-n2.Uber_data_analytics.trip_distance_dim` t  ON t.trip_distance_id=u.trip_distance_id  
JOIN `adept-snow-430315-n2.Uber_data_analytics.rate_code_dim` r ON r.rate_code_id=u.rate_code_id  
JOIN `adept-snow-430315-n2.Uber_data_analytics.pickup_location_dim` pick ON pick.pickup_location_id=u.pickup_location_id
JOIN `adept-snow-430315-n2.Uber_data_analytics.dropoff_location_dim` drop ON drop.dropoff_location_id=u.dropoff_location_id
JOIN `adept-snow-430315-n2.Uber_data_analytics.payment_type_dim` pay ON pay.payment_type_id=u.payment_type_id)
;