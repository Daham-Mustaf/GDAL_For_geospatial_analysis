OgrInfo countries.shp

OgrInfo -ro -so countries.shp
OgrInfo -so countries.shp
OgrInfo -so countries.shp -sql " SELECT * FROM countries"

/Users/m-store/Desktop/GDAL/new

ogr2ogr countries.shp -t_srs "EPSG:4326" /Users/m-store/Desktop/GDAL/new new_count.shp
ogr2ogr/Users/m-store/Desktop/GDAL/new countries.shp -t_srs "EPSG:4326" /Users/m-store/Desktop/GDAL/new_count.shp

$ OgrInfo --formats countries.shp 
