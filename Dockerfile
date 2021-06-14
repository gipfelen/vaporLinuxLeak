# develop stage
FROM swift:5.3-focal as develop-stage
WORKDIR /app
RUN apt-get update && apt-get -q dist-upgrade -y && apt-get install -yq libssl-dev libsasl2-dev libldap2-dev libsqlite3-dev libjemalloc2 && rm -r /var/lib/apt/lists/*
ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so.2
CMD MALLOC_CONF=stats_print:true swift run -c release --enable-test-discovery Run serve --hostname 0.0.0.0 --env production
