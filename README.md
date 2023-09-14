# Google_Cyclistic_Case_Study_1

# Introduction

I'll carry out a lot of the real-world tasks of a junior data analyst at the fictional business Cyclistic in this case study. I'll use the steps of the data analysis process—ask, prepare, process, analyze, share, and act—to provide answers to the important business issues.

# Links

Data Source: [Bicycle dataset](https://divvy-tripdata.s3.amazonaws.com/index.html)

SQL Queries:
01. [Data Combining](https://github.com/khanfaraz334/Google_Case_Study_1/blob/main/Data%20Combining.sql)
02. [Data Exploration](https://github.com/khanfaraz334/Google_Case_Study_1/blob/main/Data%20Exploration.sql)
03. [Data Cleaning](https://github.com/khanfaraz334/Google_Case_Study_1/blob/main/Data%20Cleaning.sql)
04. [Data Analysis](https://github.com/khanfaraz334/Google_Case_Study_1/blob/main/Data%20Analysis.sql)
05. [Renaming Columns](https://github.com/khanfaraz334/Google_Case_Study_1/blob/main/Renaming%20Columns.sql)
06. [Combined and Cleaned Data Table](https://github.com/khanfaraz334/Google_Case_Study_1/blob/main/Cleaned%20%26%20Combined%20data%20exported%20to%20Excel%20CSV%20locally)

Data Visualizations: [Tableau Public Dashboard 1](https://public.tableau.com/app/profile/faraz.khan4967/viz/GOOGLE_CASE_STUDY_1/Bike_Rides_Dashboard_1)
                     [Tableau Public Dashboard 2](https://public.tableau.com/app/profile/faraz.khan4967/viz/GOOGLE_CASE_STUDY_1/Bike_Rides_Dashboard_2)
# Scenario

I am a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of
marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your
team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will
design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your
recommendations, so they must be backed up with compelling data insights and professional data visualizations.

# Characters and teams

● **Cyclistic**: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart
by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities
and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use
the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each
day.
● **Lily Moreno**: The director of marketing and your manager. Moreno is responsible for the development of campaigns and
initiatives to promote the bike-share program. These may include email, social media, and other channels.
● **Cyclistic marketing analytics team**: A team of data analysts who are responsible for collecting, analyzing, and reporting
data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy learning about
Cyclistic’s mission and business goals — as well as how you, as a junior data analyst, can help Cyclistic achieve them.
● **Cyclistic executive team**: The notoriously detail-oriented executive team will decide whether to approve the
recommended marketing program.

# About the company

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are
geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to
any other station in the system anytime.
Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One
approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and
annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who
purchase annual memberships are Cyclistic members.
Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing
flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to
future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good
chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have
chosen Cyclistic for their mobility needs.
Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do
that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual
riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in
analyzing the Cyclistic historical bike trip data to identify trends.

# Ask
Three questions will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

Moreno has assigned me the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?

### Business Task

To Design marketing strategies aimed at converting casual riders into annual members.

Within Cyclistic, our membership base consists of two distinct categories: annual members, individuals who have invested in yearly subscriptions, and casual riders, users who acquire passes for individual rides or full-day access. Our marketing manager is keen on launching a campaign aimed at converting casual riders into annual members in order to optimize the company's overall success.
  
As a Data Analyst, my responsibility is to identify disparities in user behavior by utilizing the available trip data. This analysis aims to provide insights into the unique characteristics that set casual users apart from annual members.

# Prepare

### Data Source

I will use Cyclistic’s historical trip data to analyze and identify trends from Jan 2022 to Apr 2022 (first quarter) which can be downloaded from [here](https://divvy-tripdata.s3.amazonaws.com/index.html). The data has been made available by Motivate International Inc.

### Data Sources Description

There are 4 files with naming convention of YYYYMM-divvy-tripdata and it has 13 columns - 

Ride_id — A unique ID assigned to each ride,

Rideable_type — Type of bike used in the ride,

Started_at — Start date and time,

Ended_at — End date and time,

Start_station_name — Name of the station from where the ride starts,

Start_station_id — Unique ID of the station from where the ride starts,

End_station_name — Name of the station where the rids ends,

End_station_id — Unique ID of the station where the rid ends,

Start_lat — Latitude of the starting station,

Start_lng — Longitude of the starting station,

End_lat — Latitude of the ending station,

End_lng — Longitude of the ending station,

Member_casual — Type of membership, either member or casual.

# Process

I used BigQuery to combine 4 datasets into one and clean it. (Due to BigQuery limitation, I was able to use only 4 datasets). 
Reason:
I used BigQuery to analyze first quarter data (Jan-Apr) because of Excel's inability to manage large amounts of data. Because the Cyclistic dataset has more than 5.6 million rows, it is essential to use a platform like BigQuery that supports huge volumes of data. SQL files can't be downloaded from Big Query due to which I had to create links. You will find all queries in the links which I made.

### Renaming Columns 

SQL QUERY - [Renaming Columns](https://console.cloud.google.com/bigquery?sq=979731993765:e406e862513b4307ab61db82c02bf870&project=case-study-1-398516)

First of all, I renamed 8 columns and they are as follows -

started_at -> start_time,
ended_at ->  end_time,
start_station_name -> from_station_name,
start_station_id -> station_id,
end_station_name -> to_station_name,
end_station_id -> to_station_id,
rideable_type -> bike_id,
member_casual -> usertype.

### Data Combining

SQL QUERY - [Data Combining](https://console.cloud.google.com/bigquery?sq=979731993765:809146a2da314d4db49d768dd9f77685&project=case-study-1-398516)

4 csv files are uploaded in the dataset. Another table named "Tripdata_combined" is created, containing more than 600k of data for the quarter.

### Data Exploration

SQL QUERY - [Data Exploration](https://console.cloud.google.com/bigquery?sq=979731993765:f1b45c581c724d679d7f2c32296eab7e&project=case-study-1-398516)

Prior to data cleaning, I am acquainting myself with the data to identify any inconsistencies.

My observations - 

1. The table below shows the all column names and their data types. The ride_id column is our primary key.
   
   ![image](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/75d5421f-41f8-4415-be5a-862d211bf4dd)

2. The following table shows number of null values in each column.

![image](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/6180ca68-1329-4b02-95dc-8c4a8de46638)

3. As ride_id has no null values, let's use it to check for duplicates.

   ![image](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/1e941bcb-e21d-4514-af9b-357440bc1033)

   There are no duplicates.

4. Ride_id length is 16. There is no necessity to clean it.

   ![image](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/8eaa6e91-d617-4f5b-bf22-d36e0a0fe20d)

5. Types of unique bikes(bike_id).

   ![image](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/e56d85b1-eeaa-4901-9c4e-633b123a7479)

6. The "started_at" and "ended_at" columns indicate the beginning and conclusion times of the trips in the YYYY-MM-DD hh:mm:ss UTC format. To determine the overall trip duration, a new column called "ride_length" can be generated. However, it's important to note that there are trips with durations exceeding one day and others with durations less than a minute, or cases where the end time precedes the start time, which should be excluded from the analysis. Additionally, columns such as "day_of_week" and "month" can provide valuable insights when examining trips at various times throughout the year.

7. Total of 152973 rows have both start_station_name and start_station_id missing which needs to be removed.

8. Total of 164727 rows have both end_station_name and end_station_id missing which needs to be removed.

9. Total of 746 rows have both end_lat and end_lng missing which needs to be removed.

10. member_casual column has 2 uniqued values as member or casual rider.

    ![image](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/58bda5e3-a941-40a6-8d8b-e84cc9a318ac)

11. The columns can be excluded from our analysis are "start_station_id" and "end_station_id" as they do not contribute to solving our current problem. But these columns alongwith longitude and latitude location columns may not be utilized in the analysis itself, they can be employed for visualizing a map.
    
### Data Cleaning

SQL QUERY - [Data Cleaning](https://console.cloud.google.com/bigquery?sq=979731993765:45fe7bf71e6a4e37986b37f02296cbae&project=case-study-1-398516)

1. All the rows having missing values are deleted.
2. 6 more columns are added and they are ride_length_m, day_of_week, month, day, year and time.
3. Trips with duration less than a minute and longer than a day are excluded.
4. Total around 200k rows are removed in this step.
5. I renamed 8 columns.

# Analyze

SQL QUERY - [Data Analysis](https://console.cloud.google.com/bigquery?sq=979731993765:3a0d1911df064b9d93afe17dcabbe96d&project=case-study-1-398516&ws=!1m4!1m3!8m2!1s979731993765!2s3a0d1911df064b9d93afe17dcabbe96d)

With the data now cleaned, I am poised to delve into the analysis, addressing the query: "How do annual members and casual riders use Cyclistic bikes differently?" This inquiry encompasses two principal facets: examining dissimilarities in time spent cycling and dissecting the routes chosen by each user category.

To scrutinize the aspect of time spent on the bicycle, I conducted a series of queries. These inquiries aimed to uncover various aspects of ride duration, such as average ride length, minimum ride duration, and maximum ride duration, with a focus on both minutes and hours. Additionally, I sought to identify temporal trends, exploring when people are most inclined to ride the bikes in terms of days and months. The following queries were employed for this purpose:

1. Trip time analysis to calculate bike ride minutes (average ride length, minimum ride length, and maximum ride length).
2. Trip time to calculate when the bike ride is mostly being used throughout the week (Monday — Sunday).
3. Analysis of when bike rides are popular throughout the months of the first quarter (January — April).
4. Analysis of the popular hours each user rides the bikes.
5. Analysis of the stations of each bike ride (most and least popular start and end stations for members and non-members).

# Share

Downloaded cleaned data from the following query [Combined and Cleaned Data Table ](https://console.cloud.google.com/bigquery?sq=979731993765:3dbf9cf298a64b18bfe1d310a89850a0&project=case-study-1-398516) and stored it locally in csv format. Due to its size, I was not able to upload it on Git. 

Made visualizations using this csv file on [Tableau](https://public.tableau.com/app/profile/faraz.khan4967/viz/GOOGLE_CASE_STUDY_1/Bike_Rides_Dashboard_1).

During this stage of the project, I'm excited to present the insights I've derived from my analysis through compelling visualizations created with Tableau. To enhance your understanding and overall experience, I strongly encourage you to explore the interactive dashboard available at this [link](https://public.tableau.com/app/profile/faraz.khan4967/viz/GOOGLE_CASE_STUDY_1/Bike_Rides_Dashboard_1)

![Bike Preference_Worksheet_1](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/c928046f-af1d-4c7e-9ff7-a4f820c59d8c)

Key Findings 1 - It appears that classic bikes enjoy greater popularity among both members and non-members, suggesting that they may represent the most marketable option for promoting Cyclistic's services.

![Day Wise Trend_Worksheet_2](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/5aede7df-c47a-43e0-9848-f8a132355b7a)

Key Findings 2 - It's plausible to infer that members predominantly utilize the bikes for work-related purposes, as indicated by their higher usage on weekdays. Conversely, non-members seem to favor leisurely rides, as reflected in their increased bike usage on Saturdays and Sundays.

![Monthly Ride Trend_Worksheet_3](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/583a4106-edbd-4953-8a5c-843d440f13cb)

Key Findings 3 - The observed trend of increased bike usage for each user category may be influenced by a multitude of factors.

![Hourly Ride Trend_Worksheet_4](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/16a9306f-bf82-48c5-9816-518312a1663a)

Key Findings 4 - It's evident from the data that member riders exhibit a clear pattern of bike usage during typical work hours, with rides starting around 8 am and concluding around 6 pm. In contrast, non-members display a less pronounced spike in their start and end times, suggesting a more varied usage pattern that includes leisurely rides.

To attract more members, the company could consider offering specialized packages tailored to users who primarily use bikes for leisure activities, thus catering to a broader range of customer preferences.

![Average Monthly Ride_Worksheet_5](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/a16db41e-eefb-4d6b-94fe-51ebd54a8b05)

Key Findings 5 - Members have a higher average number of rides per month than non-members in every month.

![Ride Composition_Worksheet_6](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/64d94f05-f78e-4680-bc1d-c6b21c08ff42)

Key Findings 6 - The actual percentage of casual rides in the first quarter is 28.80% and for members is 71.20%. 

### Summary of Key Takeaways/Findings - 

Key Takeaways:

1. In Quarter 1, members primarily use the bikes for work purposes, while non-members tend to use them for leisure.
2. Quarter 1 members favor weekday bike usage, whereas non-members prefer weekends.
3. Both user groups show a preference for classic bikes over electric ones.
4. The average ride time for members is shorter than that for casual riders, with member riders averaging 11.22 minutes compared to 25.06 minutes for casual riders.

   
   ![image](https://github.com/khanfaraz334/Google_Case_Study_1/assets/62903466/5e0d3389-05fc-4fe2-a446-85a48cbd3f53)


# Act

Upon recognizing the distinctions between casual and member riders, the company can develop tailored marketing strategies aimed at enticing casual riders to transition into becoming members.

### Recommendations 

1. Recognize that casual riders are predominantly active on weekends and during the summer and spring. Offer special seasonal or weekend-only membership packages to cater to their preferred riding times.
2. As casual riders tend to use bikes for longer durations compared to members, consider introducing discounts or incentives for longer rides. This strategy can both attract casual riders and encourage existing members to extend their ride times.
3. When marketing Cyclistic bikes, it's advisable to prominently feature classic bikes as the primary model in your promotional materials. This choice aligns with the preference of the majority of users, who tend to favor classic bikes over other models. Highlighting what your target audience prefers can be a compelling way to attract and engage potential customers.


   




