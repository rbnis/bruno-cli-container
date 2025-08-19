FROM node:24.6.0-alpine3.22

# renovate: datasource=npm depName=@usebruno/cli
ARG BRUNO_VERSION=2.8.0

RUN npm install -g @usebruno/cli@${BRUNO_VERSION}

WORKDIR /bruno

ENTRYPOINT ["bru"]
CMD ["run"]
