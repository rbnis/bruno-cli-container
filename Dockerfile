FROM node:25.2.1-alpine3.22

WORKDIR /bruno
RUN chown -R nobody:nobody /bruno

# renovate: datasource=npm depName=@usebruno/cli
ARG BRUNO_VERSION=2.15.1
RUN npm install -g --no-fund --no-audit @usebruno/cli@${BRUNO_VERSION}

USER nobody

ENTRYPOINT ["bru"]
CMD ["run"]
