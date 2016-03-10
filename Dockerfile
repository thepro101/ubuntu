#
## Ubuntu CK-DevWorkspace Version 0.1
#
#
#
## Pull base image.
FROM dockerfile/ubuntu

# Install LXDE and VNC server.
RUN \
 apt-get update && \
 DEBIAN_FRONTEND=noninteractive apt-get install -y lxde-core lxterminal tightvncserver && \
 rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]

# Expose ports.
EXPOSE 5901
