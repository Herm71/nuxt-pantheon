#!/bin/bash

# Stash USCS Communications UUID
ORG_UUID="1e313ee8-0a12-4fda-b6a0-1360ea825bb6"

# Stash list of all Pantheon sites in the org
#PANTHEON_SITES="$(terminus org:site:list -n ${ORG_UUID} --format=list --field=Name)"

#PANTHEON_SITES="$(terminus org:site:list -n ${ORG_UUID} --format=json)"
# SITES_JSON = '~/Projects/nuxt-pantheon/static/ucsc-comm-sites.json'

#echo ${PANTHEON_SITES} > '~/Projects/nuxt-pantheon/static/ucsc-comm-sites.json'

terminus org:site:list -n $ORG_UUID --format=json > ../static/ucsc-comm-sites.json
