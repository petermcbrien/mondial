-- XMLSQL log file mondial_extra.sql of executed statements

-- country_other_name
INSERT INTO country_other_name VALUES ('RCB','Congo, Republic of the');
INSERT INTO country_other_name VALUES ('CV','Cabo Verde');
INSERT INTO country_other_name VALUES ('CGO','Congo, Democratic Republic of the');
INSERT INTO country_other_name VALUES ('CGO','Congo (Kinshasa)');
INSERT INTO country_other_name VALUES ('CGO','Congo (Democratic Republic of the)');
INSERT INTO country_other_name VALUES ('RCB','Congo (Brazzaville)');
INSERT INTO country_other_name VALUES ('FSM','Micronesia, Federated States of');
INSERT INTO country_other_name VALUES ('FALK','Falkland Islands (Islas Malvinas)');
INSERT INTO country_other_name VALUES ('WAG','Gambia, The');
INSERT INTO country_other_name VALUES ('ROK','Korea, South');
INSERT INTO country_other_name VALUES ('HK','Hong Kong, China (SAR)');
INSERT INTO country_other_name VALUES ('HK','Hong Kong, China');
INSERT INTO country_other_name VALUES ('ROK','Korea (Republic of)');
INSERT INTO country_other_name VALUES ('ROK','Korea (South)');
INSERT INTO country_other_name VALUES ('BRU','Brunei Darussalam');
INSERT INTO country_other_name VALUES ('R','Russian Federation');
INSERT INTO country_other_name VALUES ('IR','Iran (Islamic Republic of)');
INSERT INTO country_other_name VALUES ('MD','Moldova (Republic of)');
INSERT INTO country_other_name VALUES ('MD','Moldova (Rep. of)');
INSERT INTO country_other_name VALUES ('BOL','Bolivia (Plurinational State of)');
INSERT INTO country_other_name VALUES ('YV','Venezuela (Bolivarian Republic of)');
--INSERT INTO country_other_name VALUES ('GAZA','Palestine, State of');
INSERT INTO country_other_name VALUES ('VN','Viet Nam');
INSERT INTO country_other_name VALUES ('FSM','Micronesia (Federated States of)');
INSERT INTO country_other_name VALUES ('FSM','Micronesia (Fed. States of)');
INSERT INTO country_other_name VALUES ('LAO','Lao People''s Democratic Republic');
INSERT INTO country_other_name VALUES ('SD','Eswatini (Kingdom of)');
INSERT INTO country_other_name VALUES ('SYR','Syrian Arab Republic');
INSERT INTO country_other_name VALUES ('CI','Côte d''Ivoire');
INSERT INTO country_other_name VALUES ('EAT','Tanzania (United Republic of)');
INSERT INTO country_other_name VALUES ('TR','Türkiye');
INSERT INTO country_other_name VALUES ('MK','Macedonia (Rep. of)');

-- create country_name view
CREATE VIEW country_name AS
  SELECT code AS country,name FROM country
  UNION 
  SELECT country,other_name FROM country_other_name
  UNION 
  SELECT code,local_name FROM country WHERE local_name IS NOT NULL;

-- raw schema
CREATE SCHEMA IF NOT EXISTS raw;

-- raw cia gini
CREATE TABLE IF NOT EXISTS raw.cia_gini (
  name VARCHAR(64),
  value DECIMAL(3,1),
  date_of_information VARCHAR(9));

-- clear the import table
DELETE 
FROM   raw.cia_gini;

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('South Africa',63.0,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Namibia',59.1,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Zambia',57.1,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Sao Tome and Principe',56.3,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Eswatini',54.6,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Mozambique',54.0,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Brazil',53.9,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Hong Kong',53.9,'2016');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Botswana',53.3,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Honduras',52.1,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Angola',51.3,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Saint Lucia',51.2,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Papua New Guinea',50.9,'1996');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Guinea-Bissau',50.7,'2010 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Colombia',50.4,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Panama',49.2,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Congo, Republic of the',48.9,'2011 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Guatemala',48.3,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Costa Rica',48.0,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Benin',47.8,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Seychelles',46.8,'2013 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Cameroon',46.5,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Nicaragua',46.2,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Paraguay',46.2,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('South Sudan',46.0,'2010 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Saudi Arabia',45.9,'2013 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Singapore',45.9,'2017');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Ecuador',45.4,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Comoros',45.3,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Lesotho',44.9,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Malawi',44.7,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Guyana',44.6,'2007');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Chile',44.4,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Philippines',44.4,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Zimbabwe',44.3,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Dominican Republic',43.7,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Rwanda',43.7,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Central African Republic',43.6,'2003 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Ghana',43.5,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Chad',43.3,'2011 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Togo',43.1,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Peru',42.8,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Uganda',42.8,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Madagascar',42.6,'2012 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Cabo Verde',42.4,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Bolivia',42.2,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Congo, Democratic Republic of the',42.1,'2012 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Turkey',41.9,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Djibouti',41.6,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Cote d''Ivoire',41.5,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Argentina',41.4,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Haiti',41.1,'2012 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Qatar',41.1,'2007');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('United States',41.1,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Malaysia',41.0,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Iran',40.8,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Kenya',40.8,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Turkmenistan',40.8,'1998');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Tanzania',40.5,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Bulgaria',40.4,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Senegal',40.3,'2011 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Mali',40.1,'2001');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Micronesia, Federated States of',40.1,'2013 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Sri Lanka',39.8,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Uruguay',39.7,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Morocco',39.5,'2013 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Tuvalu',39.1,'2010 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Israel',39.0,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Montenegro',39.0,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Venezuela',39.0,'2011');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Samoa',38.7,'2013 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Burundi',38.6,'2013 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('El Salvador',38.6,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('China',38.5,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Gabon',38.0,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Cambodia',37.9,'2008 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Indonesia',37.8,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Tonga',37.6,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Vanuatu',37.6,'2010 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Russia',37.5,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Bhutan',37.4,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Lithuania',37.3,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Solomon Islands',37.1,'2013 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Mauritius',36.8,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Mexico',36.8,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Uzbekistan',36.8,'2003');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Fiji',36.7,'2013 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Yemen',36.7,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Georgia',36.4,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Laos',36.4,'2012 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Thailand',36.4,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('New Zealand',36.2,'1997');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Serbia',36.2,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Falkland Islands (Islas Malvinas)',36.0,'2015');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Romania',36.0,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Gambia, The',35.9,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Italy',35.9,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('India',35.7,'2011 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Sierra Leone',35.7,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Vietnam',35.7,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Latvia',35.6,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Korea, South',35.4,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Burkina Faso',35.3,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Liberia',35.3,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Nigeria',35.1,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Ethiopia',35.0,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Jamaica',35.0,'2016');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Macau',35.0,'2013');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Luxembourg',34.9,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('United Kingdom',34.8,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Spain',34.7,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Armenia',34.4,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Australia',34.4,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Greece',34.4,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Niger',34.3,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Sudan',34.2,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Tajikistan',34.0,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Greenland',33.9,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Portugal',33.8,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Azerbaijan',33.7,'2008');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Gaza Strip',33.7,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Guinea',33.7,'2012 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Jordan',33.7,'2010 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('West Bank',33.7,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Taiwan',33.6,'2014');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Pakistan',33.5,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Canada',33.3,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Albania',33.2,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Bosnia and Herzegovina',33.0,'2011 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Japan',32.9,'2013 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Ireland',32.8,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Nepal',32.8,'2010 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Tunisia',32.8,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Mongolia',32.7,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Switzerland',32.7,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Mauritania',32.6,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('United Arab Emirates',32.5,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Bangladesh',32.4,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Germany',31.9,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Lebanon',31.8,'2011 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('France',31.6,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Egypt',31.5,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Cyprus',31.4,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Maldives',31.3,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Burma',30.7,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Hungary',30.6,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Croatia',30.4,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Estonia',30.4,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Austria',29.7,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Poland',29.7,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Iraq',29.5,'2012 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Afghanistan',29.4,'2008');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Malta',29.2,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Kosovo',29.0,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Sweden',28.8,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Denmark',28.7,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Timor-Leste',28.7,'2014 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Netherlands',28.5,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Kyrgyzstan',27.7,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Algeria',27.6,'2011 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Kazakhstan',27.5,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Belgium',27.4,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Finland',27.4,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Norway',27.0,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Iceland',26.8,'2015 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Ukraine',26.1,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Moldova',25.7,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Belarus',25.2,'2018 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Slovakia',25.2,'2016 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Czechia',24.9,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Slovenia',24.2,'2017 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Faroe Islands',22.7,'2013 est.');

INSERT INTO raw.cia_gini(name,value,date_of_information) VALUES ('Jersey',0.3,'2014 est.');

-- raw un hdi
CREATE TABLE IF NOT EXISTS raw.un_hdi (
  country VARCHAR(64),
  hdi_level SMALLINT NULL,
  hdi DECIMAL(4,3),
  year SMALLINT,
  life_expectancy DECIMAL(4,1),
  years_of_schooling DECIMAL(3,1),
  gni_per_capita INT
);

-- clear the hdi import table
DELETE 
FROM   raw.un_hdi;

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Norway',4,0.949,2015,81.7,12.7,67614);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Australia',4,0.939,2015,82.5,13.2,42822);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Switzerland',4,0.939,2015,83.1,13.4,56364);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Germany',4,0.926,2015,81.1,13.2,45000);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Denmark',4,0.925,2015,80.4,12.7,44519);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Singapore',4,0.925,2015,83.2,11.6,78162);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Netherlands',4,0.924,2015,81.7,11.9,46326);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ireland',4,0.923,2015,81.1,12.3,43798);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iceland',4,0.921,2015,82.7,12.2,37065);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Canada',4,0.92,2015,82.2,13.1,42582);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United States',4,0.92,2015,79.2,13.2,53245);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Hong Kong, China',4,0.917,2015,84.2,11.6,54265);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('New Zealand',4,0.915,2015,82,12.5,32870);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sweden',4,0.913,2015,82.3,12.3,46251);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Liechtenstein',4,0.912,2015,80.2,12.4,75065);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United Kingdom',4,0.909,2015,80.8,13.3,37931);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Japan',4,0.903,2015,83.7,12.5,37268);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Korea (South)',4,0.901,2015,82.1,12.2,34541);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Israel',4,0.899,2015,82.6,12.8,31215);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Luxembourg',4,0.898,2015,81.9,12,62471);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('France',4,0.897,2015,82.4,11.6,38085);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belgium',4,0.896,2015,81,11.4,41243);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Finland',4,0.895,2015,81,11.2,38868);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Austria',4,0.893,2015,81.6,11.3,43609);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Slovenia',4,0.89,2015,80.6,12.1,28664);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Italy',4,0.887,2015,83.3,10.9,33573);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Spain',4,0.884,2015,82.8,9.8,32779);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Czech Republic',4,0.878,2015,78.8,12.3,28144);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Greece',4,0.866,2015,81.1,10.5,24808);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Brunei',4,0.865,2015,79,9,72843);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Estonia',4,0.865,2015,77,12.5,26362);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Andorra',4,0.858,2015,81.5,10.3,47979);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cyprus',4,0.856,2015,80.3,11.7,29459);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malta',4,0.856,2015,80.7,11.3,29500);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Qatar',4,0.856,2015,78.3,9.8,129916);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Poland',4,0.855,2015,77.6,11.9,24117);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lithuania',4,0.848,2015,73.5,12.7,26006);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Chile',4,0.847,2015,82,9.9,21665);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saudi Arabia',4,0.847,2015,74.4,9.6,51320);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Slovakia',4,0.845,2015,76.4,12.2,26764);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Portugal',4,0.843,2015,81.2,8.9,26104);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United Arab Emirates',4,0.84,2015,77.1,9.5,66203);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Hungary',4,0.836,2015,75.3,12,23394);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Latvia',4,0.83,2015,74.3,11.7,22589);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Argentina',4,0.827,2015,76.5,9.9,20945);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Croatia',4,0.827,2015,77.5,11.2,20291);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bahrain',4,0.824,2015,76.7,9.4,37236);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Montenegro',4,0.807,2015,76.4,11.3,15410);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Russian Federation',4,0.804,2015,70.3,12,23286);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Romania',4,0.802,2015,74.8,10.8,19428);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kuwait',4,0.8,2015,74.5,7.3,76075);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belarus',3,0.796,2015,71.5,12,15629);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Oman',3,0.796,2015,77,8.1,34402);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Barbados',3,0.795,2015,75.8,10.5,14952);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uruguay',3,0.795,2015,77.4,8.6,19148);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bulgaria',3,0.794,2015,74.3,10.8,16261);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kazakhstan',3,0.794,2015,69.6,11.7,22093);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bahamas',3,0.792,2015,75.6,10.9,21565);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malaysia',3,0.789,2015,74.9,10.1,24620);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Palau',3,0.788,2015,72.9,12.3,13771);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Panama',3,0.788,2015,77.8,9.9,19470);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Antigua and Barbuda',3,0.786,2015,76.2,9.2,20907);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Seychelles',3,0.782,2015,73.3,9.4,23886);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mauritius',3,0.781,2015,74.6,9.1,17948);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Trinidad and Tobago',3,0.78,2015,70.5,10.9,28049);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Costa Rica',3,0.776,2015,79.6,8.7,14006);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Serbia',3,0.776,2015,75,10.8,12202);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cuba',3,0.775,2015,79.6,11.8,7455);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iran',3,0.774,2015,75.6,8.8,16395);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Georgia',3,0.769,2015,75,12.2,8856);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Turkey',3,0.767,2015,75.5,7.9,18705);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Venezuela',3,0.767,2015,74.4,9.4,15129);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sri Lanka',3,0.766,2015,75,10.9,10789);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Kitts and Nevis',3,0.765,2015,74,8.4,22436);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Albania',3,0.764,2015,78,9.6,10252);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lebanon',3,0.763,2015,79.5,8.6,13312);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mexico',3,0.762,2015,77,8.6,16383);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Azerbaijan',3,0.759,2015,70.9,11.2,16413);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Brazil',3,0.754,2015,74.7,7.8,14145);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Grenada',3,0.754,2015,73.6,8.6,11502);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bosnia and Herzegovina',3,0.75,2015,76.6,9,10091);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Macedonia�(Rep. of)',3,0.748,2015,75.5,9.4,12405);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Algeria',3,0.745,2015,75,7.8,13533);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Armenia',3,0.743,2015,74.9,11.3,8189);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ukraine',3,0.743,2015,71.1,11.3,7361);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Jordan',3,0.741,2015,74.2,10.1,10111);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Peru',3,0.74,2015,74.8,9,11295);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Thailand',3,0.74,2015,74.6,7.9,14519);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ecuador',3,0.739,2015,76.1,8.3,10536);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('China',3,0.738,2015,76,7.6,13345);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Fiji',3,0.736,2015,70.2,10.5,8245);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mongolia',3,0.735,2015,69.8,9.8,10449);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Lucia',3,0.735,2015,75.2,9.3,9791);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Jamaica',3,0.73,2015,75.8,9.6,8350);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Colombia',3,0.727,2015,74.2,7.6,12762);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Dominica',3,0.726,2015,77.9,7.9,10096);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Suriname',3,0.725,2015,71.3,8.3,16018);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tunisia',3,0.725,2015,75,7.1,10249);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Dominican Republic',3,0.722,2015,73.7,7.7,12756);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Vincent and the Grenadines',3,0.722,2015,73,8.6,10372);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tonga',3,0.721,2015,73,11.1,5284);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Libya',3,0.716,2015,71.8,7.3,14303);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belize',3,0.706,2015,70.1,10.5,7375);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Samoa',3,0.704,2015,73.7,10.3,5372);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Maldives',3,0.701,2015,77,6.2,10383);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uzbekistan',3,0.701,2015,69.4,12,5748);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Moldova�(Rep. of)',2,0.699,2015,71.7,11.9,5026);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Botswana',2,0.698,2015,64.5,9.2,14663);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Gabon',2,0.697,2015,64.9,8.1,19044);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Paraguay',2,0.693,2015,73,8.1,8182);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Egypt',2,0.691,2015,71.3,7.1,10064);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Turkmenistan',2,0.691,2015,65.7,9.9,14026);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Indonesia',2,0.689,2015,69.1,7.9,10053);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Palestine, State of',2,0.684,2015,73.1,8.9,5256);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Viet Nam',2,0.683,2015,75.9,8,5335);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Philippines',2,0.682,2015,68.3,9.3,8395);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('El Salvador',2,0.68,2015,73.3,6.5,7732);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bolivia',2,0.674,2015,68.7,8.2,6155);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('South Africa',2,0.666,2015,57.7,10.3,12087);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kyrgyzstan',2,0.664,2015,70.8,10.8,3097);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iraq',2,0.649,2015,69.6,6.6,11608);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cabo Verde',2,0.648,2015,73.5,4.8,6049);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Morocco',2,0.647,2015,74.3,5,7195);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nicaragua',2,0.645,2015,75.2,6.5,4747);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guatemala',2,0.64,2015,72.1,6.3,7063);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Namibia',2,0.64,2015,65.1,6.7,9770);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guyana',2,0.638,2015,66.5,8.4,6884);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Micronesia�(Fed. States of)',2,0.638,2015,69.3,9.7,3291);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tajikistan',2,0.627,2015,69.6,10.4,2601);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Honduras',2,0.625,2015,73.3,6.2,4466);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('India',2,0.624,2015,68.3,6.3,5663);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bhutan',2,0.607,2015,69.9,3.1,7081);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Timor-Leste',2,0.605,2015,68.5,4.4,5371);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Vanuatu',2,0.597,2015,72.1,6.8,2805);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Congo�(Brazzaville)',2,0.592,2015,62.9,6.3,5503);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Equatorial Guinea',2,0.592,2015,57.9,5.5,21517);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kiribati',2,0.588,2015,66.2,7.8,2475);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Laos',2,0.586,2015,66.6,5.2,5049);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bangladesh',2,0.579,2015,72,5.2,3341);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ghana',2,0.579,2015,61.5,6.9,3839);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Zambia',2,0.579,2015,60.8,6.9,3464);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sao Tome and Principe',2,0.574,2015,66.6,5.3,3070);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cambodia',2,0.563,2015,68.8,4.7,3095);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nepal',2,0.558,2015,70,4.1,2337);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Myanmar',2,0.556,2015,66.1,4.7,4943);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kenya',2,0.555,2015,62.2,6.3,2881);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Pakistan',2,0.55,2015,66.4,5.1,5031);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Swaziland',1,0.541,2015,48.9,6.8,7522);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Syria',1,0.536,2015,69.7,5.1,2441);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Angola',1,0.533,2015,52.7,5,6291);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tanzania',1,0.531,2015,65.5,5.8,2467);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nigeria',1,0.527,2015,53.1,6,5443);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cameroon',1,0.518,2015,56,6.1,2894);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Papua New Guinea',1,0.516,2015,62.8,4.3,2712);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Zimbabwe',1,0.516,2015,59.2,7.7,1588);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Solomon Islands',1,0.515,2015,68.1,5.3,1561);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mauritania',1,0.513,2015,63.2,4.3,3527);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Madagascar',1,0.512,2015,65.5,6.1,1320);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Rwanda',1,0.498,2015,64.7,3.8,1617);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Comoros',1,0.497,2015,63.6,4.8,1335);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lesotho',1,0.497,2015,50.1,6.1,3319);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Senegal',1,0.494,2015,66.9,2.8,2250);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Haiti',1,0.493,2015,63.1,5.2,1657);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uganda',1,0.493,2015,59.2,5.7,1670);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sudan',1,0.49,2015,63.7,3.5,3846);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Togo',1,0.487,2015,60.2,4.7,1262);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Benin',1,0.485,2015,59.8,3.5,1979);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Yemen',1,0.482,2015,64.1,3,2300);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Afghanistan',1,0.479,2015,60.7,3.6,1871);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malawi',1,0.476,2015,63.9,4.4,1073);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('C?te d''Ivoire',1,0.474,2015,51.9,5,3163);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Djibouti',1,0.473,2015,62.3,4.1,3216);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Gambia',1,0.452,2015,60.5,3.3,1541);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ethiopia',1,0.448,2015,64.6,2.6,1523);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mali',1,0.442,2015,58.5,2.3,2218);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Congo�(Kinshasa)',1,0.435,2015,59.1,6.1,680);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Liberia',1,0.427,2015,61.2,4.4,683);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guinea-Bissau',1,0.424,2015,55.5,2.9,1369);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Eritrea',1,0.42,2015,64.2,3.9,1490);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sierra Leone',1,0.42,2015,51.3,3.3,1529);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mozambique',1,0.418,2015,55.5,3.5,1098);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('South Sudan',1,0.418,2015,56.1,4.8,1882);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guinea',1,0.414,2015,59.2,2.6,1058);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Burundi',1,0.404,2015,57.1,3,691);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Burkina Faso',1,0.402,2015,59,1.4,1537);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Chad',1,0.396,2015,51.9,2.3,1991);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Niger',1,0.353,2015,61.9,1.7,889);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Central African Republic',1,0.352,2015,51.5,4.2,587);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Norway',4,0.957,2019,82.4,12.9,66494);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ireland',4,0.955,2019,82.3,12.7,68371);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Switzerland',4,0.955,2019,83.8,13.4,69394);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Hong Kong, China (SAR)',4,0.949,2019,84.9,12.3,62985);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iceland',4,0.949,2019,83,12.8,54682);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Germany',4,0.947,2019,81.3,14.2,55314);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sweden',4,0.945,2019,82.8,12.5,54508);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Australia',4,0.944,2019,83.4,12.7,48085);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Netherlands',4,0.944,2019,82.3,12.4,57707);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Denmark',4,0.94,2019,80.9,12.6,58662);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Finland',4,0.938,2019,81.9,12.8,48511);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Singapore',4,0.938,2019,83.6,11.6,88155);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United Kingdom',4,0.932,2019,81.3,13.2,46071);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belgium',4,0.931,2019,81.6,12.1,52085);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('New Zealand',4,0.931,2019,82.3,12.8,40799);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Canada',4,0.929,2019,82.4,13.4,48527);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United States',4,0.926,2019,78.9,13.4,63826);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Austria',4,0.922,2019,81.5,12.5,56197);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Israel',4,0.919,2019,83,13,40187);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Japan',4,0.919,2019,84.6,12.9,42932);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Liechtenstein',4,0.919,2019,80.7,12.5,131032);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Slovenia',4,0.917,2019,81.3,12.7,38080);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Korea (Republic of)',4,0.916,2019,83,12.2,43044);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Luxembourg',4,0.916,2019,82.3,12.3,72712);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Spain',4,0.904,2019,83.6,10.3,40975);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('France',4,0.901,2019,82.7,11.5,47173);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Czechia',4,0.9,2019,79.4,12.7,38109);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malta',4,0.895,2019,82.5,11.3,39555);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Estonia',4,0.892,2019,78.8,13.1,36019);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Italy',4,0.892,2019,83.5,10.4,42776);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United Arab Emirates',4,0.89,2019,78,12.1,67462);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Greece',4,0.888,2019,82.2,10.6,30155);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cyprus',4,0.887,2019,81,12.2,38207);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lithuania',4,0.882,2019,75.9,13.1,35799);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Poland',4,0.88,2019,78.7,12.5,31623);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Andorra',4,0.868,2019,81.9,10.5,56000);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Latvia',4,0.866,2019,75.3,13,30282);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Portugal',4,0.864,2019,82.1,9.3,33967);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Slovakia',4,0.86,2019,77.5,12.7,32113);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Hungary',4,0.854,2019,76.9,12,31329);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saudi Arabia',4,0.854,2019,75.1,10.2,47495);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bahrain',4,0.852,2019,77.3,9.5,42522);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Chile',4,0.851,2019,80.2,10.6,23261);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Croatia',4,0.851,2019,78.5,11.4,28070);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Qatar',4,0.848,2019,80.2,9.7,92418);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Argentina',4,0.845,2019,76.7,10.9,21190);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Brunei Darussalam',4,0.838,2019,75.9,9.1,63965);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Montenegro',4,0.829,2019,76.9,11.6,21399);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Romania',4,0.828,2019,76.1,11.1,29497);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Palau',4,0.826,2019,73.9,12.5,19317);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kazakhstan',4,0.825,2019,73.6,11.9,22857);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Russian Federation',4,0.824,2019,72.6,12.2,26157);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belarus',4,0.823,2019,74.8,12.3,18546);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Turkey',4,0.82,2019,77.7,8.1,27701);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uruguay',4,0.817,2019,77.9,8.9,20064);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bulgaria',4,0.816,2019,75.1,11.4,23325);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Panama',4,0.815,2019,78.5,10.2,29558);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bahamas',4,0.814,2019,73.9,11.4,33747);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Barbados',4,0.814,2019,79.2,10.6,14936);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Oman',4,0.813,2019,77.9,9.7,25944);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Georgia',4,0.812,2019,73.8,13.1,14429);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Costa Rica',4,0.81,2019,80.3,8.7,18486);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malaysia',4,0.81,2019,76.2,10.4,27534);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kuwait',4,0.806,2019,75.5,7.3,58590);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Serbia',4,0.806,2019,76,11.2,17192);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mauritius',4,0.804,2019,75,9.5,25266);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Seychelles',3,0.796,2019,73.4,10,26903);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Trinidad and Tobago',3,0.796,2019,73.5,11,26231);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Albania',3,0.795,2019,78.6,10.1,13998);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cuba',3,0.783,2019,78.8,11.8,8621);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iran (Islamic Republic of)',3,0.783,2019,76.7,10.3,12447);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sri Lanka',3,0.782,2019,77,10.6,12707);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bosnia and Herzegovina',3,0.78,2019,77.4,9.8,14872);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Grenada',3,0.779,2019,72.4,9,15641);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mexico',3,0.779,2019,75.1,8.8,19160);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Kitts and Nevis',3,0.779,2019,74.8,8.7,25038);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ukraine',3,0.779,2019,72.1,11.4,13216);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Antigua and Barbuda',3,0.778,2019,77,9.3,20895);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Peru',3,0.777,2019,76.7,9.7,12252);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Thailand',3,0.777,2019,77.2,7.9,17781);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Armenia',3,0.776,2019,75.1,11.3,13894);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('North Macedonia',3,0.774,2019,75.8,9.8,15865);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Colombia',3,0.767,2019,77.3,8.5,14257);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Brazil',3,0.765,2019,75.9,8,14263);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('China',3,0.761,2019,76.9,8.1,16057);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ecuador',3,0.759,2019,77,8.9,11044);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Lucia',3,0.759,2019,76.2,8.5,14616);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Azerbaijan',3,0.756,2019,73,10.6,13784);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Dominican Republic',3,0.756,2019,74.1,8.1,17591);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Moldova (Republic of)',3,0.75,2019,71.9,11.7,13664);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Algeria',3,0.748,2019,76.9,8,11174);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lebanon',3,0.744,2019,78.9,8.7,14655);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Fiji',3,0.743,2019,67.4,10.9,13009);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Dominica',3,0.742,2019,78.2,8.1,11884);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Maldives',3,0.74,2019,78.9,7,17417);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tunisia',3,0.74,2019,76.7,7.2,10414);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Vincent and the Grenadines',3,0.738,2019,72.5,8.8,12378);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Suriname',3,0.738,2019,71.7,9.3,14324);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mongolia',3,0.737,2019,69.9,10.3,10839);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Botswana',3,0.735,2019,69.6,9.6,16437);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Jamaica',3,0.734,2019,74.5,9.7,9319);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Jordan',3,0.729,2019,74.5,10.5,9858);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Paraguay',3,0.728,2019,74.3,8.5,12224);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tonga',3,0.725,2019,70.9,11.2,6365);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Libya',3,0.724,2019,72.9,7.6,15688);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uzbekistan',3,0.72,2019,71.7,11.8,7142);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bolivia (Plurinational State of)',3,0.718,2019,71.5,9,8554);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Indonesia',3,0.718,2019,71.7,8.2,11459);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Philippines',3,0.718,2019,71.2,9.4,9778);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belize',3,0.716,2019,74.6,9.9,6382);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Samoa',3,0.715,2019,73.3,10.8,6309);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Turkmenistan',3,0.715,2019,68.2,10.3,14909);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Venezuela (Bolivarian Republic of)',3,0.711,2019,72.1,10.3,7045);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('South Africa',3,0.709,2019,64.1,10.2,12129);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Palestine, State of',3,0.708,2019,74.1,9.2,6417);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Egypt',3,0.707,2019,72,7.4,11466);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Marshall Islands',3,0.704,2019,74.1,10.9,5039);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Viet Nam',3,0.704,2019,75.4,8.3,7433);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Gabon',3,0.703,2019,66.5,8.7,13930);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kyrgyzstan',2,0.697,2019,71.5,11.1,4864);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Morocco',2,0.686,2019,76.7,5.6,7368);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guyana',2,0.682,2019,69.9,8.5,9455);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iraq',2,0.674,2019,70.6,7.3,10801);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('El Salvador',2,0.673,2019,73.3,6.9,8359);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tajikistan',2,0.668,2019,71.1,10.7,3954);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cabo Verde',2,0.665,2019,73,6.3,7019);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guatemala',2,0.663,2019,74.3,6.6,8494);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nicaragua',2,0.66,2019,74.5,6.9,5284);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bhutan',2,0.654,2019,71.8,4.1,10746);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Namibia',2,0.646,2019,63.7,7,9357);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('India',2,0.645,2019,69.7,6.5,6681);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Honduras',2,0.634,2019,75.3,6.6,5308);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bangladesh',2,0.632,2019,72.6,6.2,4976);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kiribati',2,0.63,2019,68.4,8,4260);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sao Tome and Principe',2,0.625,2019,70.4,6.4,3952);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Micronesia (Federated States of)',2,0.62,2019,67.9,7.8,3983);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lao People''s Democratic Republic',2,0.613,2019,67.9,5.3,7413);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Eswatini (Kingdom of)',2,0.611,2019,60.2,6.9,7919);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ghana',2,0.611,2019,64.1,7.3,5269);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Vanuatu',2,0.609,2019,70.5,7.1,3105);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Timor-Leste',2,0.606,2019,69.5,4.8,4440);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nepal',2,0.602,2019,70.8,5,3457);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kenya',2,0.601,2019,66.7,6.6,4244);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cambodia',2,0.594,2019,69.8,5,4246);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Equatorial Guinea',2,0.592,2019,58.7,5.9,13944);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Zambia',2,0.584,2019,63.9,7.2,3326);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Myanmar',2,0.583,2019,67.1,5,4961);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Angola',2,0.581,2019,61.2,5.2,6104);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Congo',2,0.574,2019,64.6,6.5,2879);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Zimbabwe',2,0.571,2019,61.5,8.5,2666);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Solomon Islands',2,0.567,2019,73,5.7,2253);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Syrian Arab Republic',2,0.567,2019,72.7,5.1,3613);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cameroon',2,0.563,2019,59.3,6.3,3581);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Pakistan',2,0.557,2019,67.3,5.2,5005);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Papua New Guinea',2,0.555,2019,64.5,4.7,4301);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Comoros',2,0.554,2019,64.3,5.1,3099);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mauritania',1,0.546,2019,64.9,4.7,5135);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Benin',1,0.545,2019,61.8,3.8,3254);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uganda',1,0.544,2019,63.4,6.2,2123);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Rwanda',1,0.543,2019,69,4.4,2155);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nigeria',1,0.539,2019,54.7,6.7,4910);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Côte d''Ivoire',1,0.538,2019,57.8,5.3,5069);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tanzania (United Republic of)',1,0.529,2019,65.5,6.1,2600);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Madagascar',1,0.528,2019,67,6.1,1596);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lesotho',1,0.527,2019,54.3,6.5,3151);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Djibouti',1,0.524,2019,67.1,4.1,5689);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Togo',1,0.515,2019,61,4.9,1602);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Senegal',1,0.512,2019,67.9,3.2,3309);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Afghanistan',1,0.511,2019,64.8,3.9,2229);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Haiti',1,0.51,2019,64,5.6,1709);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sudan',1,0.51,2019,65.3,3.8,3829);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Gambia',1,0.496,2019,62.1,3.9,2168);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ethiopia',1,0.485,2019,66.6,2.9,2207);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malawi',1,0.483,2019,64.3,4.7,1035);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Congo (Democratic Republic of the)',1,0.48,2019,60.7,6.8,1063);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guinea-Bissau',1,0.48,2019,58.3,3.6,1996);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Liberia',1,0.48,2019,64.1,4.8,1258);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guinea',1,0.477,2019,61.6,2.8,2405);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Yemen',1,0.47,2019,66.1,3.2,1594);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Eritrea',1,0.459,2019,66.3,3.9,2793);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mozambique',1,0.456,2019,60.9,3.5,1250);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Burkina Faso',1,0.452,2019,61.6,1.6,2133);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sierra Leone',1,0.452,2019,54.7,3.7,1668);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mali',1,0.434,2019,59.3,2.4,2269);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Burundi',1,0.433,2019,61.6,3.3,754);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('South Sudan',1,0.433,2019,57.9,4.8,2003);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Chad',1,0.398,2019,54.2,2.5,1555);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Central African Republic',1,0.397,2019,53.3,4.3,993);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Niger',1,0.394,2019,62.4,2.1,1201);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Switzerland',4,0.962,2021,84.0,13.9,66933);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Norway',4,0.961,2021,83.2,13.0,64660);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iceland',4,0.959,2021,82.7,13.8,55782);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Hong Kong, China (SAR)',4,0.952,2021,85.5,12.2,62607);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Australia',4,0.951,2021,84.5,12.7,49238);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Denmark',4,0.948,2021,81.4,13.0,60365);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sweden',4,0.947,2021,83.0,12.6,54489);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ireland',4,0.945,2021,82.0,11.6,76169);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Germany',4,0.942,2021,80.6,14.1,54534);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Netherlands',4,0.941,2021,81.7,12.6,55979);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Finland',4,0.940,2021,82.0,12.9,49452);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Singapore',4,0.939,2021,82.8,11.9,90919);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belgium',4,0.937,2021,81.9,12.4,52293);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('New Zealand',4,0.937,2021,82.5,12.9,44057);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Canada',4,0.936,2021,82.7,13.8,46808);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Liechtenstein',4,0.935,2021,83.3,12.5,146830);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Luxembourg',4,0.930,2021,82.6,13.0,84649);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United Kingdom',4,0.929,2021,80.7,13.4,45225);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Japan',4,0.925,2021,84.8,13.4,42274);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Korea (Republic of)',4,0.925,2021,83.7,12.5,44501);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United States',4,0.921,2021,77.2,13.7,64765);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Israel',4,0.919,2021,82.3,13.3,41524);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malta',4,0.918,2021,83.8,12.2,38884);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Slovenia',4,0.918,2021,80.7,12.8,39746);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Austria',4,0.916,2021,81.6,12.3,53619);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United Arab Emirates',4,0.911,2021,78.7,12.7,62574);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Spain',4,0.905,2021,83.0,10.6,38354);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('France',4,0.903,2021,82.5,11.6,45937);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cyprus',4,0.896,2021,81.2,12.4,38188);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Italy',4,0.895,2021,82.9,10.7,42840);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Estonia',4,0.890,2021,77.1,13.5,38048);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Czechia',4,0.889,2021,77.7,12.9,38745);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Greece',4,0.887,2021,80.1,11.4,29002);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Poland',4,0.876,2021,76.5,13.2,33034);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bahrain',4,0.875,2021,78.8,11.0,39497);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lithuania',4,0.875,2021,73.7,13.5,37931);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saudi Arabia',4,0.875,2021,76.9,11.3,46112);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Portugal',4,0.866,2021,81.0,9.6,33155);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Latvia',4,0.863,2021,73.6,13.3,32803);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Andorra',4,0.858,2021,80.4,10.6,51167);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Croatia',4,0.858,2021,77.6,12.2,30132);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Chile',4,0.855,2021,78.9,10.9,24563);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Qatar',4,0.855,2021,79.3,10.0,87134);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('San Marino',4,0.853,2021,80.9,10.8,52654);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Slovakia',4,0.848,2021,74.9,12.9,30690);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Hungary',4,0.846,2021,74.5,12.2,32789);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Argentina',4,0.842,2021,75.4,11.1,20925);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Türkiye',4,0.838,2021,76.0,8.6,31033);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Montenegro',4,0.832,2021,76.3,12.2,20839);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kuwait',4,0.831,2021,78.7,7.3,52920);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Brunei Darussalam',4,0.829,2021,74.6,9.2,64490);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Russian Federation',4,0.822,2021,69.4,12.8,27166);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Romania',4,0.821,2021,74.2,11.3,30027);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Oman',4,0.816,2021,72.5,11.7,27054);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bahamas',4,0.812,2021,71.6,12.6,30486);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kazakhstan',4,0.811,2021,69.4,12.3,23943);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Trinidad and Tobago',4,0.810,2021,73.0,11.6,23392);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Costa Rica',4,0.809,2021,77.0,8.8,19974);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uruguay',4,0.809,2021,75.4,9.0,21269);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belarus',4,0.808,2021,72.4,12.1,18849);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Panama',4,0.805,2021,76.2,10.5,26957);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malaysia',4,0.803,2021,74.9,10.6,26658);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Georgia',4,0.802,2021,71.7,12.8,14664);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mauritius',4,0.802,2021,73.6,10.4,22025);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Serbia',4,0.802,2021,74.2,11.4,19123);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Thailand',4,0.800,2021,78.7,8.7,17030);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Albania',3,0.796,2021,76.5,11.3,14131);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bulgaria',3,0.795,2021,71.8,11.4,23079);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Grenada',3,0.795,2021,74.9,9.0,13484);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Barbados',3,0.790,2021,77.6,9.9,12306);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Antigua and Barbuda',3,0.788,2021,78.5,9.3,16792);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Seychelles',3,0.785,2021,71.3,10.3,25831);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sri Lanka',3,0.782,2021,76.4,10.8,12578);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bosnia and Herzegovina',3,0.780,2021,75.3,10.5,15242);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Kitts and Nevis',3,0.777,2021,71.7,8.7,23358);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iran (Islamic Republic of)',3,0.774,2021,73.9,10.6,13001);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ukraine',3,0.773,2021,71.6,11.1,13256);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('North Macedonia',3,0.770,2021,73.8,10.2,15918);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('China',3,0.768,2021,78.2,7.6,17504);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Dominican Republic',3,0.767,2021,72.6,9.3,17990);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Moldova (Republic of)',3,0.767,2021,68.8,11.8,14875);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Palau',3,0.767,2021,66.0,12.5,13819);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cuba',3,0.764,2021,73.7,12.5,7879);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Peru',3,0.762,2021,72.4,9.9,12246);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Armenia',3,0.759,2021,72.0,11.3,13158);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mexico',3,0.758,2021,70.2,9.2,17896);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Brazil',3,0.754,2021,72.8,8.1,14370);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Colombia',3,0.752,2021,72.8,8.9,14384);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Vincent and the Grenadines',3,0.751,2021,69.6,10.8,11961);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Maldives',3,0.747,2021,79.9,7.3,15448);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Algeria',3,0.745,2021,76.4,8.1,10800);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Azerbaijan',3,0.745,2021,69.4,10.5,14257);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tonga',3,0.745,2021,71.0,11.4,6822);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Turkmenistan',3,0.745,2021,69.3,11.3,13021);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ecuador',3,0.740,2021,73.7,8.8,10312);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mongolia',3,0.739,2021,71.0,9.4,10588);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Egypt',3,0.731,2021,70.2,9.6,11732);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tunisia',3,0.731,2021,73.8,7.4,10258);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Fiji',3,0.730,2021,67.1,10.9,9980);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Suriname',3,0.730,2021,70.3,9.8,12672);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uzbekistan',3,0.727,2021,70.9,11.9,7917);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Dominica',3,0.720,2021,72.8,8.1,11488);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Jordan',3,0.720,2021,74.3,10.4,9924);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Libya',3,0.718,2021,71.9,7.6,15336);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Paraguay',3,0.717,2021,70.3,8.9,12349);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Palestine, State of',3,0.715,2021,73.5,9.9,6583);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Lucia',3,0.715,2021,71.1,8.5,12048);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guyana',3,0.714,2021,65.7,8.6,22465);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('South Africa',3,0.713,2021,62.3,11.4,12948);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Jamaica',3,0.709,2021,70.5,9.2,8834);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Samoa',3,0.707,2021,72.8,11.4,5308);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Gabon',3,0.706,2021,65.8,9.4,13367);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lebanon',3,0.706,2021,75.0,8.7,9526);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Indonesia',3,0.705,2021,67.6,8.6,11466);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Viet Nam',3,0.703,2021,73.6,8.4,7867);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Philippines',2,0.699,2021,69.3,9.0,8920);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Botswana',2,0.693,2021,61.1,10.3,16198);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bolivia (Plurinational State of)',2,0.692,2021,63.6,9.8,8111);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kyrgyzstan',2,0.692,2021,70.0,11.4,4566);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Venezuela (Bolivarian Republic of)',2,0.691,2021,70.6,11.1,4811);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iraq',2,0.686,2021,70.4,7.9,9977);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tajikistan',2,0.685,2021,71.6,11.3,4548);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belize',2,0.683,2021,70.5,8.8,6309);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Morocco',2,0.683,2021,74.0,5.9,7303);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('El Salvador',2,0.675,2021,70.7,7.2,8296);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nicaragua',2,0.667,2021,73.8,7.1,5625);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bhutan',2,0.666,2021,71.8,5.2,9438);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cabo Verde',2,0.662,2021,74.1,6.3,6230);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bangladesh',2,0.661,2021,72.4,7.4,5472);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tuvalu',2,0.641,2021,64.5,10.6,6351);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Marshall Islands',2,0.639,2021,65.3,10.9,4620);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('India',2,0.633,2021,67.2,6.7,6590);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ghana',2,0.632,2021,63.8,8.3,5745);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Micronesia (Federated States of)',2,0.628,2021,70.7,7.8,3696);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guatemala',2,0.627,2021,69.2,5.7,8723);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kiribati',2,0.624,2021,67.4,8.0,4063);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Honduras',2,0.621,2021,70.1,7.1,5298);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sao Tome and Principe',2,0.618,2021,67.6,6.2,4021);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Namibia',2,0.615,2021,59.3,7.2,8634);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lao People''s Democratic Republic',2,0.607,2021,68.1,5.4,7700);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Timor-Leste',2,0.607,2021,67.7,5.4,4461);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Vanuatu',2,0.607,2021,70.4,7.1,3085);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nepal',2,0.602,2021,68.4,5.1,3877);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Eswatini (Kingdom of)',2,0.597,2021,57.1,5.6,7679);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Equatorial Guinea',2,0.596,2021,60.6,5.9,12074);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cambodia',2,0.593,2021,69.6,5.1,4079);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Zimbabwe',2,0.593,2021,59.3,8.7,3810);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Angola',2,0.586,2021,61.6,5.4,5466);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Myanmar',2,0.585,2021,65.7,6.4,3851);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Syrian Arab Republic',2,0.577,2021,72.1,5.1,4192);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cameroon',2,0.576,2021,60.3,6.2,3621);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kenya',2,0.575,2021,61.4,6.7,4474);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Congo',2,0.571,2021,63.5,6.2,2889);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Zambia',2,0.565,2021,61.2,7.2,3218);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Solomon Islands',2,0.564,2021,70.3,5.7,2482);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Comoros',2,0.558,2021,63.4,5.1,3142);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Papua New Guinea',2,0.558,2021,65.4,4.7,4009);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mauritania',2,0.556,2021,64.4,4.9,5075);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Côte d''Ivoire',2,0.550,2021,58.6,5.2,5217);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tanzania (United Republic of)',1,0.549,2021,66.2,6.4,2664);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Pakistan',1,0.544,2021,66.1,4.5,4624);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Togo',1,0.539,2021,61.6,5.0,2167);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Haiti',1,0.535,2021,63.2,5.6,2848);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nigeria',1,0.535,2021,52.7,7.2,4790);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Rwanda',1,0.534,2021,66.1,4.4,2210);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Benin',1,0.525,2021,59.8,4.3,3409);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uganda',1,0.525,2021,62.7,5.7,2181);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lesotho',1,0.514,2021,53.1,6.0,2700);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malawi',1,0.512,2021,62.9,4.5,1466);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Senegal',1,0.511,2021,67.1,2.9,3344);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Djibouti',1,0.509,2021,62.3,4.1,5025);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sudan',1,0.508,2021,65.3,3.8,3575);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Madagascar',1,0.501,2021,64.5,5.1,1484);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Gambia',1,0.500,2021,62.1,4.6,2172);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ethiopia',1,0.498,2021,65.0,3.2,2361);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Eritrea',1,0.492,2021,66.5,4.9,1729);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guinea-Bissau',1,0.483,2021,59.7,3.6,1908);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Liberia',1,0.481,2021,60.7,5.1,1289);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Congo (Democratic Republic of the)',1,0.479,2021,59.2,7.0,1076);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Afghanistan',1,0.478,2021,62.0,3.0,1824);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sierra Leone',1,0.477,2021,60.1,4.6,1622);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guinea',1,0.465,2021,58.9,2.2,2481);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Yemen',1,0.455,2021,63.8,3.2,1314);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Burkina Faso',1,0.449,2021,59.3,2.1,2118);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mozambique',1,0.446,2021,59.3,3.2,1198);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mali',1,0.428,2021,58.9,2.3,2133);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Burundi',1,0.426,2021,61.7,3.1,732);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Central African Republic',1,0.404,2021,53.9,4.3,966);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Niger',1,0.400,2021,61.6,2.1,1240);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Chad',1,0.394,2021,52.5,2.6,1364);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('South Sudan',1,0.385,2021,55.0,5.7,768);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Switzerland',4,0.967,2022,84.3,13.9,69433);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Norway',4,0.966,2022,83.4,13.1,69190);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iceland',4,0.959,2022,82.8,13.8,54688);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Hong Kong, China (SAR)',4,0.956,2022,84.3,12.3,62486);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Denmark',4,0.952,2022,81.9,13,62019);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sweden',4,0.952,2022,83.5,12.7,56996);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Germany',4,0.95,2022,81,14.3,55340);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ireland',4,0.95,2022,82.7,11.7,87468);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Singapore',4,0.949,2022,84.1,11.9,88761);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Australia',4,0.946,2022,83.6,12.7,49257);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Netherlands',4,0.946,2022,82.5,12.6,57278);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belgium',4,0.942,2022,82.3,12.5,53644);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Finland',4,0.942,2022,82.4,12.9,49522);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Liechtenstein',4,0.942,2022,84.7,12.4,146673);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United Kingdom',4,0.94,2022,82.2,13.4,46624);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('New Zealand',4,0.939,2022,83,12.9,43665);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United Arab Emirates',4,0.937,2022,79.2,12.8,74104);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Canada',4,0.935,2022,82.8,13.9,48444);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Korea (Republic of)',4,0.929,2022,84,12.6,46026);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Luxembourg',4,0.927,2022,82.6,13,78554);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United States',4,0.927,2022,78.2,13.6,65565);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Austria',4,0.926,2022,82.4,12.3,56530);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Slovenia',4,0.926,2022,82.1,12.9,41587);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Japan',4,0.92,2022,84.8,12.7,43644);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Israel',4,0.915,2022,82.6,13.4,43588);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malta',4,0.915,2022,83.7,12.2,44464);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Spain',4,0.911,2022,83.9,10.6,40043);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('France',4,0.91,2022,83.2,11.7,47379);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cyprus',4,0.907,2022,81.9,12.4,40137);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Italy',4,0.906,2022,84.1,10.7,44284);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Estonia',4,0.899,2022,79.2,13.5,37152);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Czechia',4,0.895,2022,78.1,12.9,39945);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Greece',4,0.893,2022,80.6,11.4,31382);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bahrain',4,0.888,2022,79.2,11,48731);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Andorra',4,0.884,2022,83.6,11.6,54233);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Poland',4,0.881,2022,77,13.2,35151);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Latvia',4,0.879,2022,75.9,13.3,32083);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lithuania',4,0.879,2022,74.3,13.5,38131);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Croatia',4,0.878,2022,79.2,12.3,34324);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Qatar',4,0.875,2022,81.6,10.1,95944);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saudi Arabia',4,0.875,2022,77.9,11.3,50620);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Portugal',4,0.874,2022,82.2,9.6,35315);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('San Marino',4,0.867,2022,83.4,10.5,57687);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Chile',4,0.86,2022,79.5,11.1,24431);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Slovakia',4,0.855,2022,75.3,13,32171);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('T��rkiye',4,0.855,2022,78.5,8.8,32834);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Hungary',4,0.851,2022,75,12.2,34196);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Argentina',4,0.849,2022,76.1,11.1,22048);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kuwait',4,0.847,2022,80.3,7.4,56729);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Montenegro',4,0.844,2022,76.8,12.6,22513);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Kitts and Nevis',4,0.838,2022,72,10.8,28442);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uruguay',4,0.83,2022,78,9.1,22207);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Romania',4,0.827,2022,74.1,11.4,31641);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Antigua and Barbuda',4,0.826,2022,79.2,10.5,18784);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Brunei Darussalam',4,0.823,2022,74.6,9.2,59246);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Russian Federation',4,0.821,2022,70.1,12.4,26992);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bahamas',4,0.82,2022,74.4,12.7,32535);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Panama',4,0.82,2022,76.8,10.7,32029);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Oman',4,0.819,2022,73.9,11.9,32967);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Georgia',4,0.814,2022,71.6,12.7,15952);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Trinidad and Tobago',4,0.814,2022,74.7,11.7,22473);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Barbados',4,0.809,2022,77.7,9.9,14810);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malaysia',4,0.807,2022,76.3,10.7,27295);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Costa Rica',4,0.806,2022,77.3,8.8,20248);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Serbia',4,0.805,2022,74.1,11.5,19494);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Thailand',4,0.803,2022,79.7,8.8,16887);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kazakhstan',4,0.802,2022,69.5,12.4,22587);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Seychelles',4,0.802,2022,71.7,11.2,28386);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belarus',4,0.801,2022,73.2,12.2,18425);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bulgaria',3,0.799,2022,71.5,11.4,25921);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Palau',3,0.797,2022,65.4,13,19344);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mauritius',3,0.796,2022,74,10,23252);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Grenada',3,0.793,2022,75.3,9.9,13593);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Albania',3,0.789,2022,76.8,10.1,15293);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('China',3,0.788,2022,78.6,8.1,18025);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Armenia',3,0.786,2022,73.4,11.3,15388);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mexico',3,0.781,2022,74.8,9.2,19138);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iran (Islamic Republic of)',3,0.78,2022,74.6,10.7,14770);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sri Lanka',3,0.78,2022,76.6,11.2,11899);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bosnia and Herzegovina',3,0.779,2022,75.3,10.5,16571);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Vincent and the Grenadines',3,0.772,2022,69,11,14049);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Dominican Republic',3,0.766,2022,74.2,9.2,18653);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ecuador',3,0.765,2022,77.9,9,10693);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('North Macedonia',3,0.765,2022,73.9,10.2,16396);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cuba',3,0.764,2022,78.2,10.5,7953);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Moldova (Republic of)',3,0.763,2022,68.6,11.8,12964);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Maldives',3,0.762,2022,80.8,7.8,18847);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Peru',3,0.762,2022,73.4,10,11916);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Azerbaijan',3,0.76,2022,73.5,10.6,15018);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Brazil',3,0.76,2022,73.4,8.3,14616);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Colombia',3,0.758,2022,73.7,8.9,15014);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Libya',3,0.746,2022,72.2,7.8,19752);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Algeria',3,0.745,2022,77.1,7,10978);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Turkmenistan',3,0.744,2022,69.4,11.1,12860);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guyana',3,0.742,2022,66,8.6,35783);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mongolia',3,0.741,2022,72.7,9.4,10351);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Dominica',3,0.74,2022,73,9.2,12468);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tonga',3,0.739,2022,71.3,10.9,6360);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Jordan',3,0.736,2022,74.2,10.4,9295);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ukraine',3,0.734,2022,68.6,11.1,11416);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tunisia',3,0.732,2022,74.3,8,10297);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Marshall Islands',3,0.731,2022,65.1,12.8,6855);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Paraguay',3,0.731,2022,70.5,8.9,13161);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Fiji',3,0.729,2022,68.3,10.4,11234);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Egypt',3,0.728,2022,70.2,9.8,12361);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uzbekistan',3,0.727,2022,71.7,11.9,8056);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Viet Nam',3,0.726,2022,74.6,8.5,10814);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Lucia',3,0.725,2022,71.3,8.6,14778);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lebanon',3,0.723,2022,74.4,8.6,12313);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('South Africa',3,0.717,2022,61.5,11.6,13186);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Palestine, State of',3,0.716,2022,73.4,9.9,6936);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Indonesia',3,0.713,2022,68.3,8.6,12046);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Philippines',3,0.71,2022,72.2,9,9059);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Botswana',3,0.708,2022,65.9,10.4,14842);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Jamaica',3,0.706,2022,70.6,9.2,9695);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Samoa',3,0.702,2022,72.6,11.4,4970);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kyrgyzstan',3,0.701,2022,70.5,12,4782);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belize',3,0.7,2022,71,8.8,9242);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Venezuela (Bolivarian Republic of)',2,0.699,2022,71.1,9.6,6184);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bolivia (Plurinational State of)',2,0.698,2022,64.9,9.8,7988);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Morocco',2,0.698,2022,75,6.1,7955);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nauru',2,0.696,2022,64,9.2,14939);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Gabon',2,0.693,2022,65.7,9.6,11194);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Suriname',2,0.69,2022,70.3,8.4,12310);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bhutan',2,0.681,2022,72.2,5.8,10625);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tajikistan',2,0.679,2022,71.3,11.3,4807);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('El Salvador',2,0.674,2022,71.5,7.2,8886);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iraq',2,0.673,2022,71.3,6.8,9092);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bangladesh',2,0.67,2022,73.7,7.4,6511);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nicaragua',2,0.669,2022,74.6,7.3,5427);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cabo Verde',2,0.661,2022,74.7,6.1,7601);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tuvalu',2,0.653,2022,64.9,10.6,4754);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Equatorial Guinea',2,0.65,2022,61.2,8.3,10663);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('India',2,0.644,2022,67.7,6.6,6951);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Micronesia (Federated States of)',2,0.634,2022,70.9,7.3,3709);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guatemala',2,0.629,2022,68.7,5.7,8996);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kiribati',2,0.628,2022,67.7,9.1,3440);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Honduras',2,0.624,2022,70.7,7.3,5272);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lao People''s Democratic Republic',2,0.62,2022,69,5.9,7745);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Vanuatu',2,0.614,2022,70.5,7.2,3244);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sao Tome and Principe',2,0.613,2022,68.8,5.9,4054);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Eswatini (Kingdom of)',2,0.61,2022,56.4,5.7,8392);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Namibia',2,0.61,2022,58.1,7.2,9200);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Myanmar',2,0.608,2022,67.3,6.5,4038);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ghana',2,0.602,2022,63.9,6.4,5380);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kenya',2,0.601,2022,62.1,7.7,4808);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nepal',2,0.601,2022,70.5,4.5,4026);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cambodia',2,0.6,2022,69.9,5.2,4291);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Congo',2,0.593,2022,63.1,8.3,2903);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Angola',2,0.591,2022,61.9,5.8,5328);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cameroon',2,0.587,2022,61,6.5,3681);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Comoros',2,0.586,2022,63.7,6.2,3261);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Zambia',2,0.569,2022,61.8,7.3,3157);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Papua New Guinea',2,0.568,2022,66,4.9,3710);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Timor-Leste',2,0.566,2022,69.1,6,1629);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Solomon Islands',2,0.562,2022,70.7,5.9,2273);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Syrian Arab Republic',2,0.557,2022,72.3,5.7,3594);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Haiti',2,0.552,2022,63.7,5.6,2802);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uganda',2,0.55,2022,63.6,6.2,2241);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Zimbabwe',2,0.55,2022,59.4,8.8,2079);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nigeria',1,0.548,2022,53.6,7.6,4755);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Rwanda',1,0.548,2022,67.1,4.9,2317);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Togo',1,0.547,2022,61.6,5.6,2214);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mauritania',1,0.54,2022,64.7,4.8,5344);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Pakistan',1,0.54,2022,66.4,4.4,5374);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('C?te d''Ivoire',1,0.534,2022,58.9,4.2,5376);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tanzania (United Republic of)',1,0.532,2022,66.8,5.6,2578);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lesotho',1,0.521,2022,53,7.5,2709);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Senegal',1,0.517,2022,67.9,2.9,3464);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sudan',1,0.516,2022,65.6,3.9,3515);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Djibouti',1,0.515,2022,62.9,3.9,4875);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malawi',1,0.508,2022,62.9,5.2,1432);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Benin',1,0.504,2022,60,3.1,3406);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Gambia',1,0.495,2022,62.9,4.5,2090);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Eritrea',1,0.493,2022,66.6,5.1,1957);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ethiopia',1,0.492,2022,65.6,2.4,2369);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Liberia',1,0.487,2022,61.1,5.3,1330);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Madagascar',1,0.487,2022,65.2,4.6,1464);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guinea-Bissau',1,0.483,2022,59.9,3.7,1880);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Congo (Democratic Republic of the)',1,0.481,2022,59.7,7.2,1080);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guinea',1,0.471,2022,59,2.4,2404);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Afghanistan',1,0.462,2022,62.9,2.5,1335);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mozambique',1,0.461,2022,59.6,3.9,1219);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sierra Leone',1,0.458,2022,60.4,3.5,1613);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Burkina Faso',1,0.438,2022,59.8,2.3,2037);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Yemen',1,0.424,2022,63.7,2.8,1106);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Burundi',1,0.42,2022,62,3.3,712);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mali',1,0.41,2022,59.4,1.6,2044);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Chad',1,0.394,2022,53,2.3,1389);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Niger',1,0.394,2022,62.1,1.3,1283);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Central African Republic',1,0.387,2022,54.5,4,869);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('South Sudan',1,0.381,2022,55.6,5.7,691);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Somalia',1,0.38,2022,56.1,1.9,1072);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iceland',4,0.972,2023,82.7,13.9,69117);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Norway',4,0.97,2023,83.3,13.1,112710);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Switzerland',4,0.97,2023,84,13.9,81949);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Denmark',4,0.962,2023,81.9,13,76008);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Germany',4,0.959,2023,81.4,14.3,64053);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sweden',4,0.959,2023,83.3,12.7,66102);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Australia',4,0.958,2023,83.9,12.9,58277);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Hong Kong, China (SAR)',4,0.955,2023,85.5,12.4,69436);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Netherlands',4,0.955,2023,82.2,12.7,68344);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belgium',4,0.951,2023,82.1,12.7,63582);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ireland',4,0.949,2023,82.4,11.7,90885);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Finland',4,0.948,2023,81.9,13,57068);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Singapore',4,0.946,2023,83.7,12,111239);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United Kingdom',4,0.946,2023,81.3,13.5,54372);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United Arab Emirates',4,0.94,2023,82.9,13,71142);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Canada',4,0.939,2023,82.6,13.9,54688);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Liechtenstein',4,0.938,2023,83.6,12.4,166812);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('New Zealand',4,0.938,2023,82.1,12.9,47260);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('United States',4,0.938,2023,79.3,13.9,73650);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Korea (Republic of)',4,0.937,2023,84.3,12.7,49726);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Slovenia',4,0.931,2023,81.6,13,46361);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Austria',4,0.93,2023,82,12.4,63479);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Japan',4,0.925,2023,84.7,12.7,47775);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malta',4,0.924,2023,83.3,12.4,52155);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Luxembourg',4,0.922,2023,82.2,12.6,85461);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('France',4,0.92,2023,83.3,11.8,55060);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Israel',4,0.919,2023,82.4,13.5,48050);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Spain',4,0.918,2023,83.7,10.8,46008);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Czechia',4,0.915,2023,79.8,13,45889);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Italy',4,0.915,2023,83.7,10.8,52389);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('San Marino',4,0.915,2023,85.7,11.4,64706);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Andorra',4,0.913,2023,84,11.6,64631);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cyprus',4,0.913,2023,81.6,12.6,45394);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Greece',4,0.908,2023,81.9,11.6,35761);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Poland',4,0.906,2023,78.6,13.2,42218);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Estonia',4,0.905,2023,79.2,13.6,40881);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saudi Arabia',4,0.9,2023,78.7,11.6,50299);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bahrain',4,0.899,2023,81.3,11.1,52819);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lithuania',4,0.895,2023,76,13.6,41916);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Portugal',4,0.89,2023,82.4,9.7,41064);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Croatia',4,0.889,2023,78.6,12.1,41380);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Latvia',4,0.889,2023,76.2,13.4,37998);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Qatar',4,0.886,2023,82.4,10.8,105353);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Slovakia',4,0.88,2023,78.3,13.1,36793);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Chile',4,0.878,2023,81.2,11.3,28047);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Hungary',4,0.87,2023,77,12.3,37236);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Argentina',4,0.865,2023,77.4,11.2,25876);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Montenegro',4,0.862,2023,77.1,12.8,28026);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uruguay',4,0.862,2023,78.1,10.5,28650);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Oman',4,0.858,2023,80,11.9,36096);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Türkiye',4,0.853,2023,77.2,9,34507);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kuwait',4,0.852,2023,80.4,7.6,56612);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Antigua and Barbuda',4,0.851,2023,77.6,11.6,27387);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Seychelles',4,0.848,2023,72.9,11.2,29195);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bulgaria',4,0.845,2023,75.6,11.5,32175);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Romania',4,0.845,2023,75.9,11.6,39374);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Georgia',4,0.844,2023,74.5,12.7,20753);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Kitts and Nevis',4,0.84,2023,72.1,10.8,29105);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Panama',4,0.839,2023,79.6,10.8,34385);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Brunei Darussalam',4,0.837,2023,75.3,9.3,75827);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kazakhstan',4,0.837,2023,74.4,12.5,30989);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Costa Rica',4,0.833,2023,80.8,8.8,23417);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Serbia',4,0.833,2023,76.8,11.6,23115);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Russian Federation',4,0.832,2023,73.2,12.4,39222);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belarus',4,0.824,2023,74.4,12.3,26725);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bahamas',4,0.82,2023,74.6,12.8,30975);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malaysia',4,0.819,2023,76.7,11.1,32553);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('North Macedonia',4,0.815,2023,77.4,10.2,22128);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Armenia',4,0.811,2023,75.7,11.3,20221);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Barbados',4,0.811,2023,76.2,9.9,17328);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Albania',4,0.81,2023,79.6,10.2,17627);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Trinidad and Tobago',4,0.807,2023,73.5,10.8,27000);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mauritius',4,0.806,2023,74.9,10.1,27280);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bosnia and Herzegovina',4,0.804,2023,77.9,11,19827);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iran (Islamic Republic of)',3,0.799,2023,77.7,10.8,16096);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Vincent and the Grenadines',3,0.798,2023,71.2,11.3,17247);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Thailand',3,0.798,2023,76.4,9,20570);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('China',3,0.797,2023,78,8,22029);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Peru',3,0.794,2023,77.7,10.2,14339);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Grenada',3,0.791,2023,75.2,9.4,14349);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Azerbaijan',3,0.789,2023,74.4,11.1,20668);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mexico',3,0.789,2023,75.1,9.3,21813);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Colombia',3,0.788,2023,77.7,9,18666);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Brazil',3,0.786,2023,75.8,8.4,18011);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Palau',3,0.786,2023,69.3,13.3,16035);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Moldova (Republic of)',3,0.785,2023,71.2,11.8,15867);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ukraine',3,0.779,2023,73.4,11.1,16933);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ecuador',3,0.777,2023,77.4,9,13986);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Dominican Republic',3,0.776,2023,73.7,9.4,22024);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guyana',3,0.776,2023,70.2,8.7,46959);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sri Lanka',3,0.776,2023,77.5,10.8,12616);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tonga',3,0.769,2023,72.9,10.9,7438);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Maldives',3,0.766,2023,81,7.4,19317);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Viet Nam',3,0.766,2023,74.6,9,13033);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Turkmenistan',3,0.764,2023,70.1,11.2,17716);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Algeria',3,0.763,2023,76.3,7.4,15114);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cuba',3,0.762,2023,78.1,10.6,8415);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Dominica',3,0.761,2023,71.1,10.1,16001);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Paraguay',3,0.756,2023,73.8,8.9,15252);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Egypt',3,0.754,2023,71.6,10.1,16218);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Jordan',3,0.754,2023,77.8,10.2,9222);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lebanon',3,0.752,2023,77.8,10.4,11299);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Saint Lucia',3,0.748,2023,72.7,8.6,20900);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mongolia',3,0.747,2023,71.7,9.4,14787);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tunisia',3,0.746,2023,76.5,7.6,12011);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('South Africa',3,0.741,2023,66.1,11.6,13694);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uzbekistan',3,0.74,2023,72.4,11.9,8826);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bolivia (Plurinational State of)',3,0.733,2023,68.6,10,9445);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Gabon',3,0.733,2023,68.3,9.7,18854);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Marshall Islands',3,0.733,2023,66.9,11.6,7224);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Botswana',3,0.731,2023,69.2,10.5,16984);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Fiji',3,0.731,2023,67.3,10.4,12843);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Indonesia',3,0.728,2023,71.1,8.7,13700);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Suriname',3,0.722,2023,73.6,8.4,17344);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Belize',3,0.721,2023,73.6,8.8,12343);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Libya',3,0.721,2023,69.3,7.8,19831);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Jamaica',3,0.72,2023,71.5,10,10057);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kyrgyzstan',3,0.72,2023,71.7,12.1,6078);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Philippines',3,0.72,2023,69.8,10,10731);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Morocco',3,0.71,2023,75.3,6.2,8653);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Venezuela (Bolivarian Republic of)',3,0.709,2023,72.5,9.7,7157);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Samoa',3,0.708,2023,71.7,11.3,5952);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nicaragua',3,0.706,2023,74.9,9.9,6881);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nauru',3,0.703,2023,62.1,9.4,19642);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bhutan',2,0.698,2023,73,5.8,13843);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Eswatini (Kingdom of)',2,0.695,2023,64.1,8.7,9919);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Iraq',2,0.695,2023,72.3,6.8,12654);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tajikistan',2,0.691,2023,71.8,11.3,5747);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tuvalu',2,0.689,2023,67.1,10.8,7006);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Bangladesh',2,0.685,2023,74.7,6.8,8498);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('India',2,0.685,2023,72,6.9,9047);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('El Salvador',2,0.678,2023,72.1,7.3,10595);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Equatorial Guinea',2,0.674,2023,63.7,8.3,12762);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Palestine, State of',2,0.674,2023,65.2,10.1,6547);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cabo Verde',2,0.668,2023,76.1,6.1,8165);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Namibia',2,0.665,2023,67.4,7.3,10917);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guatemala',2,0.662,2023,72.6,5.8,12459);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Congo',2,0.649,2023,65.8,8.3,5903);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Honduras',2,0.645,2023,72.9,7.5,6065);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kiribati',2,0.644,2023,66.5,9.1,4947);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sao Tome and Principe',2,0.637,2023,69.7,6,5583);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Timor-Leste',2,0.634,2023,67.7,6.2,5435);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ghana',2,0.628,2023,65.5,7.1,6846);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Kenya',2,0.628,2023,63.6,8.6,5608);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nepal',2,0.622,2023,70.4,4.5,4726);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Vanuatu',2,0.621,2023,71.5,7.2,3404);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lao People''s Democratic Republic',2,0.617,2023,69,6.1,8106);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Angola',2,0.616,2023,64.6,6,6631);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Micronesia (Federated States of)',2,0.615,2023,67.2,7.3,4246);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Myanmar',2,0.609,2023,66.9,6.4,4919);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cambodia',2,0.606,2023,70.7,5.2,4931);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Comoros',2,0.603,2023,66.8,6,3481);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Zimbabwe',2,0.598,2023,62.8,8.9,3511);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Zambia',2,0.595,2023,66.3,7.4,3447);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Cameroon',2,0.588,2023,63.7,6.6,4746);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Solomon Islands',2,0.584,2023,70.5,5.9,2777);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Côte d''Ivoire',2,0.582,2023,61.9,4.9,6735);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Uganda',2,0.582,2023,68.3,6.3,2736);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Rwanda',2,0.578,2023,67.8,4.9,2971);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Papua New Guinea',2,0.576,2023,66.1,5,3971);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Togo',2,0.571,2023,62.7,5.9,2856);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Syrian Arab Republic',2,0.564,2023,72.1,5.9,3918);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mauritania',2,0.563,2023,68.5,4.9,6267);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Nigeria',2,0.56,2023,54.5,7.6,5569);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Tanzania (United Republic of)',2,0.555,2023,67,6.1,3515);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Haiti',2,0.554,2023,64.9,5.4,2935);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Lesotho',2,0.55,2023,57.4,7.7,3029);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Pakistan',1,0.544,2023,67.6,4.3,5501);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Senegal',1,0.53,2023,68.7,2.9,4202);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Gambia',1,0.524,2023,65.9,4.7,2812);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Congo (Democratic Republic of the)',1,0.522,2023,61.9,7.4,1431);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Malawi',1,0.517,2023,67.4,5.2,1634);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Benin',1,0.515,2023,60.8,3.2,3806);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guinea-Bissau',1,0.514,2023,64.1,3.7,2403);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Djibouti',1,0.513,2023,66,4,6368);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sudan',1,0.511,2023,66.3,4,2810);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Liberia',1,0.51,2023,62.2,6.2,1538);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Eritrea',1,0.503,2023,68.6,5.1,2029);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Guinea',1,0.5,2023,60.7,2.5,3494);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Ethiopia',1,0.497,2023,67.3,2.4,2796);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Afghanistan',1,0.496,2023,66,2.5,1972);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mozambique',1,0.493,2023,63.6,4.6,1356);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Madagascar',1,0.487,2023,63.6,4.6,1656);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Yemen',1,0.47,2023,69.3,5.5,1018);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Sierra Leone',1,0.467,2023,61.8,3.5,1714);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Burkina Faso',1,0.459,2023,61.1,2.3,2391);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Burundi',1,0.439,2023,63.7,3.5,859);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Mali',1,0.419,2023,60.4,1.6,2342);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Niger',1,0.419,2023,61.2,1.4,1590);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Chad',1,0.416,2023,55.1,2.3,1748);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Central African Republic',1,0.414,2023,57.4,4,1100);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('Somalia',1,0.404,2023,58.8,1.9,1475);

INSERT INTO raw.un_hdi(country,hdi_level,hdi,year,life_expectancy,years_of_schooling,gni_per_capita) VALUES ('South Sudan',1,0.388,2023,57.6,5.7,688);

-- create country development we
CREATE TABLE IF NOT EXISTS country_development (
  country VARCHAR(4)
  CONSTRAINT country_development_of_country_fk REFERENCES country,
  year INT,
  hdi_level INT NOT NULL,
  hdi FLOAT NOT NULL,
  --gini DECIMAL(3,1) NULL,
  --gini_year SMALLINT NULL,
  life_expectancy FLOAT NOT NULL,
  years_of_schooling FLOAT NOT NULL,
  gni_per_capita INT NOT NULL,
  CONSTRAINT country_hdi_pk PRIMARY KEY (country,year),
  CONSTRAINT country_hdi_level CHECK (hdi_level BETWEEN 1 AND 4)
);

-- populate country hdi
INSERT INTO country_development(country,year,hdi_level,hdi,life_expectancy,
         years_of_schooling,gni_per_capita)
  SELECT country_name.country,
         year,
         hdi_level,
         hdi,
         life_expectancy,
         years_of_schooling,
         gni_per_capita
  FROM   raw.un_hdi JOIN
         country_name
         ON country_name.name=raw.un_hdi.country;

SELECT country
  FROM   raw.un_hdi
  WHERE  country NOT IN (SELECT name FROM country_name);

-- End of XMLSQL log