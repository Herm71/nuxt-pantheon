#!/bin/bash

terminus org:site:list ucsc-communications --format=list | terminus site:mass-update:list --format=json > static/list-updates.json
