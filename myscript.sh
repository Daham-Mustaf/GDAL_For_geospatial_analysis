
OgrInfo countries.shp

OgrInfo -ro -so countries.shp
OgrInfo -so countries.shp
OgrInfo -so countries.shp -sql " SELECT * FROM countries"

/Users/m-store/Desktop/GDAL/new

ogr2ogr countries.shp -t_srs "EPSG:4326" /Users/m-store/Desktop/GDAL/new new_count.shp
ogr2ogr/Users/m-store/Desktop/GDAL/new countries.shp -t_srs "EPSG:4326" /Users/m-store/Desktop/GDAL/new_count.shp
ogr2ogr -sql "SELECT * FROM countries WHERE NAME='Germany'" germany.shp countries.shp

OgrInfo --formats countries.shp 

ogr2ogr -f GeoJSON -t_srs "EPSG:4326" country.geojson countries.shp

OgrInfo -sql "SELECT COUNT(NAME) AS NumberOFCountries FROM countries" countries.shp >NameOFCountries.txt

OgrInfo -sql "SELECT COUNT(DISTINCT FIPS) FROM countries " countries.shp> DISTINCTFIPS.txt

OgrInfo PG:"host=localhost port=5433 user='postgres' password='postgres' dbname='postGis'"

OgrInfo PG:"dbname='postGis' user='postgres'
     password='postgres'" xyz -fid 1

ogr2ogr -f PostgreSQL -sql"SELECT ST_AsText(geom) AS the_geom
   FROM xyz
   ORDER BY x DESC LIMIT 100" 
-nlt POINT
PG:"dbname='postGis' user='postgres'
     password='postgres'" xyz

ogr2ogr -f GeoJSON -t_srs EPSG:4326 pointXYZ.geojson PG:"host=localhost port=5433 user='postgres' password='postgres' dbname='postGis'" -sql"SELECT ST_AsText(geom) AS the_geom
   FROM xyz
   ORDER BY x DESC LIMIT 100" 

ogr2ogr -t_srs EPSG:4326 -f CSV -lco GEOMETRY=AS_XY
         -lco SEPARATOR=TAB warmest_hs.csv
PG:"host=localhost port=5433 user='postgres' password='postgres' dbname='postGis'"
-sql"SELECT ST_AsText(geom) AS the_geom
   FROM xyz
   ORDER BY x DESC LIMIT 100" 
ogr2ogr -f PostgreSQL -sql "SELECT COUNT(DISTINCT FIPS) FROM countries " countries.shp> DISTINCTFIPS.txt

pgsql2shp -f '/Users/m-store/Desktop/GDAL' -g 'geom'  -h 'localhost' -U 'postgres' "<query>"
"SELECT ST_AsText(geom) AS the_geom
   FROM xyz
   ORDER BY x DESC LIMIT 100" 



ogr2ogr -f "GeoJSON" xyz.geojson PG:"host=localhost port=5433 user='postgres' password='postgres' dbname='postGis'"  -sql "SELECT  *FROM xyz LIMIT 100"
