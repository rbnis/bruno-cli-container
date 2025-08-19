FROM node:24.6.0-alpine3.22

# renovate: datasource=npm depName=@usebruno/cli
ARG BRUNO_VERSION=2.9.1

RUN npm install -g @usebruno/cli@${BRUNO_VERSION}

WORKDIR /bruno

ENTRYPOINT ["bru"]
CMD ["run"]
