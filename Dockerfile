FROM public.ecr.aws/debian/debian:bullseye-slim

ENV VERSION 0.0.1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       nano \
       libjson-perl \
       libjson-parse-perl \
       libhttp-async-perl \
       libtry-tiny-perl

WORKDIR /

CMD ["perl","-de0"]
