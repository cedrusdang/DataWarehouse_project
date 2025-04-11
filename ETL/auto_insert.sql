-- Load dim_crash_type
COPY dim_crash_type
FROM 'raw_data/dim_crash_type.csv'
DELIMITER ','
CSV HEADER;

-- Load dim_gender
COPY dim_gender
FROM 'raw_data/dim_gender.csv'
DELIMITER ','
CSV HEADER;

-- Load dim_speed_limit
COPY dim_speed_limit
FROM 'raw_data/dim_speed_limit.csv'
DELIMITER ','
CSV HEADER;

-- Load dim_age
COPY dim_age
FROM 'raw_data/dim_age.csv'
DELIMITER ','
CSV HEADER;

-- Load dim_road_user
COPY dim_road_user
FROM 'raw_data/dim_road_user.csv'
DELIMITER ','
CSV HEADER;

-- Load dim_road_type
COPY dim_road_type
FROM 'raw_data/dim_road_type.csv'
DELIMITER ','
CSV HEADER;

-- Load dim_time
COPY dim_time
FROM 'raw_data/dim_time.csv'
DELIMITER ','
CSV HEADER;

-- Load dim_location
COPY dim_location
FROM 'raw_data/dim_location.csv'
DELIMITER ','
CSV HEADER;

-- Load fact_fatality
COPY fact_fatality
FROM 'raw_data/fact_fatality.csv'
DELIMITER ','
CSV HEADER;
