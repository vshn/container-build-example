FROM quay.io/quay/busybox:latest

RUN date > /build-date.txt

CMD ["cat", "/build-date.txt"]
