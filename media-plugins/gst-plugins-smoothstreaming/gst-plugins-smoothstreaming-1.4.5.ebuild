# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-plugins/gst-plugins-smoothstreaming/gst-plugins-smoothstreaming-1.4.5.ebuild,v 1.3 2015/03/15 13:40:20 pacho Exp $

EAPI="5"
GST_ORG_MODULE=gst-plugins-bad

inherit gstreamer

DESCRIPTION="Smooth Streaming plugin"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-libs/libxml2-2.9.1-r4[${MULTILIB_USEDEP}]"
DEPEND="${RDEPEND}"

# FIXME: gsturidownloader does not have a .pc
src_prepare() {
	gstreamer_system_link \
		gst-libs/gst/codecparsers:gstreamer-codecparsers
		#gst-libs/gst/uridownloader:gsturidownloader
}

multilib_src_compile() {
	emake -C gst-libs/gst/uridownloader
	gstreamer_multilib_src_compile
}
