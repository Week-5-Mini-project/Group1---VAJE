DROP TABLE IF EXISTS dim_date;
DROP TABLE IF EXISTS dim_country;
DROP TABLE IF EXISTS fact_trade;


CREATE TABLE IF NOT EXISTS fact_trade(
	country_code TEXT
	,year INT
	,life_ladder REAL
	,central_government_debt REAL
	,goods_exports BIGINT
	,service_exports BIGINT
	,goods_imports BIGINT
	,service_imports BIGINT
	,GDP_per_capita REAL
	,GDP_growth REAL
	,unemployment_total REAL
	,itc_service_exports REAL
	,consumer_prices_inflation REAL
	,gdp REAL
	,population BIGINT
);

COPY fact_trade
FROM PROGRAM 'curl -s https://raw.githubusercontent.com/Week-5-Mini-project/Group1---VAJE/refs/heads/main/fact_trade.csv'
DELIMITER ','
CSV Header;


CREATE TABLE IF NOT EXISTS dim_country(
	country_code VARCHAR (3)
	,country_name TEXT
);

COPY dim_country
FROM PROGRAM 'curl -s https://raw.githubusercontent.com/Week-5-Mini-project/Group1---VAJE/refs/heads/main/dim_country.csv'
DELIMITER ','
CSV Header;



CREATE TABLE IF NOT EXISTS dim_date (
	year INT
);

INSERT INTO dim_date (year) 
VALUES 
    (2014), 
    (2015), 
    (2016), 
    (2017), 
    (2018), 
    (2019), 
    (2020), 
    (2021), 
    (2022);

ALTER TABLE fact_trade
ADD PRIMARY KEY(country_code, year);