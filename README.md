# k0st/sift

Docker container of SANS Investigative Forensic Toolkit (SIFT) Workstation Version 3 

Image is based on the [ubuntu](https://registry.hub.docker.com/u/ubuntu/) base image

## Docker image size

[![Latest](https://badge.imagelayers.io/k0st/sift.svg)](https://imagelayers.io/?images=k0st/sift:latest 'latest')

## Docker image usage

```
docker run -it k0st/sift /bin/bash
```

## Examples

Mount host images to /data and run shell inside container:

```
docker run -v /path/to/host/raw/images:/data:rw k0st/sift -it k0st/sift /bin/bash
```



