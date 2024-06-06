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
Importing the CSV files into R Studio. 

```R
TripDataJan <- read.csv("C:~\\23-Cyclustic-bike-sharing\\202301-divvy-tripdata\\202301-divvy-tripdata.csv")
```

It describes how data is imported into R studio. Similarily it was repeated for rest of the months. 

![image](https://github.com/sreedatta-v/Cyclistic-Case-Study/assets/111418043/b317c989-4353-493a-82b3-7700f1fe8faa)


![image](https://github.com/sreedatta-v/Cyclistic-Case-Study/assets/111418043/8680fa07-f3bd-498d-88e6-055092453989)


