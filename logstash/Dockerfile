ARG ELK_VERSION

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash:${ELK_VERSION}

COPY config/logstash.yml /usr/share/logstash/config/logstash.yml

# Ideally, it should copy the whole folder
COPY pipeline/logstash.conf /usr/share/logstash/pipeline/logstash.conf

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json
