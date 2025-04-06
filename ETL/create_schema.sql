DROP TABLE IF EXISTS fact_crash;
DROP TABLE IF EXISTS dim_crash_group;
DROP TABLE IF EXISTS dim_fatality_demographic;
DROP TABLE IF EXISTS dim_time;
DROP TABLE IF EXISTS dim_location;

CREATE TABLE dim_crash_group (
  crashgroup_sk INT PRIMARY KEY,
  crash_type VARCHAR(10),
  speed_limit VARCHAR(10),
  road_type TEXT,
  bus_involvement VARCHAR(10),
  heavy_rigid_truck_involvement VARCHAR(10),
  articulated_truck_involvement VARCHAR(10)
);

CREATE TABLE dim_fatality_demographic (
  fatality_demographics_sk INT PRIMARY KEY,
  road_user TEXT,
  gender VARCHAR(10),
  age_group VARCHAR(11) 
);

CREATE TABLE dim_time (
  time_sk INT PRIMARY KEY,
  time VARCHAR(10),
  dayweek VARCHAR(10),
  month VARCHAR(10),
  year VARCHAR(10)
);

CREATE TABLE dim_location (
  state_id VARCHAR(10) PRIMARY KEY,
  state_name TEXT NOT NULL,
  population INT
);

CREATE TABLE fact_crash (
  crash_sk INT PRIMARY KEY,
  crash_id INT NOT NULL,
  crashgroup_sk INT NOT NULL,
  fatality_demographics_sk INT NOT NULL,
  time_sk INT NOT NULL,
  state_id VARCHAR(10) NOT NULL,
  FOREIGN KEY (crashgroup_sk) REFERENCES dim_crash_group (crashgroup_sk) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (fatality_demographics_sk) REFERENCES dim_fatality_demographic (fatality_demographics_sk) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (time_sk) REFERENCES dim_time (time_sk) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (state_id) REFERENCES dim_location (state_id) ON DELETE CASCADE ON UPDATE CASCADE
);