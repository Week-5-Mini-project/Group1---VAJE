# Group1
Week 5 - Mini project 

## Settting database
- Run `create_tables_script.sql` to create tables
- Import data from `dim_country.csv` to `dim_country` table
- Import data from `fact_trade.csv` to `fact_trade` table

## Database explained

### Fact_trade table
Columns: 
- `country_code` 3 character country code for indentifying the country
- `year` year of data collected
- `life_ladder` value between 0 and 10 describing happiness of people
- `central_government_debt` debt of the country, percent of GPD
- `goods_exports` US$
- `service_exports` US$
- `goods_imports` US$
- `service_imports` US$
- `gdp_per_capita` GDP / population
- `gdp_growth` percent 
- `unemployment_total_percent` percent of unemployed citizens
- `itc_service_exports` US$
- `consumer_prices_inflation` percent of inflation in consumer prices
- `gdp` gross domestic product
- `population` population of given country in given year
