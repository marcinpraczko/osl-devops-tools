# ============================================================================
# 2018/03 by Marcin Praczko
# ============================================================================

FROM               python:2.7.14
LABEL maintainer = "marcin.praczko@gmail.com"

# Install Sphinx-Doc
WORKDIR /tools/pip
COPY requirements.txt /tools/pip/
RUN pip install --upgrade pip setuptools wheel \
    && pip install -r requirements.txt

# Install Nginx for accessing Sphinx-Doc
RUN apt-get update -y \
  && apt-get install -y nginx bsdmainutils

# Install Graphviz package and sphinx-doc extension
RUN apt-get install -y libgv-python graphviz

# Remove all cache and temporary files
RUN apt-get autoremove -y \
  && rm -rf /var/cache/* \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /root/.cache/

# Copy documentation from this project (This will be Build-in docs)
WORKDIR /docs
COPY docs/build/html /docs/sphinx-tools

# Copy nginx configuration
COPY cfg/nginx-default.cfg /etc/nginx/sites-available/default

# Copy bash configuration
COPY cfg/bash_profile.sh /root/.bash_profile

# == Last configuration ==

EXPOSE 80

COPY /docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

## TODO: Install PlantUML
## TODO: Move this to separate tasks outside docker and COPY
##       This file is not often updated so should be downloaded as separate task
## ERROR: Didn't wokr - was redirecting over and over
##WORKDIR /tools/
##RUN apt-get install -y default-jre
##COPY  tools/plantuml.jar /tools/
