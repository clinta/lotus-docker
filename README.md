A docker file to build the lotus filecoin client. Uses a multi-stage build to produce an image without uneeded build dependencies.

The lotus branch can be specified with the build arg `BRANCH`.

To build the ntwk-calibration branch run `docker build . --build-arg BRANCH=ntwk-calibraiton`. Branch defaults to master.
