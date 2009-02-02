# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Authenticate a user using GatorLink"
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
	dev-perl/MRO-Compat"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Catalyst-Plugin-Authentication
		dev-perl/Catalyst-Runtime
		dev-perl/Catalyst-Plugin-Session
		dev-perl/Catalyst-Plugin-Session-State-Cookie
		dev-perl/Catalyst-Plugin-Session-Store-File
		virtual/perl-File-Spec
		dev-perl/Test-MockObject
		virtual/perl-Test-Simple
		>=dev-perl/Test-WWW-Mechanize-Catalyst-0.40
	)"
