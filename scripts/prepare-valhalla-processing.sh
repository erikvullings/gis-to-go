#!/usr/bin/env bash

# Access the passed variable
MERGED_AREAS="$1"

echo "prepare-valhalla-processing script has started"
cp /processing/$MERGED_AREAS.osm.pbf /valhalla/$MERGED_AREAS.osm.pbf
echo "prepare-valhalla-processing script has finished"