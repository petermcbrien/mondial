-- XMLSQL log file mondial_plus.sql of executed statements

-- create feature
CREATE TABLE feature (
  name VARCHAR(32) CONSTRAINT feature_pk PRIMARY KEY,
  latitude NUMERIC(4,1) NULL 
  CONSTRAINT feature_latitude CHECK (latitude BETWEEN -90 AND 90),
  longitude NUMERIC(4,1) NULL 
  CONSTRAINT feature_longtitude CHECK (longitude BETWEEN -180 AND 180)
);

-- remove a few name conflicts between Island and Mountain
UPDATE island
SET    name=name||' Island'
WHERE  name IN (SELECT name
                FROM   island
                INTERSECT
		SELECT name
		FROM mountain);

-- populate feature
INSERT 
INTO   feature
SELECT name,latitude,longitude 
FROM   lake
UNION ALL -- Use ALL to ensure query breaks when same name found in two tables
SELECT name,NULL,NULL 
FROM   sea
UNION ALL
SELECT name,source_latitude,source_longitude
FROM   river 
UNION ALL 
SELECT name,latitude,longitude 
FROM   island
UNION ALL 
SELECT name,latitude,longitude 
FROM   mountain
UNION ALL 
SELECT name,latitude,longitude 
FROM   desert;

-- lake does not need latitude column
ALTER TABLE lake
DROP COLUMN latitude;

-- lake does not need longitude column
ALTER TABLE lake
DROP COLUMN longitude;

-- river does not need latitude column
ALTER TABLE river
DROP COLUMN source_latitude;

-- river does not need longitude column
ALTER TABLE river
DROP COLUMN source_longitude;

-- island does not need latitude column
ALTER TABLE island
DROP COLUMN latitude;

-- island does not need longitude column
ALTER TABLE island
DROP COLUMN longitude;

-- mountain does not need latitude column
ALTER TABLE mountain
DROP COLUMN latitude;

-- mountain does not need longitude column
ALTER TABLE mountain
DROP COLUMN longitude;

-- desert does not need latitude column
ALTER TABLE desert
DROP COLUMN latitude;

-- desert does not need longitude column
ALTER TABLE desert
DROP COLUMN longitude;

-- create waterbody
CREATE TABLE waterbody (
  name VARCHAR(32)
  CONSTRAINT waterbody_pk PRIMARY KEY
  CONSTRAINT waterbody_isa_feature REFERENCES feature,
  area INT NULL
);

-- populate waterbody
INSERT 
INTO   waterbody
SELECT name,area 
FROM   lake
UNION ALL -- Use ALL to ensure query breaks when same name found in two tables
SELECT name,area
FROM   sea
UNION ALL
SELECT name,area
FROM   river;

-- lake isa waterbody
ALTER TABLE lake 
ADD CONSTRAINT lake_isa_waterbody FOREIGN KEY (name) 
REFERENCES waterbody;

-- sea isa waterbody
ALTER TABLE sea 
ADD CONSTRAINT sea_isa_waterbody FOREIGN KEY (name) 
REFERENCES waterbody;

-- river isa waterbody
ALTER TABLE river 
ADD CONSTRAINT river_isa_waterbody FOREIGN KEY (name) 
REFERENCES waterbody;

-- island isa feature
ALTER TABLE island 
ADD CONSTRAINT island_isa_feature FOREIGN KEY (name) 
REFERENCES feature;

-- mountain isa feature
ALTER TABLE mountain 
ADD CONSTRAINT mountain_isa_feature FOREIGN KEY (name) 
REFERENCES feature;

-- desert isa feature
ALTER TABLE desert 
ADD CONSTRAINT desert_isa_feature FOREIGN KEY (name) 
REFERENCES feature;

-- add located by
CREATE TABLE located_by (
  city VARCHAR(35) NOT NULL,
  province VARCHAR(48) NOT NULL,
  country VARCHAR(4) NOT NULL,
  waterbody VARCHAR(32) NOT NULL
  CONSTRAINT located_by_waterbody_fk REFERENCES waterbody,  
  CONSTRAINT located_by_pk PRIMARY KEY (city,province,country,waterbody),
  CONSTRAINT located_by_city_fk 
     FOREIGN KEY (city, province, country) REFERENCES city);

-- populate located by
INSERT
INTO   located_by
SELECT city,province,country,river
FROM   located
WHERE  river IS NOT NULL
UNION
SELECT city,province,country,sea
FROM   located
WHERE  sea IS NOT NULL
UNION
SELECT city,province,country,lake
FROM   located
WHERE  lake IS NOT NULL;

-- do not need located
DROP TABLE located CASCADE;

-- river flows into
ALTER TABLE river
ADD COLUMN flows_into VARCHAR(32) NULL
CONSTRAINT river_flows_into_fk REFERENCES waterbody;

-- river flows into populate
UPDATE river
SET    flows_into=COALESCE(river,sea,lake);

-- island in waterbody
ALTER TABLE island
ADD COLUMN in_waterbody VARCHAR(32) NULL
CONSTRAINT island_in_waterbody REFERENCES waterbody;

-- river flows into populate
UPDATE island
SET    in_waterbody=COALESCE(river,sea,lake)
FROM   island_in
WHERE  island_in.island=island.name;

-- island_in not needed
DROP TABLE island_in;

-- island.in_waterbody NOT NULL
ALTER TABLE island
ALTER COLUMN in_waterbody SET NOT NULL;

-- river does not need river column
ALTER TABLE river
DROP COLUMN river;

-- river does not need sea column
ALTER TABLE river
DROP COLUMN sea;

-- river does not need lake column
ALTER TABLE river
DROP COLUMN lake;

-- river does not need area column
ALTER TABLE river
DROP COLUMN area;

-- sea does not need area column
ALTER TABLE sea
DROP COLUMN area;

-- lake does not need area column
ALTER TABLE lake
DROP COLUMN area;

-- province_has_feature
CREATE TABLE province_has_feature (
  province VARCHAR(48) NOT NULL,
  country VARCHAR(4) NOT NULL,
  feature VARCHAR(32) NOT NULL
  CONSTRAINT province_has_feature_fk REFERENCES feature,  
  CONSTRAINT province_has_feature_pk PRIMARY KEY (province,country,feature),
  CONSTRAINT province_has_feature_province_fk 
     FOREIGN KEY (province, country) REFERENCES province);

-- populate province_has_feature
INSERT
INTO   province_has_feature
SELECT province,country,river
FROM   geo_river
UNION ALL
SELECT province,country,sea
FROM   geo_sea
UNION ALL
SELECT province,country,lake
FROM   geo_lake
UNION ALL
SELECT province,country,island
FROM   geo_island
UNION ALL
SELECT province,country,mountain
FROM   geo_mountain
UNION ALL
SELECT province,country,desert
FROM   geo_desert;

-- do not need geo_sea
DROP TABLE geo_sea;

-- do not need geo_lake
DROP TABLE geo_lake;

-- do not need geo_river
DROP TABLE geo_river;

-- do not need geo_island
DROP TABLE geo_island;

-- do not need geo_mountain
DROP TABLE geo_mountain;

-- do not need geo_desert
DROP TABLE geo_desert;

-- add mountain.on_island
ALTER TABLE mountain
ADD COLUMN on_island VARCHAR(32) NULL
CONSTRAINT mountain_on_island_fk REFERENCES island;

-- populate mountain.on_island
UPDATE mountain
SET    on_island=mountain_on_island.island
FROM   mountain_on_island
WHERE  mountain_on_island.mountain=mountain.name;

-- no longer need mountain_on_island
DROP TABLE mountain_on_island;

-- add river.on_island
ALTER TABLE river
ADD COLUMN on_island VARCHAR(32) NULL
CONSTRAINT river_on_island_fk REFERENCES island;

-- populate river.on_island
UPDATE river
SET    on_island=river_on_island.island
FROM   river_on_island
WHERE  river_on_island.river=river.name;

-- no longer need river_on_island
DROP TABLE river_on_island;

-- add lake.on_island
ALTER TABLE lake
ADD COLUMN on_island VARCHAR(32) NULL
CONSTRAINT lake_on_island_fk REFERENCES island;

-- populate lake.on_island
UPDATE lake
SET    on_island=lake_on_island.island
FROM   lake_on_island
WHERE  lake_on_island.lake=lake.name;

-- no longer need lake_on_island
DROP TABLE lake_on_island;

-- add lake.river_through
ALTER TABLE lake
ADD COLUMN river_through VARCHAR(32) NULL
CONSTRAINT lake_river_through_fk REFERENCES river;

-- populate lake.river_through
UPDATE lake
SET    river_through=river_through.river
FROM   river_through
WHERE  river_through.lake=lake.name;

-- no longer need river_through
DROP TABLE river_through;

-- create mountain range
CREATE TABLE mountain_range (
  name VARCHAR(50) CONSTRAINT mountain_range_pk PRIMARY KEY);

-- range name mismatch
UPDATE river
SET    mountains='Maoke Mountains'
WHERE  mountains='Maoke Range';

-- populate mountain range from mountain and river
INSERT 
INTO   mountain_range
SELECT DISTINCT mountains 
FROM   mountain
WHERE  mountains IS NOT NULL
UNION
SELECT DISTINCT mountains 
FROM   river
WHERE  mountains IS NOT NULL;

-- mountain in range
ALTER TABLE mountain 
ADD CONSTRAINT mountain_in_mountain_range FOREIGN KEY (mountains) 
REFERENCES mountain_range;

-- river sourced from mountain range
ALTER TABLE river 
ADD CONSTRAINT river_sourced_from_mountain_range FOREIGN KEY (mountains) 
REFERENCES mountain_range;

-- add country.local_name
ALTER TABLE country
ADD COLUMN local_name VARCHAR(120) NULL;

-- country.local_name
UPDATE country
SET    local_name=country_local_name.local_name
FROM   country_local_name
WHERE  country.code=country_local_name.country;

-- country.local_name
DROP TABLE country_local_name;

-- add province.local_name
ALTER TABLE province
ADD COLUMN local_name VARCHAR(90) NULL;

-- province.local_name
UPDATE province
SET    local_name=province_local_name.local_name
FROM   province_local_name
WHERE  province.country=province_local_name.country
AND    province.name=province_local_name.province;

-- province.local_name
DROP TABLE province_local_name;

-- add city.local_name
ALTER TABLE city
ADD COLUMN local_name VARCHAR(120) NULL;

-- city.local_name
UPDATE city
SET    local_name=city_local_name.local_name
FROM   city_local_name
WHERE  city.country=city_local_name.country
AND    city.province=city_local_name.province
AND    city.name=city_local_name.city;

-- city.local_name
DROP TABLE city_local_name;

-- tidyup pointless economy records
DELETE
FROM   economy
WHERE  COALESCE(gdp,agriculture,service,industry,inflation,unemployment) IS NULL;

-- economy.gdb now manadatory
ALTER TABLE economy
ALTER COLUMN gdp SET NOT NULL;

-- tidyup pointless population records
DELETE
FROM   population
WHERE  COALESCE(population_growth,infant_mortality) IS NULL;

-- population.population_growth now manadatory
ALTER TABLE population
ALTER COLUMN population_growth SET NOT NULL;

-- tidyup pointless politics records
DELETE
FROM   politics
WHERE  COALESCE(CAST(independence AS VARCHAR(10)),was_dependent,government) IS NULL;

-- politics.government now manadatory
ALTER TABLE politics
ALTER COLUMN government SET NOT NULL;

-- tidyup river through data
UPDATE lake
SET    river_through=river
WHERE  river_through IS NULL;

-- tidyup river through data (2)
ALTER TABLE lake
DROP COLUMN river_through;

-- End of XMLSQL log