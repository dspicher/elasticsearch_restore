#!/bin/bash
set -euo pipefail
IFS=$'\n\t'


./wait-for-it.sh -t 0 21travel-sanction-search:9200

curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"type": "url", "settings": {"url": "https://gitlab.com/21analytics/sanctions-snapshot/-/raw/master/"}}' \
    http://21travel-sanction-search:9200/_snapshot/sanctions_backup

curl --request POST http://21travel-sanction-search:9200/_snapshot/sanctions_backup/snapshot_11/_restore
