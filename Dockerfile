FROM solr:8.8.2
ENV SOLR_USER="solr" \
  SOLR_UID="8983" \
  SOLR_GROUP="solr" \
  SOLR_GID="8983"


USER root

RUN cd /opt/solr/server/lib/ext/ && curl -O https://repo1.maven.org/maven2/org/locationtech/jts/jts-core/1.16.1/jts-core-1.16.1.jar

RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/solr/ && chmod -R +x /opt/solr/
USER solr
