# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Catalyst application for the University of Florida Phonebook"
HOMEPAGE="http://phonebook.ufl.edu/"
SRC_URI="http://dev.webadmin.ufl.edu/distfiles/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	dev-perl/Authen-SASL
	>=dev-perl/Catalyst-Runtime-5.7006
	dev-perl/Catalyst-Action-RenderView
	>=dev-perl/Catalyst-Model-LDAP-0.16
	>=dev-perl/Catalyst-Plugin-Authentication-0.10003
	dev-perl/Catalyst-Plugin-ConfigLoader
	dev-perl/Catalyst-Plugin-Session
	dev-perl/Catalyst-Plugin-Session-State-Cookie
	dev-perl/Catalyst-Plugin-Session-Store-File
	dev-perl/Catalyst-Plugin-StackTrace
	dev-perl/Catalyst-View-TT
	dev-perl/Class-Accessor
	dev-perl/Class-C3
	dev-perl/Lingua-EN-Numbers
	dev-perl/perl-ldap
	virtual/perl-Scalar-List-Utils
	dev-perl/Tree-Simple
	dev-perl/UFL-Controller-Authentication
	dev-perl/URI
	dev-perl/yaml"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-File-Spec
		dev-perl/Test-MockObject
		virtual/perl-Test-Simple
		>=dev-perl/Test-WWW-Mechanize-Catalyst-0.40
		dev-perl/Text-vCard
	)"
