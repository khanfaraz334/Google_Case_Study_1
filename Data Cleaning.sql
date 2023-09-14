-- removes nulls

SELECT * 

FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`

WHERE 

from_station_name IS NOT NULL AND
to_station_name IS NOT NULL AND
to_station_id IS NOT NULL AND
end_lng IS NOT NULL AND
station_id IS NOT NULL;

--Added columns day of week, month, year, day, ride_length, and timestamp
CREATE OR REPLACE TABLE `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`
AS
SELECT
  ride_id, bike_id,from_station_name, to_station_name, start_lat, start_lng,end_lat, end_lng, usertype AS member_type,
  CASE EXTRACT(DAYOFWEEK FROM start_time) 
      WHEN 1 THEN 'SUN'
      WHEN 2 THEN 'MON'
      WHEN 3 THEN 'TUES'
      WHEN 4 THEN 'WED'
      WHEN 5 THEN 'THURS'
      WHEN 6 THEN 'FRI'
      WHEN 7 THEN 'SAT'    
    END AS day_of_week,

  CASE
    WHEN EXTRACT (MONTH FROM start_time) = 1 THEN 'JAN'
    WHEN EXTRACT (MONTH FROM start_time) = 2 THEN 'FEB'
    WHEN EXTRACT (MONTH FROM start_time) = 3 THEN 'MAR'
    WHEN EXTRACT (MONTH FROM start_time) = 4 THEN 'APR'
  ELSE 'UNKOWN'
  END AS month,
  EXTRACT (DAY FROM start_time) AS day,
  EXTRACT (YEAR FROM start_time) AS year,
  TIMESTAMP_DIFF (end_time, start_time, minute) AS ride_length_m,
  FORMAT_TIMESTAMP("%I:%M %p", start_time) AS time


FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`

WHERE 

from_station_name IS NOT NULL AND
to_station_name IS NOT NULL AND
to_station_id IS NOT NULL AND
end_lng IS NOT NULL AND
station_id IS NOT NULL AND
TIMESTAMP_DIFF (end_time, start_time, minute) > 1 AND TIMESTAMP_DIFF (end_time, start_time, hour) < 24;

