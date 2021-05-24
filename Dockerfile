FROM solr:8.8.2

RUN curl -o /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/jts-core-1.16.1.jar https://repo1.maven.org/maven2/org/locationtech/jts/jts-core/1.16.1/jts-core-1.16.1.jar
