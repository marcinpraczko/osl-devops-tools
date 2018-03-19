# ============================================================================
# 2018/03 by Marcin Praczko
# ============================================================================

FROM               python:2.7.14
LABEL maintainer = "marcin.praczko@gmail.com"

# Install Sphinx-Doc
RUN pip install --upgrade pip \
  && pip install 'Sphinx                          == 1.7.1' \
                 'sphinxcontrib-confluencebuilder == 0.8'

# Install Nginx for accessing Sphinx-Doc
RUN apt-get update -y \
  && apt-get install -y nginx bsdmainutils

RUN apt-get autoremove -y \
  && rm -rf /var/cache/* \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /code
