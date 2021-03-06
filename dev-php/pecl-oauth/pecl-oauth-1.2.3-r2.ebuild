# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-php/pecl-oauth/pecl-oauth-1.2.3-r2.ebuild,v 1.1 2015/04/29 01:33:04 grknight Exp $

EAPI="5"
PHP_EXT_NAME="oauth"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="no"
DOCS="README"

USE_PHP="php5-6 php5-5 php5-4"

inherit php-ext-pecl-r2

KEYWORDS="~amd64 ~x86"

DESCRIPTION="OAuth is an authorization protocol built on top of HTTP"
LICENSE="BSD"
SLOT="0"
IUSE=""

for target in ${USE_PHP}; do
	slot=${target/php}
	slot=${slot/-/.}
	PHPUSEDEPEND="${PHPUSEDEPEND}
	php_targets_${target}? ( dev-lang/php:${slot}[hash] )"
done

DEPEND="${PHPUSEDEPEND}"
RDEPEND="${DEPEND}"
