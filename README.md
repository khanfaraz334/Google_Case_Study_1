# Google_Cyclistic_Case_Study_1

# Introduction

I'll carry out a lot of the real-world tasks of a junior data analyst at the fictional business Cyclistic in this case study. I'll use the steps of the data analysis process—ask, prepare, process, analyze, share, and act—to provide answers to the important business issues.

# Links

Data Source: [Bicycle dataset](https://divvy-tripdata.s3.amazonaws.com/index.html)

SQL Queries:
01. [Data Combining](https://console.cloud.google.com/bigquery?sq=979731993765:809146a2da314d4db49d768dd9f77685&project=case-study-1-398516)
02. [Data Exploration](https://console.cloud.google.com/bigquery?sq=979731993765:f1b45c581c724d679d7f2c32296eab7e&project=case-study-1-398516)
03. [Data Cleaning](https://console.cloud.google.com/bigquery?sq=979731993765:45fe7bf71e6a4e37986b37f02296cbae&project=case-study-1-398516)
04. [Data Analysis](https://console.cloud.google.com/bigquery?sq=979731993765:3a0d1911df064b9d93afe17dcabbe96d&project=case-study-1-398516&ws=!1m4!1m3!8m2!1s979731993765!2s3a0d1911df064b9d93afe17dcabbe96d)
05. [Renaming Columns](https://console.cloud.google.com/bigquery?sq=979731993765:e406e862513b4307ab61db82c02bf870&project=case-study-1-398516)
06. [Data Summary](https://console.cloud.google.com/bigquery?sq=979731993765:e4fb4faaa309402fa85465a0353fd921&project=case-study-1-398516)
07. [Combined and Cleaned Data Table ](https://console.cloud.google.com/bigquery?sq=979731993765:3dbf9cf298a64b18bfe1d310a89850a0&project=case-study-1-398516)

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

I will use Cyclistic’s historical trip data to analyze and identify trends from Jan 2022 to Apr 2022 which can be downloaded from [here](https://divvy-tripdata.s3.amazonaws.com/index.html). The data has been made available by Motivate International Inc.

### Data Sources Description

There are 4 files with naming convention of YYYYMM-divvy-tripdata and it has 13 columns - 

Ride_id — A unique ID assigned to each ride

Rideable_type — Type of bike used in the ride

Started_at — Start date and time

Ended_at — End date and time

Start_station_name — Name of the station from where the ride starts

Start_station_id — Unique ID of the station from where the ride starts

End_station_name — Name of the station where the rids ends

End_station_id — Unique ID of the station where the rid ends

Start_lat — Latitude of the starting station

Start_lng — Longitude of the starting station

End_lat — Latitude of the ending station

End_lng — Longitude of the ending station

Member_casual — Type of membership, either member or casual


