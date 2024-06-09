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

[R Script File](https://drive.google.com/file/d/1VkDA_3bqd7X56I7YmhHjpNc4AGgNshmw/view?usp=sharing) 

## Company Scenario 

The Company Marketing director believes that, the <i>" Company's future growth is dependent on maximizing the number of annual memberships. "</i>

#### About Company 
A bike-sharing company, Cyclistic features more than 5800 bicycles and 600 dock stations. The company itself sets out to have various bike-riding options reclining bikes, hand tricycles, and cargo bikes. The majority of riders opt for traditional bikes; about 8% use the assistive options. Users are more likely to ride for leisure, but about 30% use bikes to commute to work each day. <br>
 
Until now, the Company market relied on building general awareness and appealing to broad consumer segments. They do offer flexible price offerings:<br><br> 
• Single-ride Passes. <br> 
• Full-day passes. <br> 
• Annual Membership. <br> 

Customers who purchase single-ride or Full-day passes are known as Casual Riders & Customers who purchase annual membership are known as Cyclistic Members. The company finalized that Annual Membership users are much more profitable than casual riders. 

### Goal
<i>Design marketing strategies aimed at converting casual riders into annual Members. </i>

## Ask 
### Business Task
Devise marketing strategies to convert casual riders to members. <br> 

This phase includes, What type of question we are trying to solve. and how one's insights drive business decisions. 
<br>

### Guiding Questions:
1. What is the problem you are trying to solve?

The main objective is to determine profiles for the annual members and the casual riders and use the information to create a marketing strategy to assist in turning casual riders into annual members.

2. How can your insights drive business decisions?

The insights will aid the marketing team in increasing the amount of annual members.

### Analysis Question
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why Would casual riders buy cyclistic annual memberships?
3. How can cyclsitic use digital media to influence casual riders to become annual members?
<br>

Moreno, Director of Marketing assigned me the First Questions i.e., How do annual members and casual riders use Cyclistic bikes differently?

### Key Tasks:
 <li>
  Identify the business Task. ~ completed </li>
 <li>
  Consider key Stakeholders. ~ completed  </li> 

### Deliverables
<li>
 A Clear Statement of the Business Task.
</li> <br> 

Determine the differences between annual members and casual riders and which marketing strategy to pursue to increase annual members.

## Prepare 
This phase includes Downloading & Organizing datasets. <br>

### Data Source

This public data helps in understanding how different customer types use the bike-sharing system.  But note that data-privacy issues prohibit from using riders’ personally identifiable information. This means that we won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

### Guiding questions
1. Where is your data located?

Cyclistic historical trip data is [located here](https://divvy-tripdata.s3.amazonaws.com/index.html). This dataset is made under [Licence](https://divvybikes.com/data-license-agreement) Motivate International Inc. <br>

2. How is the data organized?

The datasets are organized in the format YYYYMM-divvy-tripdata. Each file includes the information such as, ride_id,	rideable_type,	started_at,	ended_at,	start_station_name,	start_station_id,	end_station_name,	end_station_id,	start_lat,	start_lng,	end_lat,	end_lng,	member_casual. <br>

3. Are there issues with bias or credibility in this data? Does your data ROCCC.

<br> 
There were no potential bias or credibility as data was reputed by the organization itself, which skewed towards positive results. The reputed data is well organized and cleaned before further processing and no sampling is considered while processing. 
<br> 
   
This Reputed data is <b>[ROCCC](https://medium.com/@varunsrivatsa27/the-importance-of-identifying-good-data-sources-which-rocccs-e6c8d7350339)</b> which stands for data is 
<li>
 Reliable, </li> <li>
 Original, </li> <li>
 Comprehensive, </li> <li>
 Current, and </li> <li>
 Cited. </li> <br>

4. How are you addressing licensing, privacy, security, and accessibility?

The data is open source and provided by the company it is however covered by their license (provided above). The data also does not include any personal information regarding the riders to protect their privacy.

5. How did you verify the data’s integrity?

The data was examined and all of them are consistent regarding the columns (amount and names) and the data types are consistent throughout.

6. How does it help you answer your question?

The data will allow us to examine annual members and casual riders to determine if there are any key characteristics regarding the riders, bike usage, and needs.

7. Are there any problems with the data?

More information regarding the units of measure, stations, and riders would add to the data’s value. 

### Key tasks:
1. Download data and store it appropriately - completed

2. Identify how it’s organized - completed

3. Sort and filter the data. - completed

4. Determine the credibility of the data. - completed

### Deliverables
<li> A Description of all data sources used. </li> <br>
The data source consists of 12 CSV files. There is one file for the first quarter thereafter each month starting with April is an individual file. The period starts at January 2023 and runs until December 2023.

 ## Process
 The individual CSV files will be combined into 1 to make it easier to manipulate and analyze. The combined file will be cleaned and additional columns will be added.

### Guiding questions <br>

<b> 1. What tools are you choosing and why? </b> <br>
I am using R as the dataset is too large for spreadsheets and R will allow in-depth analysis and manipulation <br>

<b> 2. Have you ensured your data’s integrity? </b> <br> 
I examined the columns after any changes and determined that the datatypes were consistent after manipulation <br>

<b> 3. What steps have you taken to ensure that your data is clean? </b> <br>
The NA's and duplicates were removed, and the time and dates were formatted. <br>

<b> 4. How can you verify that your data is clean and ready to analyze? </b> <br>
The steps shown in this section of the notebook show all cleaning steps and a summary of the data to ensure it is ready.

<b> 5. Have you documented your cleaning process so you can review and share those results? </b>
The cleaning process has been documented throughout <br>

### Key tasks <br>

Check the data for errors. - completed

Choose your tools. - completed

Transform the data so you can work with it effectively. - completed

Document the cleaning process. - completed

## Analysis
Steps involved in using R 

1. Import your data from Datasets-2023
2. Make columns consistent and merge them into a single dataframe.
3. Clean up and add data to prepare for analysis.
4. Conduct descriptive analysis.
5. Export a summary file for further analysis.


### Summary of Analysis: 

```

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

```

## Share 
### Guiding questions
1. Were you able to answer the question of how annual members and casual riders use Cyclistic bikes differently? <br>
Yes, we were able to determine a number of differences between casual riders and annual members.

2. What story does your data tell? <br>
The data tells us that there are a large number of casual riders who have a higher average of ride duration. This is a potential target for the digital marketing campaign.

3. How do your findings relate to your original question? <br>
The data answered all the original questions.

4. How do annual members and casual riders use Cyclistic bikes differently? <br>
We determined a variety of differences between the two groups.

5. Why would casual riders buy Cyclistic annual memberships? <br>
Casual members would buy the annual membership as they on average use the bikes for longer than members and the longest individual ride was also by a casual member.

6. How can Cyclistic use digital media to influence casual riders to become members? <br>
A digital media campaign with a focus on the benefits of a membership aimed at the casual rider who are using the bikes for long durations.

7. Who is your audience? What is the best way to communicate with them? <br>
My audience is the key stakeholders identified earlier. They are Lily Moreno and the Cyclistic marketing analytics team.

8. Can data visualization help you share your findings? <br>
Data visualisation provided a visual comparison of the differences between the two groups. This allows the stakeholders to quickly and easily understand the analysis.

9. Is your presentation accessible to your audience? <br>
The presentation is available upon request but is not freely available. This notebook with the analysis is however accessible.

Key tasks
● Determine the best way to share your findings. ~ completed
● Create effective data visualizations. ~ completed
● Present your findings. ~ completed
● Ensure your work is accessible. ~ completed

## Act 
### Guiding questions
1. What is your final conclusion based on your analysis? 

There is an opportunity for Cyclistic to turn casual riders into annual members. There are casual riders who are using the bike sharing more so than the annual members and with a targeted digital marketing campaign they can convert them to members.

2. How could your team and business apply your insights?

A target digital marketing campaign aimed at long use casual riders. The campaign would focus on the benefits of being a member over a casual rider for longer rides.

3. What next steps would you or your stakeholders take based on your findings?

I would recommend a more in-depth analysis on the long use casual riders however there is enough data to support a digital marketing campaign.

4. Is there additional data you could use to expand on your findings?

Additional data that would expand the findings would include: demographic data, climate data, financial data, and marketing campaign history with there ROI.


<hr> 

## Visualization of the rider types

![image](https://github.com/sreedatta-v/Cyclistic-Case-Study/assets/111418043/dfccc560-bb8f-42c8-8d6b-457d7b462add)

## Visualization of the rider types ride duration

![image](https://github.com/sreedatta-v/Cyclistic-Case-Study/assets/111418043/d40c3fdf-a923-4f26-bd06-e6efcacde8ae)

## Visualization of the usage by members and casual riders by the weekday

![image](https://github.com/sreedatta-v/Cyclistic-Case-Study/assets/111418043/33c88160-d5eb-4ead-ba9f-f0f02ebaa6a8)

## Visualization of the usage by members and casual riders by the month

![image](https://github.com/sreedatta-v/Cyclistic-Case-Study/assets/111418043/4a17d42a-6749-4e4d-b482-d248d81724bc)

## Visualization of the number of trips by members and casual riders by the month

![image](https://github.com/sreedatta-v/Cyclistic-Case-Study/assets/111418043/8680fa07-f3bd-498d-88e6-055092453989)

## Act

Guiding questions
1. What is your final conclusion based on your analysis?<br>
There is an opportunity for Cyclistic to turn casual riders into annual members. There are casual riders who are using the bike sharing more so than the annual members and with a targeted digital marketing campaign they can convert them to members.

2. How could your team and business apply your insights?<br>
A target digital marketing campaign aimed at long use casual riders. The campaign would focus on the benefits of being a member over a casual rider for longer rides.

3. What next steps would you or your stakeholders take based on your findings?<br>
I would recommend a more in-depth analysis on the long use casual riders however there is enough data to support a digital marketing campaign.

4. Is there additional data you could use to expand on your findings?<br>
Additional data that would expand the findings would include: demographic data, climate data, financial data, and marketing campaign history with there ROI.

### Key tasks
Create your portfolio. - Completed

Add your case study. - Completed

Practice presenting your case study to a friend or family member. - Completed

### Deliverable
My top three recommendations based on my analysis.

• Educate casual riders on the perks of memberships as a lack of knowledge can be the reason for the long usage by casual riders

• An ad campaign at the popular start stations for casual riders can increase engagement or interest in memberships

• A campaign to increase the usage by members especially in the less popular months could increase the number of trips. This campaign should provide benefits or rewards for continued usage with a focus on the less popular months.
