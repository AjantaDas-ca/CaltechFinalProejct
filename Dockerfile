# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "ajanta399@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://34.238.126.251:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
