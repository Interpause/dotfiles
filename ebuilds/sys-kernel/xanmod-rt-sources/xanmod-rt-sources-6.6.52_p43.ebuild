# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"
ETYPE="sources"
K_WANT_GENPATCHES="base extras experimental"
# see sys-kernel/gentoo-sources for appropriate version
K_GENPATCHES_VER="59"
K_SECURITY_UNSUPPORTED="1"
K_NOSETEXTRAVERSION="1"
K_NODRYRUN="1"

inherit kernel-2
detect_version
detect_arch

DESCRIPTION="Full XanMod sources with CONFIG_PREEMPT_RT including the Gentoo patchset"
HOMEPAGE="https://xanmod.org"
LICENSE+=" CDDL"
KEYWORDS="~amd64"
IUSE="experimental"

XANMOD_URI="https://github.com/xanmod/linux/releases/download"
XANMOD_VERSION="1"
RT_PATCHSET="${PV/*_p}"
SRC_URI="
	${KERNEL_BASE_URI}/linux-${KV_MAJOR}.${KV_MINOR}.tar.xz
	https://downloads.sourceforge.net/xanmod/patch-${OKV}-rt${RT_PATCHSET}-xanmod${XANMOD_VERSION}.xz
	${GENPATCHES_URI}
"

src_unpack() {
	UNIPATCH_STRICTORDER=1
	UNIPATCH_LIST="${UNIPATCH_LIST} ${DISTDIR}/patch-${OKV}-rt${RT_PATCHSET}-xanmod${XANMOD_VERSION}.xz "
	# exclude minor kernel revision patches; XanMod handles them already
	UNIPATCH_EXCLUDE="${UNIPATCH_EXCLUDE} 1*_linux-${KV_MAJOR}.${KV_MINOR}.*.patch "
	kernel-2_src_unpack
}


pkg_postinst() {
	elog "The XanMod team strongly suggests the use of updated CPU microcodes with its"
	elog "kernels. For details, see https://wiki.gentoo.org/wiki/Microcode."
	kernel-2_pkg_postinst
}
