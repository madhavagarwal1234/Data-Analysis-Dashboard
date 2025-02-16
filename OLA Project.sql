Create database OLA;
use ola;
#1. Retrieve all successful bookings:

create view ola.Successful_Bookings As
Select * from ola.july 
where Booking_Status = 'Success';

Select * from Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
Create view ride_distance_for_each_vehicle_type as
Select Vehicle_Type, AVG(Ride_Distance) as avg_distance from july
group by Vehicle_Type;

select * from ride_distance_for_each_vehicle_type;


#3. Get the total number of cancelled rides by customers:
Create view cancelled_rides_by_customers as
Select count(*) from july where Booking_Status = 'Canceled by Customer';

select * from cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
Create view booked_the_highest_number_of_rides as
Select Customer_ID, count(Booking_ID) as total_rides from july
group by Customer_ID
order by total_rides desc limit 5;

select * from  booked_the_highest_number_of_rides ;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create view number_of_rides_cancelled_by_drivers as
select count(*) from july
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

select * from number_of_rides_cancelled_by_drivers;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create view  maximum_and_minimum_driver_ratings_for_sedan as
Select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating from july
where Vehicle_Type = 'Prime Sedan'; 

select * from maximum_and_minimum_driver_ratings_for_sedan;
 
#7. Retrieve all rides where payment was made using UPI:
create view payment as 
select * from july where Payment_Method = 'UPI';

select * from payment;

#8. Find the average customer rating per vehicle type:
Create view avg_customer_rating as
select Vehicle_Type, avg(Customer_Rating) as avg_rating from july
group by Vehicle_Type;

select * from avg_customer_rating;

#9. Calculate the total booking value of rides completed successfully:
create view total_booking_values as
select sum(Booking_Value) as total_value from july
where Booking_Status = 'Success';

select * from total_booking_values;

#10. List all incomplete rides along with the reason:
create view incomplete_rides as
select Booking_ID, Incomplete_Rides_Reason from july
where Incomplete_Rides = 'Yes';

select * from incomplete_rides;