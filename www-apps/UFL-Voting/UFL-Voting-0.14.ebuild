# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Catalyst application for the University of Florida Voting System"
HOMEPAGE="http://voting.senate.ufl.edu/"
SRC_URI="http://dev.webadmin.ufl.edu/distfiles/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	dev-perl/Catalyst-Runtime
	dev-perl/Catalyst-Model-DBIC-Schema
	dev-perl/Catalyst-Plugin-Authentication
	dev-perl/Catalyst-Plugin-Authentication-Store-DBIC
	dev-perl/Catalyst-Plugin-Authorization-ACL
	dev-perl/Catalyst-Plugin-Authorization-Roles
	dev-perl/Catalyst-Plugin-ConfigLoader
	dev-perl/Catalyst-Plugin-FillInForm
	dev-perl/Catalyst-Plugin-FormValidator-Simple
	dev-perl/Catalyst-Plugin-StackTrace
	dev-perl/Catalyst-Plugin-Static-Simple
	dev-perl/Catalyst-Plugin-Unicode
	dev-perl/Catalyst-View-TT
	>=dev-perl/DateTime-0.23
	dev-perl/DateTime-Format-Mail
	dev-perl/DateTime-Format-Pg
	dev-perl/DateTime-Format-Strptime
	dev-perl/DBD-Pg
	>=dev-perl/DBIx-Class-0.05999_pre1
	dev-perl/Module-Find
	virtual/perl-Scalar-List-Utils
	dev-perl/yaml"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple )"

src_install() {
	perl-module_src_install

	newconfd "${FILESDIR}"/ufl_voting.confd ufl_voting
	newinitd "${FILESDIR}"/ufl_voting.initd ufl_voting
}

pkg_postinst() {
	perl-module_pkg_postinst

	ewarn "To use the included init script, you must have dev-perl/Catalyst-Runtime"
	ewarn "built with the fastcgi USE flag."
}
