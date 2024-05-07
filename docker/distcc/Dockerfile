FROM gentoo/portage:latest as portage
FROM gentoo/stage3:amd64-openrc

COPY --link make.conf /etc/portage/make.conf
COPY --link package.use /etc/portage/package.use
COPY --link world /var/lib/portage/world
COPY --link gentoobinhost.conf /etc/portage/binrepos.conf/gentoobinhost.conf
# TODO: Figure out how to update with minimal changes. Need to update glibc.
RUN --mount=type=bind,from=portage,source=/var/db/repos/gentoo,target=/var/db/repos/gentoo \
  emerge -DUqv --ask=n --autounmask-continue=y @selected \
  && rm -rf /var/cache/distfiles/*
RUN --mount=type=bind,from=portage,source=/var/db/repos/gentoo,target=/var/db/repos/gentoo \
	emerge -c --ask=n
COPY --link gentoo.conf /etc/portage/repos.conf/gentoo.conf

ENV TMPDIR=/tmp
EXPOSE 3632 3633
CMD \
  . /etc/profile && \
  exec /usr/bin/distccd \
  --nice 0 \
  --daemon \
  --no-detach \
  --allow-private \
  --user distcc \
  --stats \
  --log-stderr \
  --log-level critical
