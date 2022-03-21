BUILD_COUNTER=$1

tcaVersion=$(grep -Po 'ENV\s+VERSION\s+\K[^\r\n]+' Dockerfile)
tcaVersion=${tcaVersion}-${BUILD_COUNTER}
echo "version ${tcaVersion}"
printf "##teamcity[buildNumber '%s']\n" ${tcaVersion}