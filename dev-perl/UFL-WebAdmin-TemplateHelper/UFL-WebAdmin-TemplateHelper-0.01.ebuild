# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Helper functions for filling templates"
HOMEPAGE="http://dev.webadmin.ufl.edu/~dwc/"
SRC_URI="http://dev.webadmin.ufl.edu/distfiles/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="mirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	virtual/perl-File-Spec
	dev-perl/text-template"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"
