#!/usr/bin/env bash

# Access the passed variable
MERGED_AREAS="$1"

echo "cleanup-valhalla-processing script has started"
source /processing/scripts/set-environment.sh
rm /valhalla/$MERGED_AREAS.osm.pbf
echo "cleanup-valhalla-processing script has finished"