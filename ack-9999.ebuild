# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-vim/dbext/dbext-12.00.ebuild,v 1.4 2010/11/14 17:09:00 armin76 Exp $

EAPI=3

inherit vim-plugin git

DESCRIPTION="vim plugin: Ack is better than grep"
HOMEPAGE="https://github.com/mileszs/ack.vim"
SRC_URI=""
EGIT_REPO_URI="git://github.com/mileszs/ack.vim.git"
LICENSE="GPL-3"
KEYWORDS="alpha amd64 ia64 ~mips ~ppc sparc x86"
VIM_PLUGIN_HELPFILES="ack"

RDEPEND="sys-apps/ack"
DEPEND=""

src_prepare() {
	git_src_prepare
	rm -rf "${S}/.git/"
	rm -rf "${S}/.gitignore"
	rm -rf "${S}/.README.md.un~"
}


S="${WORKDIR}"
