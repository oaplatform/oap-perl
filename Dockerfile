FROM perl:5.30.3-threaded-bullseye

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       libtry-tiny-perl

WORKDIR /

CMD ["perl5.30.3","-de0"]
