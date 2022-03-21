tcaVersion=$(grep -Po 'ENV\s+VERSION\s+\K[^\r\n]+' Dockerfile)
tcaVersion=${tcaVersion}-%build.counter%
echo "version ${tcaVersion}"
printf "##teamcity[buildNumber '%s']\n" ${tcaVersion}