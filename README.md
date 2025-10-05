# Cyclist-Project---Google-Data-Analytics

## Case statement

<b>Cyclist<b>

A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno (the director of marketing and my manager) believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

<b>Scenario<b>

I am assuming to be a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve our recommendations, so they must be backed up with compelling data insights and professional data visualizations.

## Data Source

Data is present in the following link:
https://divvy-tripdata.s3.amazonaws.com/index.html

1 year of data is used for analysis (2022)

## Process

Each file has been loaded on MySql server through import wixard. For files which were large and taking time, "Load data infile" function is used. After all these 12 months file have been merged and in a single file. Since this merged file has ~5500000 row entries, it is npt possible to work on this file in excel pr spreadsheets. Therefore, complete cleaning, data exploration and analysis is done in SQL. Code for which has been uploaded in above file. 

Visualization is done in Tableau. For this the merged table had been exported in a CSV file by "OUTFILE" function. This file is then uploaded on Tableau public desktop and used for data visualization.


<img width="1047" height="520" alt="image" src="https://github.com/user-attachments/assets/a4639bc2-bd86-4922-8d71-8811307e269d" />



