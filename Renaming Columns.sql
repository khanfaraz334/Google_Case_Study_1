/*Renaming columns.*/
ALTER TABLE `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`
RENAME COLUMN started_at to start_time,
RENAME COLUMN ended_at to end_time,
RENAME COLUMN start_station_name to from_station_name,
RENAME COLUMN start_station_id to station_id,
RENAME COLUMN end_station_name to to_station_name,
RENAME COLUMN end_station_id to to_station_id,
RENAME COLUMN rideable_type to bike_id,
RENAME COLUMN member_casual to usertype;

 select * from `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`
