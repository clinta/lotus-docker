I wrote this before I found the
[Dockerfiles](https://github.com/filecoin-project/lotus/tree/master/tools/dockers) in the official lotus repository,
use those instead.

Building them requires building from the lotus directory with `docker build -f ./tools/dockers/docker-examples/basic-miner-busybox/Dockerfile .`

## Deprecated

A docker file to build the lotus filecoin client. Uses a multi-stage build to produce an image without uneeded build dependencies.

The lotus branch can be specified with the build arg `BRANCH`.

To build the ntwk-calibration branch run `docker build . --build-arg BRANCH=ntwk-calibraiton`. Branch defaults to master.
