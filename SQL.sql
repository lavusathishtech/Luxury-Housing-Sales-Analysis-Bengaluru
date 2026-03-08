SELECT * 
FROM luxury_housing
LIMIT 10;

SELECT "Ticket_Price_Cr", COUNT(*) AS total_count
FROM luxury_housing
GROUP BY "Ticket_Price_Cr";

SELECT "Booking_Status", COUNT(*) AS total_count
FROM luxury_housing
GROUP BY "Booking_Status";

SELECT 
    "Developer_Name",
    AVG("Ticket_Price_Cr") AS "Avg_Ticket_Price_Cr"
FROM 
    luxury_housing
GROUP BY 
    "Developer_Name"
ORDER BY 
    "Avg_Ticket_Price_Cr" DESC;
	
How have luxury housing bookings changed quarter by quarter across micro-markets?

SELECT
    "Micro_Market",
    "Purchase_Quarter",
    COUNT(*) AS bookings_count
FROM luxury_housing
WHERE "Booking_Flag" = 1  -- only count bookings
GROUP BY
    "Micro_Market",
    "Purchase_Quarter"
ORDER BY
    "Micro_Market",
    "Purchase_Quarter";