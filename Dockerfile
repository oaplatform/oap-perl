FROM public.ecr.aws/debian/debian:bullseye-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       libtry-tiny-perl

WORKDIR /

CMD ["perl","-de0"]
