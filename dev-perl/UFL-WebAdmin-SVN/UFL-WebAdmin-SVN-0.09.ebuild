# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=4

inherit perl-module

GITHUB_USER="ufwebadmin"
GITHUB_HASH="c7d95f4"

DESCRIPTION="SVN helpers for Web Administration"
HOMEPAGE="http://www.webadmin.ufl.edu/"
SRC_URI="https://github.com/${GITHUB_USER}/${PN}/tarball/${PV} -> ${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="mirror"
SRC_TEST="do"

S="${WORKDIR}/${GITHUB_USER}-${PN}-${GITHUB_HASH}"

IUSE="test trac"
RDEPEND="dev-lang/perl
	dev-perl/SVN-Notify
	dev-vcs/subversion
	sys-apps/debianutils
	sys-apps/findutils
	trac? ( >=www-apps/trac-0.12 )"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
