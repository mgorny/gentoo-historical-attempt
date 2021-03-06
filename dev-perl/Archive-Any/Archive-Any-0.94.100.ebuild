# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Archive-Any/Archive-Any-0.94.100.ebuild,v 1.2 2015/06/13 19:27:34 dilfridge Exp $

EAPI=5

MODULE_AUTHOR=OALDERS
MODULE_VERSION=0.0941
inherit perl-module

DESCRIPTION="Single interface to deal with file archives"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-Archive-Tar
	dev-perl/Archive-Zip
	dev-perl/Module-Find
	dev-perl/MIME-Types
	dev-perl/File-MMagic
	virtual/perl-File-Spec
"
DEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.360.100
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-Warn
	)
"

SRC_TEST="do parallel"
