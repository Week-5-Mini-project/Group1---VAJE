DROP TABLE IF EXISTS dim_date;
DROP TABLE IF EXISTS dim_country;
DROP TABLE IF EXISTS fact_trade;


CREATE TABLE IF NOT EXISTS fact_trade(
	country_code VARCHAR(3)
	,year INT
	,life_ladder DECIMAL
	,central_government_debt DECIMAL
	,goods_exports DECIMAL
	,service_exports DECIMAL
	,goods_imports DECIMAL
	,service_imports DECIMAL
	,GDP_per_capita DECIMAL
	,GDP_growth DECIMAL
	
);

CREATE TABLE IF NOT EXISTS dim_country(
	country_code VARCHAR (3)
	,country_name TEXT
);

CREATE TABLE IF NOT EXISTS dim_date (
	year INT
);
