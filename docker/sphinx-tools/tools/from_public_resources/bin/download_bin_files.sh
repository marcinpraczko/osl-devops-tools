#!/usr/bin/env bash

set -e

URL_PLANTUML_JAR="http://sourceforge.net/projects/plantuml/files/plantuml.1.2018.8.jar/download"
wget -c -O plantuml.jar "${URL_PLANTUML_JAR}"
