# Ubuntu: General Purpose

A general purpose Ubuntu image with some additional packages installed for doing general purpose stuff. Used most of the times to attach to a Docker volume to debug and inspect things.


## Container Creation

Something in this lines:

```shell
docker run --rm -ti \
  -v some_interesting_volume:/ext-src \
  --user 1000:1000 \
  malkab/ubuntu-general-purpose:latest
```


## User Mapping

The image creates several users for Linux and Mac with common UID:GID for mapping local operations. For Linux, users with UID:GID 1000:1000 to 1004:1004 are available, for Mac, 500:504.
