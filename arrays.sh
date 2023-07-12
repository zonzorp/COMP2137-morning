#!/bin/bash

interfaces=("$(ip r |grep -v '^default'| awk '{print $3}' | sort -u)")

declare -A ipaddresses

for interface in ${interfaces[@]}; do
	ipaddresses[$interface]="$(ip r| grep -v '^default' |grep $interface |awk '{print $1}')"
	echo Found interface $interface with addresses: ${ipaddresses[$interface]}
done
