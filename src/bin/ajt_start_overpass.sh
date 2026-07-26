OVERPASS_BIN_DIR=/opt/op/bin/                 # path to the bin directory in your Overpass installation
export OVERPASS_REPLICATE_ID=auto # use the replicate_id file from the database directory
export OVERPASS_DB_DIR=/opt/op/db/           # path to your Overpass database directory
export OVERPASS_DIFF_DIR=/opt/op/diff/         # path to the directory that will be used to store diff files
export OVERPASS_DIFF_URL=https://download.geofabrik.de/europe/britain-and-ireland-updates/         # URL of the replication source that matches the database
export OVERPASS_UPDATE_FREQUENCY=86357 # update interval in seconds (should match replication source)
export OVERPASS_META_MODE=no        # yes|no|attic - include meta data, base data only, or attic data (should match existing database or import)
export OVERPASS_AREAS=yes            # yes|no - create or skip derived area data
nohup "$OVERPASS_BIN_DIR/run_osm3s.sh" &
