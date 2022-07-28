#!/bin/bash

# -----------------------------------------------------------------
#
# Runs a container for testing the build, mounting all
# relevant files into the container.
#
# -----------------------------------------------------------------
#  --user 1000:1000 \
docker run -ti --rm \
  --name ubuntu_test \
  --hostname ubuntu_test \
  --workdir / \
  -v $(pwd)/assets/keyboard_selections.conf:/keyboard_selections.conf \
  -v $(pwd)/assets/dot.bashrc:/root/.bashrc \
  -v $(pwd)/assets/dot.vimrc:/root/.vimrc \
  -v $(pwd)/assets/dot.bashrc:/etc/skel/.bashrc \
  -v $(pwd)/assets/dot.vimrc:/etc/skel/.vimrc \
  -v $(pwd)/assets/config.sh:/config.sh \
  ubuntu:latest
