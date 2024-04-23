# Use the official Elasticsearch image
FROM docker.elastic.co/elasticsearch/elasticsearch:8.5.2

# Environment settings to run Elasticsearch in a single-node mode (suitable for development)
ENV discovery.type=single-node

EXPOSE 9200 9300

# Healthcheck to make sure container is ready
HEALTHCHECK --interval=1m --timeout=3s \
  CMD curl -f http://localhost:9200/_cluster/health || exit 1
