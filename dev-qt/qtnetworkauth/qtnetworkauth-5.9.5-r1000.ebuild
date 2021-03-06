# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit qt5-build-r10000

DESCRIPTION="Network authorization library for the Qt5 framework"
LICENSE="GPL-3"

if [[ ${QT5_BUILD_TYPE} == release ]]; then
	KEYWORDS="amd64"
fi

IUSE=""

DEPEND="
	~dev-qt/qtcore-${PV}
	~dev-qt/qtnetwork-${PV}
"
RDEPEND="${DEPEND}"
