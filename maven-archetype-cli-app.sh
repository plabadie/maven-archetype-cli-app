#!/usr/bin/env bash

if [ $# -lt 2 ]; then
    echo "Usage: maven-archetype-cli-app [groupId] [artifactId]"
    exit 1
fi

mvn archetype:generate \
-DarchetypeCatalog=local \
-DarchetypeGroupId=com.plabadie \
-DarchetypeArtifactId=maven-archetype-cli-app \
-DinteractiveMode=false \
-DgroupId=$1 \
-DartifactId=$2
