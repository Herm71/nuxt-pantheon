ORG_UUID=""
name: ucsc-communications
uuid: 1e313ee8-0a12-4fda-b6a0-1360ea825bb6
name: information-technology-services
uuid: 52348843-8ac4-45dc-9600-effecd959de8
terminus org:site:list -n information-technology-services --tag=ur --format=list | terminus site:mass-update:list --format=json > ../static/list-updates.json

terminus org:upstream:list --framework wordpress -- 52348843-8ac4-45dc-9600-effecd959de8

terminus connection:set ucsc-quarry.dev sftp && terminus connection:set crlp-ucsc.dev sftp && terminus connection:set communications-ucsc.dev sftp && terminus connection:set sustainabilityplan-ucsc.dev sftp && terminus connection:set success-ucsc.dev sftp && terminus connection:set quarry-ucsc.dev sftp && terminus connection:set ucsc-travel.dev sftp && terminus connection:set ucsc-epc.dev sftp && terminus connection:set foundersforum.dev sftp

terminus remote:wp crlp-ucsc.dev -- plugin update --all && terminus remote:wp communications-ucsc.dev -- plugin update --all && terminus remote:wp sustainabilityplan-ucsc.dev -- plugin update --all && terminus remote:wp success-ucsc.dev -- plugin update --all && terminus remote:wp quarry-ucsc.dev -- plugin update --all && terminus remote:wp ucsc-travel.dev -- plugin update --all && terminus remote:wp ucsc-epc.dev -- plugin update --all

terminus remote:wp crlp-ucsc.dev -- theme update --all && terminus remote:wp sustainabilityplan-ucsc.dev -- theme update --all && terminus remote:wp success-ucsc.dev -- theme update --all && terminus remote:wp quarry-ucsc.dev -- theme update --all && terminus remote:wp ucsc-travel.dev -- theme update --all && terminus remote:wp ucsc-epc.dev -- theme update --all

terminus env:commit crlp-ucsc.dev --message="plugin and theme  updates" && terminus env:commit communications-ucsc.dev --message="plugin and theme  updates" && terminus env:commit sustainabilityplan-ucsc.dev --message="plugin and theme  updates" && terminus env:commit success-ucsc.dev --message="plugin and theme  updates" && terminus env:commit quarry-ucsc.dev --message="plugin and theme  updates" && terminus env:commit ucsc-travel.dev --message="plugin and theme  updates" && terminus env:commit ucsc-epc.dev --message="plugin and theme  updates"

terminus env:view crlp-ucsc.test && terminus env:view communications-ucsc.test && terminus env:view sustainabilityplan-ucsc.test && terminus env:view success-ucsc.test && terminus env:view quarry-ucsc.test && terminus env:view ucsc-travel.test && terminus env:view ucsc-epc.test

terminus env:deploy crlp-ucsc.test --message="plugin and theme  updates" && terminus env:deploy sustainabilityplan-ucsc.test --message="plugin and theme  updates" && terminus env:deploy success-ucsc.test --message="plugin and theme  updates" && terminus env:deploy quarry-ucsc.test --message="plugin and theme  updates" && terminus env:deploy ucsc-travel.test --message="plugin and theme  updates" && terminus env:deploy ucsc-epc.test --message="plugin and theme  updates"

terminus env:deploy crlp-ucsc.test --note="plugin and theme  updates" && terminus env:deploy sustainabilityplan-ucsc.test --note="plugin and theme  updates" && terminus env:deploy success-ucsc.test --note="plugin and theme  updates" && terminus env:deploy quarry-ucsc.test --note="plugin and theme  updates" && terminus env:deploy ucsc-travel.test --note="plugin and theme  updates" && terminus env:deploy ucsc-epc.test --note="plugin and theme  updates"

terminus env:deploy crlp-ucsc.live --note="plugin and theme  updates" && terminus env:deploy sustainabilityplan-ucsc.live --note="plugin and theme  updates" && terminus env:deploy success-ucsc.live --note="plugin and theme  updates" && terminus env:deploy quarry-ucsc.live --note="plugin and theme  updates" && terminus env:deploy ucsc-travel.live --note="plugin and theme  updates" && terminus env:deploy ucsc-epc.live --note="plugin and theme  updates"

terminus env:clear-cache crlp-ucsc.live && terminus env:clear-cache communications-ucsc.live && terminus env:clear-cache sustainabilityplan-ucsc.live && terminus env:clear-cache success-ucsc.live && terminus env:clear-cache quarry-ucsc.live && terminus env:clear-cache ucsc-travel.live && terminus env:clear-cache ucsc-epc.live

terminus env:view crlp-ucsc.live && terminus env:view communications-ucsc.live && terminus env:view sustainabilityplan-ucsc.live && terminus env:view success-ucsc.live && terminus env:view quarry-ucsc.live && terminus env:view ucsc-travel.live && terminus env:view ucsc-epc.live
