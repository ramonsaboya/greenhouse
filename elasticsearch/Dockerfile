ARG ELK_VERSION

# https://github.com/elastic/elasticsearch-docker
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}

COPY config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

ENV TAKE_FILE_OWNERSHIP=true

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu
