FROM ghcr.io/graalvm/jdk-community:21

# Create non-root user
ARG USER=minecraft
ARG UID=1000
ARG GID=${UID}

RUN groupadd --gid $GID $USER \
    && useradd --uid $UID --gid $GID -m $USER

USER ${USER}
