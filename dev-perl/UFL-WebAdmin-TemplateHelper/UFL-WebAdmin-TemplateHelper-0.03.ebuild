# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=4

inherit perl-module

GITHUB_USER="ufwebadmin"
GITHUB_HASH="b8feba9"

DESCRIPTION="Helper functions for filling templates"
HOMEPAGE="http://www.webadmin.ufl.edu/"
SRC_URI="https://github.com/${GITHUB_USER}/${PN}/tarball/${PV} -> ${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="mirror"
SRC_TEST="do"

S="${WORKDIR}/${GITHUB_USER}-${PN}-${GITHUB_HASH}"

IUSE="test"
RDEPEND="dev-lang/perl
	virtual/perl-File-Spec
	dev-perl/HTML-Parser
	dev-perl/libwww-perl
	dev-perl/text-template
	dev-perl/XML-RSS"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-File-Spec
		virtual/perl-Test-Simple
	)"
