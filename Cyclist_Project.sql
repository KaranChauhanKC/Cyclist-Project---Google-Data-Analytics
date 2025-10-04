USE cyclist;

CREATE Table If NOT EXISTs 202507_tripdata
(
    rideable_type VARCHAR(255),
    started_at_date DATE,
    started_at_time TIME,
    ended_at_date DATE,
    ended_at_time TIME,
    member_casual VARCHAR(255),
    Weekday_ride VARCHAR(255),
    Hour_ride int
    );

LOAD DATA INFILE '202507-divvy-tripdata.csv' INTO Table 202507_tripdata
FIELDS terminated by ','
Ignore 1 Lines;

CREATE Table If NOT EXISTs 202506_tripdata
(
    rideable_type VARCHAR(255),
    started_at_date DATE,
    started_at_time TIME,
    ended_at_date DATE,
    ended_at_time TIME,
    member_casual VARCHAR(255),
    Weekday_ride VARCHAR(255),
    Hour_ride int
    );

CREATE Table If NOT EXISTs 202505_tripdata
(
    rideable_type VARCHAR(255),
    started_at_date DATE,
    started_at_time TIME,
    ended_at_date DATE,
    ended_at_time TIME,
    member_casual VARCHAR(255),
    Weekday_ride VARCHAR(255),
    Hour_ride int
    );

CREATE Table If NOT EXISTs 202504_tripdata
(
    rideable_type VARCHAR(255),
    started_at_date DATE,
    started_at_time TIME,
    ended_at_date DATE,
    ended_at_time TIME,
    member_casual VARCHAR(255),
    Weekday_ride VARCHAR(255),
    Hour_ride int
    );

CREATE Table If NOT EXISTs 202503_tripdata
(
    rideable_type VARCHAR(255),
    started_at_date DATE,
    started_at_time TIME,
    ended_at_date DATE,
    ended_at_time TIME,
    member_casual VARCHAR(255),
    Weekday_ride VARCHAR(255),
    Hour_ride int
    );
    
CREATE Table If NOT EXISTs 202502_tripdata
(
    rideable_type VARCHAR(255),
    started_at_date DATE,
    started_at_time TIME,
    ended_at_date DATE,
    ended_at_time TIME,
    member_casual VARCHAR(255),
    Weekday_ride VARCHAR(255),
    Hour_ride int
    );
    
CREATE Table If NOT EXISTs 202501_tripdata
(
    rideable_type VARCHAR(255),
    started_at_date DATE,
    started_at_time TIME,
    ended_at_date DATE,
    ended_at_time TIME,
    member_casual VARCHAR(255),
    Weekday_ride VARCHAR(255),
    Hour_ride int
    );

CREATE Table If NOT EXISTs 202412_tripdata
(
    rideable_type VARCHAR(255),
    started_at_date DATE,
    started_at_time TIME,
    ended_at_date DATE,
    ended_at_time TIME,
    member_casual VARCHAR(255),
    Weekday_ride VARCHAR(255),
    Hour_ride int
    );

CREATE Table If NOT EXISTs 202411_tripdata
(
    rideable_type VARCHAR(255),
    started_at_date DATE,
    started_at_time TIME,
    ended_at_date DATE,
    ended_at_time TIME,
    member_casual VARCHAR(255),
    Weekday_ride VARCHAR(255),
    Hour_ride int
    );

CREATE Table If NOT EXISTs 202410_tripdata
(
    rideable_type VARCHAR(255),
    started_at_date DATE,
    started_at_time TIME,
    ended_at_date DATE,
    ended_at_time TIME,
    member_casual VARCHAR(255),
    Weekday_ride VARCHAR(255),
    Hour_ride int
    );
    
CREATE Table If NOT EXISTs 202409_tripdata
(
    rideable_type VARCHAR(255),
    started_at_date DATE,
    started_at_time TIME,
    ended_at_date DATE,
    ended_at_time TIME,
    member_casual VARCHAR(255),
    Weekday_ride VARCHAR(255),
    Hour_ride int
    );
    
CREATE Table If NOT EXISTs 202408_tripdata
(
    rideable_type VARCHAR(255),
    started_at_date DATE,
    started_at_time TIME,
    ended_at_date DATE,
    ended_at_time TIME,
    member_casual VARCHAR(255),
    Weekday_ride VARCHAR(255),
    Hour_ride int
    );

LOAD DATA INFILE '202506-divvy-tripdata.csv' INTO Table 202506_tripdata
FIELDS terminated by ','
Ignore 1 Lines;

LOAD DATA INFILE '202505-divvy-tripdata.csv' INTO Table 202505_tripdata
FIELDS terminated by ','
Ignore 1 Lines;

LOAD DATA INFILE '202504-divvy-tripdata.csv' INTO Table 202504_tripdata
FIELDS terminated by ','
Ignore 1 Lines;

LOAD DATA INFILE '202503-divvy-tripdata.csv' INTO Table 202503_tripdata
FIELDS terminated by ','
Ignore 1 Lines;

LOAD DATA INFILE '202502-divvy-tripdata.csv' INTO Table 202502_tripdata
FIELDS terminated by ','
Ignore 1 Lines;

LOAD DATA INFILE '202501-divvy-tripdata.csv' INTO Table 202501_tripdata
FIELDS terminated by ','
Ignore 1 Lines;

LOAD DATA INFILE '202412-divvy-tripdata.csv' INTO Table 202412_tripdata
FIELDS terminated by ','
Ignore 1 Lines;

LOAD DATA INFILE '202411-divvy-tripdata.csv' INTO Table 202411_tripdata
FIELDS terminated by ','
Ignore 1 Lines;

LOAD DATA INFILE '202410-divvy-tripdata.csv' INTO Table 202410_tripdata
FIELDS terminated by ','
Ignore 1 Lines;

LOAD DATA INFILE '202409-divvy-tripdata.csv' INTO Table 202409_tripdata
FIELDS terminated by ','
Ignore 1 Lines;

LOAD DATA INFILE '202408-divvy-tripdata.csv' INTO Table 202408_tripdata
FIELDS terminated by ','
Ignore 1 Lines;

CREATE Table IF NOT EXISTS 2425_tripdata_combined AS 
(
	Select * From 202408_tripdata
    UNION ALL
    Select * From 202409_tripdata
    UNION ALL
    Select * From 202410_tripdata
    UNION ALL
    Select * From 202411_tripdata
    UNION ALL
    Select * From 202412_tripdata
    UNION ALL
    Select * From 202501_tripdata
    UNION ALL
    Select * From 202502_tripdata
    UNION ALL
    Select * From 202503_tripdata
    UNION ALL
	Select * From 202504_tripdata
    UNION ALL
	Select * From 202505_tripdata
    UNION ALL
	Select * From 202506_tripdata
	UNION ALL
	Select * From 202507_tripdata
);

-- checking no of rows which are 5611500

Select Count(*) From 2425_tripdata_combined;

-- checking for number of null values in all columns

SELECT
 COUNT(*) - COUNT(rideable_type) rideable_type,
 COUNT(*) - COUNT(started_at_date) started_at_date,
 COUNT(*) - COUNT(started_at_time) started_at_time,
 COUNT(*) - COUNT(ended_at_date) ended_at_time,
 COUNT(*) - COUNT(member_casual) member_casual,
 COUNT(*) - COUNT(Weekday_ride) Weekday_ride,
 Count(*) - COUNT(Hour_ride) Hour_ride
FROM 2425_tripdata_combined;

ALTER Table 2425_tripdata_combined
Add column time_taken INT;

SET SQL_SAFE_UPDATES = 0;

UPDATE 2425_tripdata_combined
SET time_taken = TIMESTAMPDIFF(MINUTE, started_at_time, ended_at_time);

SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;

UPDATE 2425_tripdata_combined
SET time_taken = time_taken + 1440
Where time_taken < 0;

SET SQL_SAFE_UPDATES = 1;

ALTER Table 2425_tripdata_combined
Add column Month_ride VARCHAR(255);

SET SQL_SAFE_UPDATES = 0;

UPDATE 2425_tripdata_combined
SET Month_ride = monthname(started_at_date);

SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM 2425_tripdata_combined
WHERE time_taken <=1;

SET SQL_SAFE_UPDATES = 1;

-- SELECT * FROM 2425_tripdata_combined
-- INTO OUTFILE 'C:\Users\1996k\Downloads\case study 1\Cyclist\2425_tripdata_combined.csv'
-- FIELDS TERMINATED BY ',' 
-- LINES TERMINATED BY '\n';

-- bikes types used by rider types

SELECT member_casual, rideable_type, COUNT(*) AS total_trips
FROM 2425_tripdata_combined
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_trips;

-- no. of trips per month

SELECT Month_ride, member_casual, COUNT(*) AS total_trips
FROM 2425_tripdata_combined
GROUP BY Month_ride, member_casual
ORDER BY member_casual;

-- no. of trips per week

SELECT Weekday_ride, member_casual, COUNT(*) AS total_trips
FROM 2425_tripdata_combined
GROUP BY Weekday_ride, member_casual
ORDER BY member_casual;

-- no. of trips per hour

SELECT Hour_ride, member_casual, COUNT(*) AS total_trips
FROM 2425_tripdata_combined
GROUP BY Hour_ride, member_casual
ORDER BY member_casual;

-- average ride_length per month

SELECT Month_ride, member_casual, AVG(time_taken) AS avg_ride_duration
FROM 2425_tripdata_combined
GROUP BY Month_ride, member_casual;

-- average ride_length per day of week

SELECT Weekday_ride, member_casual, AVG(time_taken) AS avg_ride_duration
FROM 2425_tripdata_combined
GROUP BY Weekday_ride, member_casual;

-- average ride_length per hour

SELECT Hour_ride, member_casual, AVG(time_taken) AS avg_ride_duration
FROM 2425_tripdata_combined
GROUP BY Hour_ride, member_casual;