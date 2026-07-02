# mondial
The Mondial Database plus extra structure and data

This is a version of the <a href="http://dbis.informatik.uni-goettingen.de/Mondial">Mondial Database</a> produced by Wolfgang May. This version has been produced to give a few enhancements summarised below:
<el>
<li>Foreign keys are defined between all tables. This facilitates projects in query optimisation (which might use foreign keys to optimise queries) and in data science (where the structure of the data is important)</li>
<li>A data hierarchy is introduced to represent geographical features. Apart from making the database an example of this style of data modelling, it also allows for better structuring of the data, where for example the previous <b>located</b> table, with optional attributes for river, sea and lake, is replaced by <b>located_by</b> with a single mandatory attribute <b>waterbody</b>, with <b>river</b>, <b>sea</b> and <b>lake</b> all being subclasses of <waterbody></li>
<li>An additional table <b>country_development</b> has been added containing UN HDI data over number of years. This have been done to include an example of what is oftern called an oridinal attribute (<b>hdi_level</b>). This completes the Mondial database having examples of all four of Steven's classes of attrbutes.</li>
<li>The database is supplied as a set of four ANSI SQL files that should run on most modern SQL DBMS systems unaltered.</li>
</el>

Running the SQL files (in order) mondial_schema.sql and mondial_data.sql will recreate the original Mondial database with foreign keys added and tables named in lower case. Then running mondial_plus.sql and mondial_extra.sql give the extra tables, and restructuring described above.
