#!/bin/bash

# setup / clear output directory
mkdir out/; rm out/*

# loop through jpg files
for f in *.jpg; do

	echo "Processing..." $f

	# get current filename
	FILEOUT=`echo $f | sed "s/.jpg/.tif/"`

	# apply the GCPs to the file
	gdal_translate -of GTiff $(python points2gcp.py) $f tmp.vrt

	# warp using a third order polynomial transformation
	gdalwarp -q -r bilinear -order 3 -co COMPRESS=NONE tmp.vrt out/$FILEOUT

# finish and tidy up
done; rm tmp.vrt