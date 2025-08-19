# Bruno Container

A minimal Docker image for running the [Bruno CLI](https://github.com/usebruno/bruno) tool.

## What is Bruno?

[Bruno](https://www.usebruno.com/) is an open-source API client for testing and managing APIs, similar to Postman but with a focus on local-first workflows and version control friendliness.

## Pre-built Images
Pre-built images are available at [ghcr.io/rbnis/bruno-cli](https://github.com/rbnis/bruno-container/pkgs/container/bruno-cli):

```sh
docker pull ghcr.io/rbnis/bruno-cli:latest
```

## Build the Image Yourself
```sh
docker build -t bruno-cli .
```

### Override Bruno Version
To use a different Bruno CLI version:
```sh
docker build --build-arg BRUNO_VERSION=2.9.0 -t bruno-cli:2.9.0 .
```

## Usage

### Run Bruno CLI
You can run any `bru` command. For example, to run a collection:
```sh
docker run --rm -v $(pwd):/bruno ghcr.io/rbnis/bruno-cli run <collection>
```

> `-v $(pwd):/bruno` mounts your current directory into the working directory of the container.

## License

This project is open-source and licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
