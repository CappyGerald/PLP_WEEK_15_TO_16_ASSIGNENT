--creating the Database

CREATE DATABASE social_media_users;


--Most Popular PlatForm

SELECT platform, COUNT(*) as count
FROM average_social_media_usage
GROUP BY platform
ORDER BY count DESC
LIMIT 1;

-- Average Time Spent On Social Media

SELECT AVG(time_spent) as avg_time_spent
FROM average_social_media_usage;

-- profession with the highest Average income

SELECT profession, AVG(income) as avg_income
FROM average_social_media_usage
GROUP BY profession
ORDER BY avg_income DESC
LIMIT 1;

--distribution of users owning a car across different platforms

SELECT platform, COUNT(*) as car_owners
FROM average_social_media_usage
WHERE Owns_Car = 'TRUE'
GROUP BY platform
ORDER BY car_owners DESC;


