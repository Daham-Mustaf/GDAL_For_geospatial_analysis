
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


