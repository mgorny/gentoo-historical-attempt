# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-texlive/texlive-music/texlive-music-2015.ebuild,v 1.1 2015/07/16 09:25:58 aballier Exp $

EAPI="5"

TEXLIVE_MODULE_CONTENTS="abc bagpipe figbas gchords gtrcrd guitar guitarchordschemes harmony leadsheets lilyglyphs m-tx musixguit musixtex musixtex-fonts musixtnt piano pmx pmxchords songbook songs xpiano collection-music
"
TEXLIVE_MODULE_DOC_CONTENTS="abc.doc bagpipe.doc figbas.doc gchords.doc gtrcrd.doc guitar.doc guitarchordschemes.doc harmony.doc leadsheets.doc lilyglyphs.doc m-tx.doc musixguit.doc musixtex.doc musixtex-fonts.doc musixtnt.doc piano.doc pmx.doc pmxchords.doc songbook.doc songs.doc xpiano.doc "
TEXLIVE_MODULE_SRC_CONTENTS="abc.source guitar.source lilyglyphs.source musixtex.source songbook.source songs.source xpiano.source "
inherit  texlive-module
DESCRIPTION="TeXLive Music packages"

LICENSE=" GPL-1 GPL-2 LGPL-2.1 LPPL-1.2 LPPL-1.3 "
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~mips ~ppc ~ppc64 ~s390 ~sh ~x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x64-solaris ~x86-solaris"
IUSE=""
DEPEND=">=dev-texlive/texlive-latex-2015
!<app-text/texlive-core-2011
!<dev-texlive/texlive-pictures-2015
!<dev-texlive/texlive-genericextra-2015
"
RDEPEND="${DEPEND} "
TEXLIVE_MODULE_BINSCRIPTS="
	texmf-dist/scripts/musixtex/musixflx.lua
	texmf-dist/scripts/musixtex/musixtex.lua
	texmf-dist/scripts/m-tx/m-tx.lua
	texmf-dist/scripts/pmx/pmx2pdf.lua
	texmf-dist/scripts/pmxchords/pmxchords.lua
	texmf-dist/scripts/lilyglyphs/lily-glyph-commands.py
	texmf-dist/scripts/lilyglyphs/lily-image-commands.py
	texmf-dist/scripts/lilyglyphs/lily-rebuild-pdfs.py
"
