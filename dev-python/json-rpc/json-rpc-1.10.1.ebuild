# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/json-rpc/json-rpc-1.10.1.ebuild,v 1.1 2015/07/19 03:56:38 idella4 Exp $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_{3,4}} )

inherit distutils-r1

DESCRIPTION="JSON-RPC transport implementation for python"
HOMEPAGE="https://github.com/pavlov99/json-rpc"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/flask[${PYTHON_USEDEP}]
	)"

python_test() {
	esetup.py test || die
}
