FROM gentoo/portage:latest as portage
FROM gentoo/stage3:amd64-openrc

COPY --link make.conf /etc/portage/make.conf
COPY --link package.use /etc/portage/package.use
COPY --link world /var/lib/portage/world
COPY --link gentoobinhost.conf /etc/portage/binrepos.conf/gentoobinhost.conf
COPY --link gentoo.conf /etc/portage/repos.conf/gentoo.conf
RUN --mount=type=bind,from=portage,source=/var/db/repos/gentoo,target=/var/db/repos/gentoo \
  --mount=type=cache,target=/var/cache/binpkgs,sharing=locked \
  --mount=type=cache,target=/var/cache/distfiles,sharing=locked \
  emerge -DUqv --ask=n --autounmask-continue=y @selected \
	&& emerge -c --ask=n

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
  --log-level info
