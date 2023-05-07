# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit rpm systemd xdg desktop

DESCRIPTION="Cloudflare Warp Client"
HOMEPAGE="https://1.1.1.1"
SRC_URI="https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2023_3_398_1_x86_64_e9b71b3326.rpm"

LICENSE="all-rights-reserved"
RESTRICT="bindist mirror"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}"

PATCHES=(
	"${FILESDIR}/openrc-support.patch"
)

# TODO: There are multiple systemd style stuff in the package.
# TODO: Using patch for now for OpenRC. Should be able to remove reliance on systemctl --user.
# TODO: Install /etc/xdg/autostart script by default? Or let user choose?
# TODO: That said, by default, the client alr starts, the above is just the systray icon...

# NOTE: Cloudflare WARP uses a userspace wireguard implementation, so there is no
# dependency on net-vpn/wireguard-tools or the wireguard kernel modules.
# Run-time dependencies. Must be defined to whatever this depends on to run.
# Example:
#    ssl? ( >=dev-libs/openssl-1.0.2q:0= )
#    >=dev-lang/perl-5.24.3-r1
# It is advisable to use the >= syntax show above, to reflect what you
# had installed on your system when you tested the package.  Then
# other users hopefully won't be caught without the right version of
# a dependency.
#RDEPEND=""

# Build-time dependencies that need to be binary compatible with the system
# being built (CHOST). These include libraries that we link against.
# The below is valid if the same run-time depends are required to compile.
#DEPEND="${RDEPEND}"

# Build-time dependencies that are executed during the emerge process, and
# only need to be present in the native build system (CBUILD). Example:
#BDEPEND="virtual/pkgconfig"

QA_PREBUILT="/bin/warp-cli /bin/warp-diag /bin/warp-svc /bin/warp-taskbar"

src_install() {
	into /
	dobin bin/warp-cli
	dobin bin/warp-diag
	dobin bin/warp-svc
	dobin bin/warp-taskbar

	doinitd etc/init.d/warp-svc

	# Skipped /ect/xdg/autostart.

	systemd_dounit opt/cloudflare-warp/warp-svc.service
	# systemd_enable_service multi-user.target warp-svc.service
	systemd_douserunit usr/lib/systemd/user/warp-taskbar.service

	domenu usr/share/applications/com.cloudflare.WarpTaskbar.desktop
	doicon -s scalable \
		usr/share/icons/hicolor/scalable/apps/zero-trust.svg \
		usr/share/icons/hicolor/scalable/apps/zero-trust-error.svg \
		usr/share/icons/hicolor/scalable/apps/zero-trust-connected.svg \
		usr/share/icons/hicolor/scalable/apps/zero-trust-disconnected.svg
}
