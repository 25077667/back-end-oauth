FROM alpine
LABEL MAINTAINER="zxc25077667@pm.me"
LABEL AUTHOR="25077667/SCC"

WORKDIR /target

COPY --from=zxc25077667/backend-api --chown=1000:0 /src/main /target/main

USER 1000
ENTRYPOINT [ "/target/main" ]