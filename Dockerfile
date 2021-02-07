FROM elasticsearch:7.10.1

RUN bin/elasticsearch-plugin install --batch analysis-icu

ADD --chown=elasticsearch https://raw.githubusercontent.com/alephdata/aleph-elasticsearch/master/synonames.txt /usr/share/elasticsearch/config/
