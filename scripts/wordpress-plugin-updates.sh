#!/bin/bash

# Stash USCS Communications UUID
ORG_UUID="1e313ee8-0a12-4fda-b6a0-1360ea825bb6"

# Stash list of all Pantheon sites in the org
PANTHEON_SITES="$(terminus org:site:list -n ${ORG_UUID} --format=list --field=Name)"

for SITE in $PANTHEON_SITES; do
  terminus wp $SITE.dev -- plugin list --format=json > ../static/$SITE-plugins.json
done
