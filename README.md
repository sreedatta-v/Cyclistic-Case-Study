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
Devise marketing strategies to convert casual riders to members.
<br>
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

### Data Organization
The datasets are organized in the format YYYYMM-divvy-tripdata. Each file includes the information such as, ride_id,	rideable_type,	started_at,	ended_at,	start_station_name,	start_station_id,	end_station_name,	end_station_id,	start_lat,	start_lng,	end_lat,	end_lng,	member_casual. <br>
<br> 
There were no potential bias or credibility as data was reputed by the organization itself, which skewed towards positive results. The reputed data is well organized and cleaned before further processing and no sampling is considered while processing. 
<br> 
This Reputed data is <b>[ROCCC!](https://medium.com/@varunsrivatsa27/the-importance-of-identifying-good-data-sources-which-rocccs-e6c8d7350339)</b> which stands for data is 
<li>
 Reliable, </li> <li>
 Original, </li> <li>
 Comprehensive, </li> <li>
 Current, and </li> <li>
 Cited. </li>
