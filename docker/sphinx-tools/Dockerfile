# ============================================================================
# 2018/03 by Marcin Praczko
# ============================================================================

FROM               python:2.7.14
LABEL maintainer = "marcin.praczko@gmail.com"

# Install Sphinx-Doc
WORKDIR /pip
COPY requirements.txt /pip/
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Install Nginx for accessing Sphinx-Doc
RUN apt-get update -y \
  && apt-get install -y nginx bsdmainutils

# Install Graphviz package and sphinx-doc extension
RUN apt-get install -y libgv-python graphviz

# Remove all cache and temporary files
RUN apt-get autoremove -y \
  && rm -rf /var/cache/* \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /code
