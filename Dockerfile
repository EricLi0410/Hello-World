# Start from a Debian image with the latest version of Go installed
# and a workspace  configured at java
FROM java:8

# Copy the local package files to the container's workspace.
ADD . /java/src/tencent.com/EricLi0410/hello-human

# Build the outyet command inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
RUN javac  install tencent.com/EricLi0410/hello-human

ADD ./content /content

# Run the outyet command by default when the container starts.
ENTRYPOINT /java/bin/hello-human
