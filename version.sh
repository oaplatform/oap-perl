#!/usr/bin/env bash
tcaVersion=$(grep -Po 'FROM\s+perl:\K[^-]+' Dockerfile)
printf "##teamcity[buildNumber '%s']\n" ${tcaVersion}
