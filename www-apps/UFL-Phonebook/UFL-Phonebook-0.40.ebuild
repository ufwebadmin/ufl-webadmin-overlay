# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=4

inherit perl-module

GITHUB_USER="ufwebadmin"
GITHUB_HASH="3df77ff"

DESCRIPTION="Catalyst application for the University of Florida Phonebook"
HOMEPAGE="http://phonebook.ufl.edu/"
SRC_URI="https://github.com/${GITHUB_USER}/${PN}/tarball/${PV} -> ${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="mirror"
SRC_TEST="do"

S="${WORKDIR}/${GITHUB_USER}-${PN}-${GITHUB_HASH}"

IUSE="test"
RDEPEND="dev-lang/perl
	dev-perl/Authen-SASL
	>=dev-perl/Catalyst-Runtime-5.800.190
	dev-perl/Catalyst-Action-RenderView
	>=dev-perl/Catalyst-Model-LDAP-0.16
	dev-perl/Catalyst-Plugin-Authentication
	dev-perl/Catalyst-Plugin-Authorization-Roles
	dev-perl/Catalyst-Plugin-ConfigLoader
	dev-perl/Catalyst-Plugin-ErrorCatcher
	dev-perl/Catalyst-Plugin-StackTrace
	dev-perl/Catalyst-Plugin-Static-Simple
	dev-perl/Catalyst-View-TT
	dev-perl/Class-Accessor
	dev-perl/Data-Throttler
	dev-perl/DateTime
	dev-perl/Lingua-EN-Numbers
	dev-perl/MRO-Compat
	dev-perl/Moose
	dev-perl/perl-ldap
	virtual/perl-Scalar-List-Utils
	dev-perl/Tree-Simple
	dev-perl/URI
	dev-perl/YAML-LibYAML"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-File-Spec
		dev-perl/Test-MockObject
		virtual/perl-Test-Simple
		>=dev-perl/Test-WWW-Mechanize-Catalyst-0.40
		dev-perl/Text-vCard
	)"
