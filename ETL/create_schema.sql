DROP TABLE IF EXISTS fact_fatality;
DROP TABLE IF EXISTS dim_crash_type;
DROP TABLE IF EXISTS dim_gender;
DROP TABLE IF EXISTS dim_speed_limit;
DROP TABLE IF EXISTS dim_age;
DROP TABLE IF EXISTS dim_road_user;
DROP TABLE IF EXISTS dim_road_type;
DROP TABLE IF EXISTS dim_time;
DROP TABLE IF EXISTS dim_location;

CREATE TABLE dim_crash_type (
  crash_type_sk INT PRIMARY KEY,
  crash_type VARCHAR(10),
  fatalities_by_crash INT
);

CREATE TABLE dim_gender (
  gender_sk INT PRIMARY KEY,
  gender VARCHAR(10)
);

CREATE TABLE dim_speed_limit (
  speed_limit_sk INT PRIMARY KEY,
  speed_limit VARCHAR(10)
);

CREATE TABLE dim_age (
  age_sk INT PRIMARY KEY,
  age VARCHAR(10),
  age_group VARCHAR(15)
);

CREATE TABLE dim_road_user (
  road_user_sk INT PRIMARY KEY,
  road_user TEXT
);

CREATE TABLE dim_road_type (
  road_type_sk INT PRIMARY KEY,
  road_type TEXT
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
  population INT,  
  state_name TEXT NOT NULL
);

CREATE TABLE fact_fatality (
  fatality_sk INT PRIMARY KEY,
  crash_type_sk INT NOT NULL,
  gender_sk INT NOT NULL,
  speed_limit_sk INT NOT NULL,
  age_sk INT NOT NULL,
  road_user_sk INT NOT NULL,
  road_type_sk INT NOT NULL,
  time_sk INT NOT NULL,
  state_id VARCHAR(10) NOT NULL,
  FOREIGN KEY (crash_type_sk) REFERENCES dim_crash_type (crash_type_sk) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (gender_sk) REFERENCES dim_gender (gender_sk) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (speed_limit_sk) REFERENCES dim_speed_limit (speed_limit_sk) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (age_sk) REFERENCES dim_age (age_sk) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (road_user_sk) REFERENCES dim_road_user (road_user_sk) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (road_type_sk) REFERENCES dim_road_type (road_type_sk) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (time_sk) REFERENCES dim_time (time_sk) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (state_id) REFERENCES dim_location (state_id) ON DELETE CASCADE ON UPDATE CASCADE
);
