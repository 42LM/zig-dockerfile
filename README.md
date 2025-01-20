# zig-dockerfile
This repo provides docker image examples that contain zig.
These docker images can be used for the purpose of creating a [Docker container github action](https://docs.github.com/en/actions/sharing-automations/creating-actions/creating-a-docker-container-action).

If you just want to use zig for building a github action and want to waive javascript completely this image might be for **YOU** 🫵!

## Usage
Build image
```sh
docker build -t zig0.13.0 . --build-arg ZIGVER=0.13.0
```

Run image
```sh
docker run -it zig0.13.0 sh
```
```sh
docker run --name zigdocker zig0.13.0
```

## Appendix
This docker image fills a tiny niche and only exists for testing purposes and github actions.

> [!CAUTION]
> > **Zig makes Docker irrelevant.** You probably do not need a Docker image to
build your Zig application, ...
> <sup>Andrew Kelley</sup>
