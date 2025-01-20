# zig-dockerfile dev
Build a dockerfile with zig using a master/dev version of zig.

## Usage
Build image
```sh
docker build -t zig0.14.0-dev . --build-arg ZIGVER=0.14.0-dev.2850+0ead0beb8
```

Run image
```sh
docker run -it zig0.14.0-dev sh
```
```sh
docker run --name zigdocker zig0.14.0-dev
```
