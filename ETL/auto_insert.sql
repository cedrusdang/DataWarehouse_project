-- Load dim_crash_group
COPY dim_crash_group
FROM 'raw_data/dim_crash_group.csv'
DELIMITER ','
CSV HEADER;

-- Load dim_fatality_demographic
COPY dim_fatality_demographic
FROM 'raw_data/dim_fatality_demographic.csv'
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

-- Load fact_crash
COPY fact_crash
FROM 'raw_data/fact_crash.csv'
DELIMITER ','
CSV HEADER;
