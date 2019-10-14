FROM openjdk:8-alpine

EXPOSE 8082

HEALTHCHECK --start-period=30s \
            CMD wget --server-response --output-document=/dev/null http://localhost:8082 || exit 1

ADD install-commafeed.sh /usr/bin/
ADD commafeed.sh /
ADD default-config/config.yml /config.yml.default

RUN sh /usr/bin/install-commafeed.sh

VOLUME ["/config"]

CMD ["sh", "commafeed.sh"]