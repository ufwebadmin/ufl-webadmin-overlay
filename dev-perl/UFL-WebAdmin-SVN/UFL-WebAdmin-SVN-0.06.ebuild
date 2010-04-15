# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="SVN helpers for Web Administration"
HOMEPAGE="http://dev.webadmin.ufl.edu/~dwc/"
SRC_URI="http://dev.webadmin.ufl.edu/distfiles/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="mirror"
SRC_TEST="do"

IUSE="test trac"
RDEPEND="dev-lang/perl
	dev-perl/SVN-Notify
	dev-util/subversion
	sys-apps/debianutils
	sys-apps/findutils
	trac? ( www-apps/trac )"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
