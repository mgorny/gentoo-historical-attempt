# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/go-usb/go-usb-9999.ebuild,v 1.1 2015/05/11 16:25:31 mgorny Exp $

EAPI=5

inherit git-r3 multilib

DESCRIPTION="CGO bindings for libusb"
HOMEPAGE="https://github.com/hanwen/usb"
EGIT_REPO_URI="https://github.com/hanwen/usb.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=">=dev-lang/go-1.4"
RDEPEND=""

# Tests require a connected mtp device
RESTRICT="test"

GO_PN="/usr/lib/go/src/github.com/hanwen/usb"

src_install() {
	insinto "${GO_PN}"
	doins *.go LICENSE || die "Install failed"
}

src_test() {
	go test -ldflags '-extldflags=-fno-PIC' ${GO_PN} || die
}
