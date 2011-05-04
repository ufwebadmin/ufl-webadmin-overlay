# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=4

inherit perl-module

DESCRIPTION="SVN helpers for Web Administration"
HOMEPAGE="http://www.webadmin.ufl.edu/"
SRC_URI="https://github.com/downloads/ufwebadmin/${PN}/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="mirror"
SRC_TEST="do"

IUSE="test trac"
RDEPEND="dev-lang/perl
	dev-perl/SVN-Notify
	dev-vcs/subversion
	sys-apps/debianutils
	sys-apps/findutils
	trac? ( >=www-apps/trac-0.12 )"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
