sql_schema('/Users/ridwan/Documents/DataScience/Metis/Metis_Projects/Data/flights/sum_NjNy_2019.csv','sum_NjNy_2019')

CREATE TABLE sum_NjNy_2019 (
    DAY_OF_WEEK            numeric,
    FL_DATE                varchar,
    OP_CARRIER             varchar,
    OP_CARRIER_FL_NUM      numeric,
    ORIGIN                 varchar,
    ORIGIN_CITY_NAME       varchar,
    DEST                   varchar,
    DEST_CITY_NAME         varchar,
    CRS_DEP_TIME           numeric,
    DEP_TIME               numeric,
    DEP_DELAY              numeric,
    CRS_ARR_TIME           numeric,
    ARR_TIME               numeric,
    ARR_DELAY              numeric,
    CRS_ELAPSED_TIME       numeric,
    ACTUAL_ELAPSED_TIME    numeric,
    AIR_TIME               numeric,
    DISTANCE               numeric,
    CARRIER_DELAY          numeric,
    WEATHER_DELAY          numeric,
    NAS_DELAY              numeric,
    SECURITY_DELAY         numeric,
    LATE_AIRCRAFT_DELAY    numeric,
    DELAY                  varchar);

COPY sum_NjNy_2019
FROM '/Users/ridwan/Documents/DataScience/Metis/Metis_Projects/Data/flights/sum_NjNy_2019.csv'
DELIMITER ','
CSV HEADER;

sql_schema('/Users/ridwan/Documents/DataScience/Metis/Metis_Projects/Data/flights/june2019.csv','flights_june_2019')

CREATE TABLE flights_june_2019 (
    YEAR                   numeric,
    DAY_OF_WEEK            numeric,
    FL_DATE                varchar,
    OP_CARRIER             varchar,
    OP_CARRIER_FL_NUM      numeric,
    ORIGIN                 varchar,
    ORIGIN_CITY_NAME       varchar,
    DEST                   varchar,
    DEST_CITY_NAME         varchar,
    DEP_TIME               numeric,
    DEP_DELAY              numeric,
    ARR_TIME               numeric,
    ARR_DELAY              numeric,
    ACTUAL_ELAPSED_TIME    numeric,
    AIR_TIME               numeric,
    DISTANCE               numeric,
    CARRIER_DELAY          numeric,
    WEATHER_DELAY          numeric,
    NAS_DELAY              numeric,
    SECURITY_DELAY         numeric,
    LATE_AIRCRAFT_DELAY    numeric,
    Unnamed            numeric);

COPY flights_june_2019
FROM '/Users/ridwan/Documents/DataScience/Metis/Metis_Projects/Data/flights/june2019.csv'
DELIMITER ','
CSV HEADER;

sql_schema('/Users/ridwan/Documents/DataScience/Metis/Metis_Projects/Data/flights/july2019.csv','flights_july_2019')

CREATE TABLE flights_july_2019 (
    YEAR                   numeric,
    DAY_OF_WEEK            numeric,
    FL_DATE                varchar,
    OP_CARRIER             varchar,
    OP_CARRIER_FL_NUM      numeric,
    ORIGIN                 varchar,
    ORIGIN_CITY_NAME       varchar,
    DEST                   varchar,
    DEST_CITY_NAME         varchar,
    DEP_TIME               numeric,
    DEP_DELAY              numeric,
    ARR_TIME               numeric,
    ARR_DELAY              numeric,
    ACTUAL_ELAPSED_TIME    numeric,
    AIR_TIME               numeric,
    DISTANCE               numeric,
    CARRIER_DELAY          numeric,
    WEATHER_DELAY          numeric,
    NAS_DELAY              numeric,
    SECURITY_DELAY         numeric,
    LATE_AIRCRAFT_DELAY    numeric,
    Unnamed            numeric);

COPY flights_july_2019
FROM '/Users/ridwan/Documents/DataScience/Metis/Metis_Projects/Data/flights/july2019.csv'
DELIMITER ','
CSV HEADER;

sql_schema('/Users/ridwan/Documents/DataScience/Metis/Metis_Projects/Data/flights/aug2019.csv','flights_aug_2019')

CREATE TABLE flights_aug_2019 (
    YEAR                   numeric,
    DAY_OF_WEEK            numeric,
    FL_DATE                varchar,
    OP_CARRIER             varchar,
    OP_CARRIER_FL_NUM      numeric,
    ORIGIN                 varchar,
    ORIGIN_CITY_NAME       varchar,
    DEST                   varchar,
    DEST_CITY_NAME         varchar,
    DEP_TIME               numeric,
    DEP_DELAY              numeric,
    ARR_TIME               numeric,
    ARR_DELAY              numeric,
    ACTUAL_ELAPSED_TIME    numeric,
    AIR_TIME               numeric,
    DISTANCE               numeric,
    CARRIER_DELAY          numeric,
    WEATHER_DELAY          numeric,
    NAS_DELAY              numeric,
    SECURITY_DELAY         numeric,
    LATE_AIRCRAFT_DELAY    numeric,
    Unnamed            numeric);

COPY flights_aug_2019
FROM '/Users/ridwan/Documents/DataScience/Metis/Metis_Projects/Data/flights/aug2019.csv'
DELIMITER ','
CSV HEADER;

sql_schema('/Users/ridwan/Documents/DataScience/Metis/Metis_Projects/Data/flights/sumfall_NjNy_2019.csv','sumfall_NjNY_2019')

CREATE TABLE sumfall_NjNY_2019 (
    FL_DATE                varchar,
    OP_CARRIER             varchar,
    OP_CARRIER_FL_NUM      numeric,
    ORIGIN                 varchar,
    DEST                   varchar,
    DEP_TIME               numeric,
    DEP_DELAY              numeric,
    TAXI_OUT               numeric,
    WHEELS_OFF             numeric,
    WHEELS_ON              numeric,
    TAXI_IN                numeric,
    ARR_TIME               numeric,
    ARR_DELAY              numeric,
    ACTUAL_ELAPSED_TIME    numeric,
    AIR_TIME               numeric,
    DISTANCE               numeric,
    CARRIER_DELAY          numeric,
    WEATHER_DELAY          numeric,
    NAS_DELAY              numeric,
    SECURITY_DELAY         numeric,
    LATE_AIRCRAFT_DELAY    numeric);

COPY sumfall_NjNY_2019
FROM '/Users/ridwan/Documents/DataScience/Metis/Metis_Projects/Data/flights/sumfall_NjNy_2019.csv'
DELIMITER ','
CSV HEADER;

