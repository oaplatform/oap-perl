FROM public.ecr.aws/debian/debian:bullseye-slim

ENV VERSION 0.0.1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       nano \
       curl \
       libjson-perl \
       libjson-parse-perl \
       libhttp-async-perl \
       libtry-tiny-perl \
       libdata-dump-perl \
       libdata-compare-perl

WORKDIR /

CMD ["perl","-de0"]
