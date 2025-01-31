FROM alpine:latest

LABEL MAINTAINER="Sebastian Zoll"

ADD ocp4upc.sh /bin/
RUN apk add --no-cache \
    curl jq graphviz bash \
    && chmod 777 /bin/ocp4upc.sh

WORKDIR /documents
VOLUME /documents

CMD ["/bin/ocp4upc.sh"]
