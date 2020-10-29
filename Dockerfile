FROM ubuntu:20.04
WORKDIR /root
COPY scripts .
RUN ["/bin/bash", "./setup.sh"]
ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]
