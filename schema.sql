DROP TABLE IF EXISTS states_gdp;
DROP TABLE IF EXISTS states_pop;

CREATE TABLE states_gdp (
  state TEXT primary key,
  gdp INT
);

CREATE TABLE states_pop (
  state TEXT primary key,
  den_per_sqm INT,
  pop_numbers INT,
  land_sqm INT
);
