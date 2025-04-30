#!/bin/bash
mkdir -p  /opt/most-test/
wget -O /tmp/artifact.tar.gz https://github.com/Suro4ek/test-most/releases/download/latest/artifact.tar.gz
tar -xzf /tmp/artifact.tar.gz -C /opt/most-test/