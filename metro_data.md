I'm trying to create the minimum data set we need for the
"Find stuff near me by public transit" app
Here's what we need from the following tables:

##STOPS
-  stop_id: Use to search STOP_TIMES for trip_id. Those are the routes
    Then, you can use THOSE routes to identify which of the separated
    STOP_TIMES files to search.
-  stop_lat
-  stop_long
-  stop_name

##STOP_TIMES
-  trip_id: Foreign Key for the TRIPS table 
-  arrival_time: for calculating "how long will I be on the bus"
-  departure_time: for calculating "how long will I be on the bus"
-  stop_id: Foreign Key for STOPS table
-  stop_sequence

##TRIPS
-  trip_id
-  route_id: Foreign Key for ROUTES table

##ROUTES
-  route_id
-  route_short_name: Display for user
-  route_long_name: Display for user