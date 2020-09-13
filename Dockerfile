# develop stage
FROM swift:5.2.5 as develop-stage
WORKDIR /app
RUN apt-get update && apt-get install -yq libssl-dev libsasl2-dev libldap2-dev libsqlite3-dev && rm -r /var/lib/apt/lists/*
CMD swift run -c release --enable-test-discovery Run serve --hostname 0.0.0.0 --env production
