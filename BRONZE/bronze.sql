-- BRONZE :
-- Create BRONZE table 
CREATE TABLE BRONZE_HOTEL (
    booking_id STRING,
    hotel_id STRING,
    hotel_city STRING,
    customer_id STRING,
    customer_name STRING,
    customer_email STRING,
    check_in_date STRING,
    check_out_date STRING,
    room_type STRING,
    num_guests STRING,
    total_amount STRING,
    currency STRING,
    booking_status STRING
);

-- Load the BRONZE table using the csv file from the staging
COPY INTO BRONZE_HOTEL
FROM @STG_HOTEL_BOOKINGS 
FILE_FORMAT = (FORMAT_NAME = FF_CSV)
ON_ERROR = 'CONTINUE';

-- Ensure that the data has been loaded successfully
 SELECT * FROM BRONZE_HOTEL LIMIT 10;
