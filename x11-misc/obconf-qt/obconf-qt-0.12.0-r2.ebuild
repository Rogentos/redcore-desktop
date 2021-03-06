# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit cmake-utils

DESCRIPTION="Openbox window manager configuration tool"
HOMEPAGE="http://lxqt.org/"

SRC_URI="https://github.com/lxde/${PN}/releases/download/${PV}/${P}.tar.xz"
KEYWORDS="amd64"

LICENSE="GPL-2 LGPL-2.1+"
SLOT="0"

RDEPEND="dev-libs/glib:2
	dev-libs/libxml2
	dev-qt/qtcore:5
	dev-qt/qtdbus:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	dev-qt/qtx11extras:5
	media-libs/fontconfig
	media-libs/freetype
	x11-wm/openbox:3
	x11-libs/libICE
	x11-libs/libSM
	x11-libs/libX11
	x11-libs/libXft
	x11-libs/pango
"
DEPEND="${RDEPEND}
	dev-qt/linguist-tools:5
	virtual/pkgconfig"

src_configure() {
	local mycmakeargs=( -DPULL_TRANSLATIONS=OFF )
	cmake-utils_src_configure
}
