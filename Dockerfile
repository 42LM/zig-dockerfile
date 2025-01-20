FROM alpine:latest AS builder

RUN apk update && apk add curl
ARG ZIGVER
RUN mkdir -p /zig-linux-x64_64-$ZIGVER
RUN curl https://ziglang.org/builds/zig-linux-x86_64-$ZIGVER.tar.xz -O
RUN tar xf zig-linux-x86_64-$ZIGVER.tar.xz

FROM alpine:latest

ARG ZIGVER
COPY --from=builder /zig-linux-x86_64-$ZIGVER/zig /usr/local/bin
