#!/bin/bash

# -----------------------------------------------------------------
#
# Runs a container for testing the build, mounting all
# relevant files into the container.
#
# -----------------------------------------------------------------
docker run -ti --rm \
  --name ubuntu_test \
  --hostname ubuntu_test \
  --user 1000:1000 \
  -v $(pwd):$(pwd) \
  --workdir $(pwd) \
  malkab/ubuntu-general-purpose:latest
