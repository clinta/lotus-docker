FROM golang:1.14-buster as build

RUN apt-get update && apt-get install -y \
  mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq

ARG BRANCH=master
RUN git clone --single-branch --branch $BRANCH https://github.com/filecoin-project/lotus.git && git -C lotus status

RUN cd lotus && \
  make clean && make all && \
  make install

FROM debian:buster
RUN apt-get update && apt-get install -y \
  mesa-opencl-icd ca-certificates

COPY --from=build /usr/local/bin/lotus* /usr/local/bin/
VOLUME /root/.lotus
ENTRYPOINT ["/usr/local/bin/lotus"]
CMD ["daemon"]
