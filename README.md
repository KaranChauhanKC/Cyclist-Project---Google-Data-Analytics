# Cyclist-Project

## Case statement

**Cyclist**

A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno (the director of marketing and my manager) believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

**Scenario**

I am assumed to be a data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve our recommendations, so they must be backed up with compelling data insights and professional data visualizations.

## Tools Used

**MS Excel, SQL, Tableau**

## Data Source

Data is present in the following link:
https://divvy-tripdata.s3.amazonaws.com/index.html

1 year of data is used for analysis (2022)

## Process

Each file has been loaded on MySql server through import wixard. For files which were large and taking time, "Load data infile" function is used. After all these 12 months file have been merged and in a single file. Since this merged file has ~5500000 row entries, it is npt possible to work on this file in excel pr spreadsheets. Therefore, complete cleaning, data exploration and analysis is done in SQL. Code for which has been uploaded in above file. 

Visualization is done in Tableau. For this the merged table had been exported in a CSV file by "OUTFILE" function. This file is then uploaded on Tableau public desktop and used for data visualization.


<img width="1047" height="520" alt="image" src="https://github.com/user-attachments/assets/a4639bc2-bd86-4922-8d71-8811307e269d" />

Each bike type chart shows percentage from the total. The members constitutes 59.7% of the grand total while remaining 40.3% constitutes casual riders. Most used bike is classic bike followed by the electric bike. Docked bikes are used the least and by casual riders only.


<img width="1068" height="854" alt="image" src="https://github.com/user-attachments/assets/735d7e3e-f12f-46c6-8e77-cea8124c0e1b" />

**Months:** Both casual and members exhibit similar behavior in monthly trips, with more trips in the spring and summer and fewer in the winter. The gap between casuals and members is closest in the month of july in summmer.
**Days of Week:** When the weekdays are compared the behavior of both ridertypes is different, casual riders make more journeys on the weekends while members show a decline over the weekend in contrast to the other days of the week.
**Hours of the Day:** Both the rider types has similar behavior with number of rides increasing till 6:00 PM and then decrasing sharply. The only difference is that the members shows 2 peaks throughout the day. One is early in the morning at around 6 am to 8 am and other is in the evening at around 4 pm to 8 pm while number of trips for casual riders increase consistently over the day till evening and then decrease afterwards.

From the above observations we can infer that member may be working professional using bikes for commuting to and from the work in the week-days, while casual riders maybe tourists or just simpley casual riders using bikes more frequently over the weekends, throughour the day. Both are most active in Spring and Summer months.

<img width="1118" height="872" alt="image" src="https://github.com/user-attachments/assets/ea37ac84-9219-47be-8a7a-c0f8c68bf392" />

From these graphs we can observe that casual riders tend to cycle longer than members do on average (approximately 2x more). This is calculated asuming the tavel speed of both casual and member riders equal.

*Therefore, on the basis of above visulaization following is the difference between casual and member riders.*

<img width="960" height="121" alt="image" src="https://github.com/user-attachments/assets/2bfdc9d0-c187-48ff-a3e6-e736f299751f" />

## Recommendations

After identifying the differences between casual and member riders, following recommendations are made to marketing team to target casual ridersand persuade them to become members.

1. Marketing campaigns might be conducted in spring and summer at tourist/recreational locations popular among casual riders.
2. Casual riders are most active on weekends and during the summer and spring, thus they may be offered seasonal or weekend-only memberships.
3. Casual riders use their bikes for longer durations than members. Offering discounts for longer rides may incentivize casual riders and entice members to ride for longer periods of time.
