# GDAL_Introduction
GDAL is a translator library for raster and vector geospatial data formats that is released under an X/MIT style Open Source license by the Open Source Geospatial Foundation. As a library, it presents a single raster abstract data model and single vector abstract data model to the calling application for all supported formats. <br />
The  `ogrinfo` program lists various information about an OGR-supported data source to stdout (the terminal). By executing SQL statements it is also possible to edit data.<br />
# Note that:<br />
the resutls of the command lines can be found in [`ComandResultReport`](https://github.com/Daham-Mustaf/GDAL_For_-geospatial_analysis/tree/main/ComandResultReport)

```bash
$ OgrInfo countries.shp
```
List all features of all layers:
```bash
$ OgrInfo -al countries.shp 
```

For getting full information about ESRI shape fiel. we can use  `-so`
```bash
$ OgrInfo -so countries.shp
```
summary of the metadata:
```bash
$ OgrInfo -ro -so countries.shp
```
`-so` listing of individual features and show only summary information like projection, schema, feature count and extents, we can eqxtend and combine with sql quries.

```js
$ OgrInfo -so countries.shp -sql " SELECT * FROM countries"
```
Get full details for a Specific Record of an ESRI Shapefile.
```js
$ OgrInfo -so countries.shp -sql " SELECT * FROM countries" -fid 0 >firstRowRecord.txt
```
the result stored in [`firstRowRecord.txt`](https://github.com/Daham-Mustaf/GDAL_For_-geospatial_analysis/blob/main/ComandResultReport/firstRowRecord.txt)<br />
List all metadata domains available for the dataset.
```bash
$ OgrInfo -listmdd countries.shp
```
List the format drivers that are enabled.
```bash
$ OgrInfo --formats countries.shp 
```
For both these GDAL commands, the default output format is GeoTiff; if you need a different format, you must use the `-of` option and assign to it one of the outputs produced by the previous command line
```bash
 $ gdalinfo --formats
 ```
Converting an ESRI Shapefile to GeoJSON format:
```bash
$ ogr2ogr -f GeoJSON -t_srs "EPSG:4326" country.geojson countries.shp
```
Selecting features by attributes using `ogr2ogr` Select Records and Create a New Shapefile:
```js
$ ogr2ogr -sql "SELECT * FROM countries WHERE NAME='Germany'" germany.shp countries.shp
```
Count Records in an ESRI Shapefile, in countries.shp we would like to count the number of countries
```js
$ OgrInfo -sql "SELECT COUNT(NAME) AS NumberOFCountries FROM countries" countries.shp >NameOFCountries.txt
```
Count DISTINCT Records in an ESRI Shapefile:
```bash
OgrInfo -sql "SELECT COUNT(DISTINCT FIPS) FROM countries " countries.shp> DISTINCTFIPS.txt
```
Analyzing PostGIS table with `OgrInfo` use the `-fid` option just to display one record from the table:
```bash
 OgrInfo PG:"dbname='postGis' user='postgres' password='postgres'" xyz -fid 1 >xyzTable.txt
```
 Query PostGIS to get a list of Points in xyz Table:
 connect to database:
 ```bash
 postGis-# \c postGis  
 ```
 Query PostGIS Points in xyz Table:
 ```js
 postGis-# SELECT ST_AsText(geom) AS the_geom 
 FROM xyz 
 ORDER BY x DESC LIMIT 100;> xyzQury.txt
 ```

