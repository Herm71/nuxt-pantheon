#!/bin/bash

# Stash USCS Communications UUID
ORG_UUID="1e313ee8-0a12-4fda-b6a0-1360ea825bb6"

# Stash list of all Pantheon sites in the org
PANTHEON_SITES="$(terminus org:site:list -n ${ORG_UUID} --format=list --field=Name)"

# while read -r PANTHEON_SITE_NAME; do
#   #PLUGINS="$(terminus wp $PANTHEON_SITE_NAME.live -- plugin list --format=json)"
#   terminus wp $PANTHEON_SITE_NAME.live -- plugin list --format=json > ../static/$PANTHEON_SITE_NAME-plugins.json
# done <<< "$PANTHEON_SITES"


for SITE in $PANTHEON_SITES; do
  #PLUGINS="$(terminus wp $PANTHEON_SITE_NAME.live -- plugin list --format=json)"
  terminus wp $SITE.live -- plugin list --format=json > ../static/$SITE-plugins.json
done
