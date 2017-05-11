#!/usr/bin/env bash
az vm list --query "[].[name,publicIps]"  -d --output tsv | awk '{ print $1 " ansible_host=" $2 }' > hosts