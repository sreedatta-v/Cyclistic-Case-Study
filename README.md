# Google Data Analytics Capstone Case Study: Cyclistic bike-sharing Analysis
Course Link : [Google Data Analytics](https://www.coursera.org/google-certificates/data-analytics-certificate#courses)

## Introduction
Here, I Will perform a case study on a Fictional Company, Cyclistic in Chicago, I will use tools mostly often used by Junior Data Analyst. <br> 
<br> 
In order to follow the Business task, I will do the following analysis steps to solve; 
1. [Ask](https://github.com/sreedatta-v/Cyclistic-Case-Study/edit/main/README.md)
2. [Prepare](https://github.com/sreedatta-v/Cyclistic-Case-Study/edit/main/README.md)
3. [Process](https://github.com/sreedatta-v/Cyclistic-Case-Study/edit/main/README.md)
4. [Analysis](https://github.com/sreedatta-v/Cyclistic-Case-Study/edit/main/README.md)
5. [Share](https://github.com/sreedatta-v/Cyclistic-Case-Study/edit/main/README.md)
6. [Act](https://github.com/sreedatta-v/Cyclistic-Case-Study/edit/main/README.md)

Data Source: [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) (accessed on: May 2nd, 24')

SQL Queries: 

Visualization: 

## Company Scenario

The Company Marketing director believes that, the <i>" Company's future growth is dependent on maximizing the number of annual memberships "</i>

#### About Company 
A bike-sharing company, Cyclistic features more than 5800 bicycles and 600 dock stations. The company itself sets out to have various bike-riding options reclining bikes, hand tricycles, and cargo bikes. The majority of riders opt for traditional bikes; about 8% use the assistive options. Users are more likely to ride for leisure, but about 30% use bikes to commute to work each day. <br>
 
Until now, the Company market relied on building general awareness and appealing to broad consumer segments. They do offer flexible price offerings:<br><br> 
• Single-ride Passes <br> 
• Full-day passes <br> 
• Annual Membership <br> 

Customers who purchase single-ride or Full-day passes are known as Casual Riders & Customers who purchase annual membership are known as Cyclistic Members. The company finalized that Annual Membership users are much more profitable than casual riders. 

### Goal
<i>Design marketing strategies aimed at converting casual riders into annual Members </i>

## Ask 
### Business Task
Devise marketing strategies to convert casual riders to members. <br>

This phase includes, What type of question we are trying to solve. and how one's insights drive business decisions.
<br>

### Analysis Question
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why Would casual riders buy cyclistic annual memberships?
3. How can cyclsitic use digital media to influence casual riders to become annual members?
<br>

Moreno, Director of Marketing assigned me the First Questions i.e., How do annual members and casual riders use Cyclistic bikes differently?

### Key Tasks:
 <li>
  Identify the business Task. </li>
 <li>
  Consider key Stakeholders  </li> 

### Deliverables
<li>
 A Clear Statement of the Business Task.
</li>

## Prepare 
This phase includes Downloading & Organizing datasets. <br>

### Data Source
Cyclistic historical trip data is [located here](https://divvy-tripdata.s3.amazonaws.com/index.html). This dataset is made under [Licence](https://divvybikes.com/data-license-agreement) Motivate International Inc. <br>


This public data helps in understanding how different customer types use the bike-sharing system.  But note that data-privacy issues prohibit from using riders’ personally identifiable information. This means that we won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

The data is open source and provided by the company it is however covered by their license (provided above). The data also does not include any personal information regarding the riders to protect their privacy.

The data was examined and all of them are consistent regarding the columns (amount and names) and the data types are consistent throughout.

The data will allow us to examine annual members and casual riders to determine if there are any key characteristics regarding the riders, bike usage, and needs.

More information regarding the units of measure, stations and riders would add to the data’s value.

### Data Organization
The datasets are organized in the format YYYYMM-divvy-tripdata. Each file includes the information such as, ride_id,	rideable_type,	started_at,	ended_at,	start_station_name,	start_station_id,	end_station_name,	end_station_id,	start_lat,	start_lng,	end_lat,	end_lng,	member_casual. <br>
<br> 
There were no potential bias or credibility as data was reputed by the organization itself, which skewed towards positive results. The reputed data is well organized and cleaned before further processing and no sampling is considered while processing. 
<br> 
This Reputed data is <b>[ROCCC](https://medium.com/@varunsrivatsa27/the-importance-of-identifying-good-data-sources-which-rocccs-e6c8d7350339)</b> which stands for data is 
<li>
 Reliable, </li> <li>
 Original, </li> <li>
 Comprehensive, </li> <li>
 Current, and </li> <li>
 Cited. </li>

### Deliverables
<li> A Description of all data sources used. </li>

 ## Process
 The individual CSV files will be combined into 1 to make it easier to manipulate and analyse. The combined file will be cleaned and additional columns will be added.

Guiding questions <br>

<b> 1. What tools are you choosing and why? </b> <br>
I am using R as the dataset is to large for spreadsheets and R will allow indepth analysis and manipulation <br>

<b> 2. Have you ensured your data’s integrity? </b> <br> 
I examined the columns after any changes and determined that the datatypes were consisitent after manipulation <br>

<b> 3. What steps have you taken to ensure that your data is clean? </b> <br>
The NA's and duplicates were removed, the time and dates were formatted. <br>

<b> 4. How can you verify that your data is clean and ready to analyze? </b> <br>
The steps shown in this section of the notebook show all cleaning steps and a summary of the data to ensure it is ready.

<b> 5. Have you documented your cleaning process so you can review and share those results? </b>
The cleaning process has been documented throughout <br>

## Code

### Packages 

```R
library(tidyverse) 
library(janitor)
library(lubricate)
library(ggplot2)
```

These are essential libraries used in this case study.

Downlaodable R Script File is attached below : 
[ Downloadable Script File ](https://drive.google.com/file/d/1WI6ukSW7mlZCJCQLOhZ5ep_wgqK54GK2/view?usp=sharing)

## Analysis 
Importing the CSV files into R Studio. Below code describes how it is imported.

```R
TripDataJan <- read.csv("C:~\\23-Cyclustic-bike-sharing\\202301-divvy-tripdata\\202301-divvy-tripdata.csv")
```

It describes how data is imported into R studio. Similarily it is repeated for rest of the months. 

Examining the datasets
```R
str(TripDataJan)
```
It printout the Datatype assigned with each column, which further used for analzing in deeper. 

Later, all datasets are combined into single file named as <code> tripdata2023 </code>, then examined the datatypes of the combined dataframe to ensure the consistence exists before and after the combining the data.

Next Step, Data Cleaning. It allows to make sure there is no duplicates present in data, along with null values.<br>

Here, <b> The time format is currently yyyy-mm-dd hh:mm:ss to do a deeper analysis it is best to format into indiviudal columns and add a day of the week column. </b> 

### Data Manipulation

1. Creating a column to determine the ride length and filtering out trips with a ride length less than 0.

2. Determining the amount of members vs casual riders: 

![image](https://github.com/sreedatta-v/Cyclistic-Case-Study/assets/111418043/44caf93e-734a-477d-8953-bdcbb874ccc3)

It describes the no.of annual members and casual riders using the bicycle. 


3. Then performing Statistical analysis to analyse average_ride_length, standard_deviation, median_ride_length, min_ride_length, max_ride_length

![image](https://github.com/sreedatta-v/Cyclistic-Case-Study/assets/111418043/b317c989-4353-493a-82b3-7700f1fe8faa)


4. Determine the mode for the day of the week

I wanted to examine the day of the week column further. I wanted tio determine which day had the most rides and average ride length for each rider type. There was an issue as the first time the code ran the results were grouped by rider type but the days of the week were out of order which required the ordered code.

### Summary of Analysis: 
From the analysis we can determine that:

There were more members(3659242) than casual riders(2052829) in the year 2023.

Casual riders(3424.217 mins) had a higher average ride length than members(1359.659 mins).

Casual riders had the longest ride time being 12578400 mins or 2608 hours.

The most popular day for bike sharing was Friday.

The most popular day for casual riders was Friday with an average ride length of 3482.757 mins.

The most popular day for members was Friday with an average ride length of 1411.728 mins

The most popular month was August with 770333 rides with an average ride duration of 2541.369 mins.

The least popular month was Jan with 190170 rides with an average ride duration of 1208.557 mins.

The most popular start station overall was "Streeter Dr & Grand Ave".

The most popular start station for members was "Clinton St & Washington Blvd" with 26207 trips starting from here.

The most popular start station for casual riders was "Streeter Dr & Grand Ave" with 45768 trips starting from here.


## Share 
### Guiding questions
<b>  Were you able to answer the question of how annual members and casual riders use Cyclistic bikes differently? <br> </b>
<i>Yes, we were able to determine a number of differences between casual riders and annual members.</i> 


● What story does your data tell?

The data tells us that there are a large number of casual riders who have a higher average of ride duration. This is a potential target for the digital marketing campaign.


● How do your findings relate to your original question?

The data answered all the original questions.


How do annual members and casual riders use Cyclistic bikes differently?

We determined a variety of differences between the two groups.


Why would casual riders buy Cyclistic annual memberships?

Casual members would buy the annual membership as they on average use the bikes for longer than members and the longest individual ride was also by a casual member.


How can Cyclistic use digital media to influence casual riders to become members?

A digital media campaign with a focus on the benefits of a membership aimed at the casual rider who are using the bikes for long durations.


● Who is your audience? What is the best way to communicate with them?

My audience is the key stakeholders identified earlier. They are Lily Moreno and the Cyclistic marketing analytics team.


● Can data visualization help you share your findings?

Data visualisation provided a visual comparison of the differences between the two groups. This allows the stakeholders to quickly and easily understand the analysis.


● Is your presentation accessible to your audience?

The presentation is available upon request but is not freely available. This notebook with the analysis is however accessible.

<hr> 

![image](https://github.com/sreedatta-v/Cyclistic-Case-Study/assets/111418043/8680fa07-f3bd-498d-88e6-055092453989)


