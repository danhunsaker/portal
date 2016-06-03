#!/usr/bin/env bash
set -e

# remove any previous builds that may have failed
[ -e "./build" ] && \
  echo "Cleaning up old builds..." && \
  rm -rf "./build"

# build portal
echo "Building portal..."
gox -osarch "darwin/amd64 linux/amd64 windows/amd64" -output="./build/{{.OS}}/{{.Arch}}/portal"
