EXTRACT_FILE_URL=https://download.geofabrik.de/europe/britain-and-ireland-latest.osm.pbf   # URL of the extract file to import
OVERPASS_DIFF_URL=https://download.geofabrik.de/europe/britain-and-ireland-updates/  # URL of the chosen replication source associated with the extract file
OVERPASS_BIN_DIR=/opt/op/bin/   # path to the bin directory in your Overpass installation
OVERPASS_DB_DIR=/opt/op/db/    # path to your Overpass database directory
OVERPASS_DIFF_DIR=/opt/op/diff/  # path to the directory that will be used to store diff files
OVERPASS_META_MODE=no # yes|no|attic - include meta data, base data only, or attic data
nohup "$OVERPASS_BIN_DIR/import_osm_data.sh" \
  --db-dir="$OVERPASS_DB_DIR" \
  --diff-dir="$OVERPASS_DIFF_DIR" \
  --diff-url="$OVERPASS_DIFF_URL" \
  --data-source="$EXTRACT_FILE_URL" \
  --meta="$OVERPASS_META_MODE" &
