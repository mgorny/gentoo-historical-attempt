# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-process/nmon/nmon-14i.ebuild,v 1.2 2014/10/28 12:01:05 jer Exp $

EAPI=5
inherit flag-o-matic toolchain-funcs

DESCRIPTION="Nigel's performance MONitor for CPU, memory, network, disks, etc..."
HOMEPAGE="http://nmon.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/lmon${PV}.c"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="sys-libs/ncurses"
DEPEND="
	${RDEPEND}
	virtual/pkgconfig
"

S=${WORKDIR}

src_unpack() {
	cp "${DISTDIR}"/lmon${PV}.c "${S}"/nmon.c || die
}

src_compile() {
	append-cppflags -DJFS -DGETUSER -DLARGEMEM -DPOWER
	emake CC="$(tc-getCC)" LDLIBS="$( $(tc-getPKG_CONFIG) --libs ncurses)" ${PN}
}

src_install() {
	dobin nmon
}
