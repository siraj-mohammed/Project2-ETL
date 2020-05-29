# ETL-Project
_Correlating between Population Density per State and GDP per Capita_
#### Alan McCabe | Chad Davis | Siraj Mohammed

## Extract:
* Original data came from the following webpages:
    *   https://en.wikipedia.org/wiki/List_of_states_and_territories_of_the_United_States_by_population_density

    * https://en.wikipedia.org/wiki/List_of_U.S._states_by_GDP_per_capita

* We used two different methods to extract the table data on these pages
    * We used Pandas read_html to web scrape the first table, population density
    * For the GDP table, we downloaded the data in a CSV and read it in our notebook


## Transform:
* read_html provided multiple tables. We needed the first table in the result object which was accessible at index 0.
* The table returned had a tuple for table headers. We renamed columns to make it easier to work with the data frame.
* We then determined which columns were needed and created a copy of the Data Frame with just those columns
* One row in the table had a footnote tag which caused erroneous data e.g. 155,959[5]. This needed to be cleaned
* We selected data for only the year 2015 to match data in both datasets
* We renamed the column in the GDP table to make it more readable

## Load:
* Connect to postgres DB
* Confirm tables
* Load data into states_db.states_pop and states_db.states_gdp
* Query DB with an inner join to bring data together
* We chose only the information needed to show Population Density per State and GDP per Capita
* Combined data sample:

|   |        state       | gdp    | den_per_sqm | pop_numbers | land_sqm  |
|:--|:------------------:|:------:|:-----------:|:-----------:|----------:|
|0  |District of Columbia| 159497 | 11011       | 672228      | 61        |
|1  |New Jersey          | 55750  | 1218        | 8958013     | 7354      |
|2  |Rhode Island        | 46356  | 1021        | 1056298     | 1034      |
