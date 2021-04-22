#!/bin/bash
# Stash USCS Communications UUID
ORG_UUID="1e313ee8-0a12-4fda-b6a0-1360ea825bb6"
terminus org:site:list -n $ORG_UUID --format=list | terminus site:mass-update:list --format=json > ../static/list-updates.json
