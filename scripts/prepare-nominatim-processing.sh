#!/usr/bin/env bash

# Access the passed variable
MERGED_AREAS="$1"

echo "prepare-nominatim-processing script has started";
cp /processing/$MERGED_AREAS.osm.pbf /nominatim-data/$MERGED_AREAS.osm.pbf
echo "prepare-nominatim-processing script has finished";