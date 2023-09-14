
-- trip time (minutes) 
-- average trip time this is for total users
SELECT ROUND(AVG(ride_length_m), 2) AS Averagetime 
FROM
  `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`;

-- average trip time for each group.
SELECT ROUND(AVG(ride_length_m), 2) AS average, member_type
            
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`
group by member_type;

--max trip time for both members
SELECT ROUND(max(ride_length_m), 2) AS max_trip_time, member_type
          
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned` 
            
group by member_type;

-- minimum amount of time spent on a bike divided per group
          
SELECT  ROUND(min(ride_length_m), 2) AS min_trip_time, member_type
            
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned` 
            
group by member_type;

-- trip time (day)
-- this query checks what days are the most popular ones within the week 
SELECT  count(day_of_week) AS count, day_of_week
            
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned` 
            
GROUP BY day_of_week;

-- this query checks for the most popular and least popular day for casual riders
SELECT count(day_of_week) AS count, day_of_week
            
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned` 
            
WHERE member_type = 'casual'
            
GROUP BY day_of_week;
            
-- this query checks for the most popular and least popular day for members riders
SELECT  count(day_of_week) AS count, day_of_week
            
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned` 
            
WHERE member_type = 'member'
            
GROUP BY day_of_week;

--trip time (month) 
-- this query selects the number of frequency of rides per month for members
SELECT  count(month) AS count, month
            
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned` 
            
WHERE member_type = 'member'
            
group by month;

-- this query selects the number of frequency of rides per month for casual riders
SELECT  count(month) AS count, month
            
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned` 
            
WHERE member_type = 'casual'
            
group by month;

--trip time (hour)

SELECT 

EXTRACT (HOUR from start_time) AS time_of_day, count (*) AS occurances, member_type

FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`

GROUP BY
time_of_day , member_type
ORDER BY
time_of_day DESC;

-- shows the least and most frequented start station name for casual riders
SELECT count(*) AS rank, from_station_name
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`
            
WHERE member_type = 'casual'
            
GROUP BY 
from_station_name
ORDER BY
rank DESC;

-- shows the least and most frequented start station name for members riders
SELECT count(*) AS rank, from_station_name
FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`
            
WHERE member_type = 'member'
            
GROUP BY 
from_station_name
ORDER BY
rank DESC;

 -- shows least and most frequented end station name for members
      
            SELECT count(*) AS rank, to_station_name
              FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`
            
            WHERE member_type = 'member'
            
            GROUP BY 
              to_station_name
            ORDER BY
              rank DESC;

               -- shows least and most frequented end station name for casual riders
            SELECT count(*) AS rank, to_station_name
              FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`
            
            WHERE member_type = 'casual'
            
            GROUP BY 
              to_station_name
            ORDER BY
              rank DESC;

              -- Checks the most popular routes
            SELECT
              COUNT(*) AS frequency,
              to_station_name,
              from_station_name
            FROM
              `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`
            GROUP BY
              from_station_name,
              to_station_name
            ORDER BY
              frequency DESC LIMIT 2;

               -- checks the most popular routes for casual riders
            SELECT
              COUNT(*) AS frequency,
              to_station_name,
              from_station_name
            FROM
              `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`
            
            WHERE
              member_type = 'casual'
            GROUP BY
              from_station_name,
              to_station_name
            ORDER BY
              frequency DESC LIMIT 2;

-- checks the most popular routes for members
            SELECT
              COUNT(*) AS frequency,
              to_station_name,
              from_station_name
            FROM
              `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`
            
            WHERE
              member_type = 'member'
            GROUP BY
              from_station_name,
              to_station_name
            ORDER BY
              frequency DESC LIMIT 2;

               -- checks the least popular route for member
            SELECT
              COUNT(*) AS frequency,
              to_station_name,
              from_station_name
            FROM
              `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`
            
            WHERE
              member_type = 'member'
            GROUP BY
              from_station_name,
              to_station_name
            ORDER BY
              frequency ASC LIMIT 2;

               -- checks the least popular route for casual riders
            SELECT
              COUNT(*) AS frequency,
              to_station_name,
              from_station_name
            FROM
              `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined_cleaned`
            
            WHERE
              member_type = 'casual'
            GROUP BY
              from_station_name,
              to_station_name
            ORDER BY
              frequency ASC LIMIT 2;

      
