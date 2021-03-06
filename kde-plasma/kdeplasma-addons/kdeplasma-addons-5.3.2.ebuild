# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-plasma/kdeplasma-addons/kdeplasma-addons-5.3.2.ebuild,v 1.1 2015/06/30 20:50:13 johu Exp $

EAPI=5

inherit kde5

DESCRIPTION="Extra Plasma applets and engines"
LICENSE="GPL-2 LGPL-2"
KEYWORDS="~amd64"
IUSE="ibus scim"

DEPEND="
	$(add_frameworks_dep karchive)
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kconfigwidgets)
	$(add_frameworks_dep kcmutils)
	$(add_frameworks_dep kcompletion)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep kdelibs4support)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kio)
	$(add_frameworks_dep knewstuff)
	$(add_frameworks_dep knotifications)
	$(add_frameworks_dep kpackage)
	$(add_frameworks_dep kross)
	$(add_frameworks_dep krunner)
	$(add_frameworks_dep kservice)
	$(add_frameworks_dep kunitconversion)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_frameworks_dep kwindowsystem)
	$(add_frameworks_dep kxmlgui)
	$(add_frameworks_dep plasma)
	$(add_frameworks_dep sonnet)
	dev-qt/qtdbus:5
	dev-qt/qtdeclarative:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	dev-qt/qtx11extras:5
	ibus? (
		app-i18n/ibus
		dev-libs/glib:2
		x11-libs/libxcb
		x11-libs/xcb-util-keysyms
	)
	scim? ( app-i18n/scim )
"
RDEPEND="${DEPEND}
	!kde-base/kdeplasma-addons
"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_find_package ibus IBus)
		$(cmake-utils_use_find_package scim)
	)

	kde5_src_configure
}
