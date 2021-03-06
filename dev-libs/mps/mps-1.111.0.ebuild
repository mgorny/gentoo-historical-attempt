# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/mps/mps-1.111.0.ebuild,v 1.2 2013/05/15 06:58:46 patrick Exp $

EAPI=4

inherit eutils

DESCRIPTION="Ravenbrook Memory Pool System"

MY_P="${PN}-kit-${PV}"
HOMEPAGE="http://www.ravenbrook.com/project/mps/"
SRC_URI="http://www.ravenbrook.com/project/${PN}/release/${PV}/${MY_P}.tar.gz"

LICENSE="Sleepycat"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S=${WORKDIR}/${MY_P}/

src_prepare() {
	# need to fix CFLAGS, it's still being silly
	sed -i -e 's/-Werror//' code/g{c,p}.gmk || die "Failed to fix CFLAGS"
}

src_install() {
	emake DESTDIR="${D}" install || die
}
