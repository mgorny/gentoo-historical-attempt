# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/tempest-lib/tempest-lib-0.3.0.ebuild,v 1.1 2015/02/28 07:06:17 prometheanfire Exp $

EAPI=5

PYTHON_COMPAT=( python2_7 python3_3 python3_4 )

inherit distutils-r1

DESCRIPTION="A library to assist in creating functional or integrated test suites for OpenStack projects."
HOMEPAGE="http://pypi.python.org/pypi/tempest-lib https://github.com/openstack/tempest-lib"
SRC_URI="mirror://pypi/t/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-python/Babel-1.3[${PYTHON_USEDEP}]
	>=dev-python/fixtures-0.3.14[${PYTHON_USEDEP}]
	>=dev-python/iso8601-0.1.9[${PYTHON_USEDEP}]
	>=dev-python/jsonschema-2.0.0[${PYTHON_USEDEP}]
	<dev-python/jsonschema-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/httplib2-0.7.5[${PYTHON_USEDEP}]
	>=dev-python/six-1.7.0[${PYTHON_USEDEP}]
	>=dev-python/oslo-log-0.1.0[${PYTHON_USEDEP}]"
DEPEND="
	>=dev-python/pbr-0.8[${PYTHON_USEDEP}]
	<dev-python/pbr-1.0[${PYTHON_USEDEP}]
	test? ( ${RDEPEND}
		>=dev-python/hacking-0.9.2[${PYTHON_USEDEP}]
		<dev-python/hacking-0.10[${PYTHON_USEDEP}]
		>=dev-python/subunit-0.0.18[${PYTHON_USEDEP}]
		>=dev-python/sphinx-1.1.2[${PYTHON_USEDEP}]
		!~dev-python/sphinx-1.2.0[${PYTHON_USEDEP}]
		<dev-python/sphinx-1.3[${PYTHON_USEDEP}]
		>=dev-python/oslo-sphinx-2.2.0[${PYTHON_USEDEP}]
		>=dev-python/oslotest-1.2.0[${PYTHON_USEDEP}]
		>=dev-python/testrepository-0.0.18[${PYTHON_USEDEP}]
		>=dev-python/testscenarios-0.4[${PYTHON_USEDEP}]
		>=dev-python/testtools-0.9.36[${PYTHON_USEDEP}]
		!~dev-python/testtools-1.2.0[${PYTHON_USEDEP}]
		>=dev-python/mock-1.0[${PYTHON_USEDEP}]
		dev-python/nose[${PYTHON_USEDEP}]
	)"

python_test() {
	nosetests tempest_lib/tests || die "Tests fail with ${EPYTHON}"
}
