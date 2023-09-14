/*Combine 4 months dataset and feed it into one table namely trip_data combined.*/
CREATE OR REPLACE TABLE `case-study-1-398516.Cyclist_Case_Study.Tripdata_combined`
AS
SELECT * FROM (
  SELECT * FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_Jan`
  UNION ALL
  SELECT * FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_Feb`
  UNION ALL
  SELECT * FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_Mar`
  UNION ALL
  SELECT * FROM `case-study-1-398516.Cyclist_Case_Study.Tripdata_Apr`

)

