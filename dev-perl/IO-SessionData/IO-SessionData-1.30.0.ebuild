# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/IO-SessionData/IO-SessionData-1.30.0.ebuild,v 1.1 2015/04/02 21:18:24 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=PHRED
MODULE_VERSION=1.03
inherit perl-module

DESCRIPTION="Session data support module for SOAP::Lite"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"

SRC_TEST=do
