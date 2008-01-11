# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Automatic Web site deployment"
HOMEPAGE="http://dev.webadmin.ufl.edu/~dwc/"
SRC_URI="http://dev.webadmin.ufl.edu/distfiles/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	dev-perl/SVN-Notify
	dev-perl/SVN-Notify-Mirror
	dev-util/subversion
	net-misc/openssh"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-File-Spec
		virtual/perl-Test-Simple
	)"
