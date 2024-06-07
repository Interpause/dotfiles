# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="Dirty binary build of ALVR for personal use."
HOMEPAGE="https://github.com/Interpause/ALVR"
SRC_URI="
	https://github.com/Interpause/ALVR/releases/download/v20.8.1.post1/alvr_streamer_linux.tar.gz
	https://github.com/Interpause/ALVR/releases/download/v20.8.1.post1/alvr_client_android.apk
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

QA_PREBUILT="*"
S="${WORKDIR}/alvr_streamer_linux"

src_install() {
	mkdir -p share/alvr || die
	cp ${DISTDIR}/alvr_client_android.apk share/alvr/ || die
	doicon ${FILESDIR}/alvr.png
	domenu ${FILESDIR}/alvr.desktop
	into /usr
	insinto /usr
	dobin bin/alvr_dashboard
	doins -r lib64
	dolib.so lib64/alvr/bin/linux64/driver_alvr_server.so
	dolib.so lib64/libalvr_vulkan_layer.so
	doins -r libexec
	doexe libexec/alvr/alvr_fw_config.sh
	dolib.so libexec/alvr/alvr_drm_lease_shim.so
	dobin libexec/alvr/vrcompositor-wrapper
	doins -r share
}
