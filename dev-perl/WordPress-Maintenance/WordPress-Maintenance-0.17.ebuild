# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Configuration and file maintenance for WordPress instances"
HOMEPAGE="http://dev.webadmin.ufl.edu/~dwc/"
SRC_URI="http://dev.webadmin.ufl.edu/distfiles/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	dev-perl/Class-Accessor
	dev-perl/File-ShareDir
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	virtual/perl-Getopt-Long
	dev-perl/Hash-Merge
	dev-perl/Net-SSH
	dev-perl/Template-Toolkit
	dev-perl/URI
	dev-perl/yaml"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-File-Spec
		dev-perl/Template-Toolkit
		virtual/perl-Test-Simple
	)"
