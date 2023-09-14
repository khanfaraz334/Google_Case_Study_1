-- checking for number of null values in all columns

SELECT
  COUNTIF(ride_id IS NULL) AS null_count_ride_id,
  COUNTIF(bike_id IS NULL) AS null_count_bike_id,
  COUNTIF(start_time IS NULL) AS null_count_start_time,
  COUNTIF(end_time IS NULL) AS null_count_end_time,
  COUNTIF(from_station_name IS NULL) AS null_count_from_station_name,
  COUNTIF(station_id IS NULL) AS null_count_station_id,
  COUNTIF(to_station_name IS NULL) AS null_count_to_station_name,
  COUNTIF(to_station_id IS NULL) AS null_count_to_station_id,
  COUNTIF(start_lat IS NULL) AS null_count_start_lat,
  COUNTIF(start_lng IS NULL) AS null_count_start_lng,
  COUNTIF(end_lat IS NULL) AS null_count_end_lat,
  COUNTIF(end_lng IS NULL) AS null_count_end_lng,
  COUNTIF(usertype IS NULL) AS null_count_usertype,
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`;


-- checking for duplicate rows

SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`;

-- ride_id length

SELECT LENGTH(ride_id) AS length_ride_id, COUNT(ride_id) AS no_of_rows
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`
GROUP BY length_ride_id;

-- bike_id - 3 unique types of bikes

SELECT DISTINCT bike_id, COUNT(bike_id) AS no_of_trips
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`
GROUP BY bike_id;

-- started_at, ended_at - TIMESTAMP - YYYY-MM-DD hh:mm:ss UTC
SELECT start_time, end_time
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`
LIMIT 10;

--station names
SELECT DISTINCT to_station_name AS destination_station_name
From `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`;

-- confirms that member type is only 2 values which are member and casual riders
SELECT DISTINCT usertype, COUNT(usertype) AS no_of_trips
From `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`
Group By usertype;

/*List the column names*/
SELECT COLUMN_NAME, data_type
FROM `case-study-1-398516.Cyclist_Case_Study`.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Tripdata_combined';

/*List the row names*/

SELECT COUNT(*) AS row_count
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`;

/*Limit the no. of rows preview*/

SELECT *
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`
LIMIT 10;

/*List the column names and data type*/

SELECT COLUMN_NAME, DATA_TYPE
FROM `case-study-1-398516.Cyclist_Case_Study`.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Tripdata_combined';

