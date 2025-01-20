FROM alpine:latest AS builder

RUN apk update && apk add curl
ARG ZIGOS
ARG ZIGARCH
ARG ZIGVER
RUN mkdir -p /zig-$ZIGOS-$ZIGARCH-$ZIGVER
RUN curl https://ziglang.org/download/$ZIGVER/zig-$ZIGOS-$ZIGARCH-$ZIGVER.tar.xz -O
RUN tar xf zig-$ZIGOS-$ZIGARCH-$ZIGVER.tar.xz
    
FROM alpine:latest

ARG ZIGOS
ARG ZIGARCH
ARG ZIGVER
COPY --from=builder /zig-$ZIGOS-$ZIGARCH-$ZIGVER/zig /usr/local/bin
