# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Catalyst application for the University of Florida Web Administration Web site management system"
HOMEPAGE="http://dev.webadmin.ufl.edu/~dwc/"
SRC_URI="http://dev.webadmin.ufl.edu/distfiles/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="nomirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	>=dev-perl/Catalyst-Runtime-5.7012
	dev-perl/Catalyst-Action-RenderView
	dev-perl/Catalyst-Plugin-Authentication
	dev-perl/Catalyst-Plugin-ConfigLoader
	dev-perl/Catalyst-Plugin-StackTrace
	dev-perl/Catalyst-Plugin-Static-Simple
	dev-perl/Catalyst-Plugin-Unicode-Encoding
	dev-perl/Catalyst-View-TT
	dev-perl/Moose
	dev-perl/parent
	>=dev-perl/UFL-Controller-Authentication-0.02
	>=dev-perl/UFL-WebAdmin-SiteDeploy-0.07
	dev-perl/VCI
	dev-perl/yaml"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Path-Class
		virtual/perl-Test-Simple
		dev-perl/Test-WWW-Mechanize-Catalyst
		dev-perl/Test-YAML-Valid
		>=dev-perl/UFL-WebAdmin-SiteDeploy-0.07
	)"

src_install() {
	perl-module_src_install

	newconfd "${FILESDIR}"/ufl_webadmin_sitedeploy_web.confd ufl_webadmin_sitedeploy_web
	newinitd "${FILESDIR}"/ufl_webadmin_sitedeploy_web.initd ufl_webadmin_sitedeploy_web
}

pkg_postinst() {
	perl-module_pkg_postinst

	ewarn "To use the included init script, you must have dev-perl/Catalyst-Runtime"
	ewarn "built with the fastcgi USE flag."
}
