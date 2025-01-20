# zig-dockerfile default-os-arch
Build a dockerfile with zig using a regular version of zig.
Set the **OS**, **ARCH** and **ZIG VERSION**.

## Usage
Build image
```sh
docker build -t zig0.13.0 . \
    --build-arg ZIGOS=linux \
    --build-arg ZIGARCH=aarch64 \
    --build-arg ZIGVER=0.13.0
```

Run image
```sh
docker run -it zig0.13.0 sh
```
```sh
docker run --name zigdocker zig0.13.0
```
