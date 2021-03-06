# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1

DESCRIPTION="FFmpeg-based simple video cutter & joiner with a modern PyQt5 GUI"
HOMEPAGE="http://vidcutter.ozmartians.com https://github.com/ozmartian/vidcutter"
SRC_URI="https://github.com/ozmartian/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="x86 amd64"
LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="
	${PYTHON_DEPS}
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/PyQt5-5.5[multimedia,${PYTHON_USEDEP}]
"
RDEPEND="${DEPEND}
	virtual/ffmpeg[X,encode]
	media-video/mediainfo
	media-video/mpv[libmpv]"

src_prepare(){
	sed -i '/pypi/d' ${PN}/__init__.py
	eapply_user
}
