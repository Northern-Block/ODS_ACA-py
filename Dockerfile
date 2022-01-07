FROM bcgovimages/aries-cloudagent:py36-1.16-1_0.7.2-rc0
USER root
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.3/wait /wait
RUN chmod +x /wait
ENTRYPOINT ["/bin/bash", "-c", "/wait && /usr/local/bin/aca-py \"$@\"", "--"]
