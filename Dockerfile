FROM public.ecr.aws/debian/debian:bullseye-slim

ENV VERSION 0.0.1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       libtry-tiny-perl

WORKDIR /

CMD ["perl","-de0"]
