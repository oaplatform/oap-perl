tcaVersion=$(grep -Po 'FROM\s+perl:\K[^-]+' Dockerfile)
tcaVersion=${tcaVersion}-%build.counter%
echo "version ${tcaVersion}"
printf "##teamcity[buildNumber '%s']\n" ${tcaVersion}