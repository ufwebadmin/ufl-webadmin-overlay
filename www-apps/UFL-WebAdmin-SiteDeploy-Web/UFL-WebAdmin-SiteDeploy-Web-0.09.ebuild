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
	>=dev-perl/Catalyst-Runtime-5.700.120
	dev-perl/Catalyst-Action-RenderView
	>=dev-perl/Catalyst-Plugin-Authentication-0.100.120
	dev-perl/Catalyst-Plugin-AutoRestart
	dev-perl/Catalyst-Plugin-ConfigLoader
	dev-perl/Catalyst-Plugin-ErrorCatcher
	dev-perl/Catalyst-Plugin-StackTrace
	dev-perl/Catalyst-Plugin-Static-Simple
	dev-perl/Catalyst-Plugin-Unicode-Encoding
	dev-perl/Catalyst-View-TT
	dev-perl/Moose
	virtual/perl-parent
	>=dev-perl/UFL-WebAdmin-SiteDeploy-0.13
	dev-perl/VCI
	dev-perl/yaml"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Path-Class
		virtual/perl-Test-Simple
		dev-perl/Test-WWW-Mechanize-Catalyst
		dev-perl/Test-YAML-Valid
		>=dev-perl/UFL-WebAdmin-SiteDeploy-0.13
	)"

src_install() {
	perl-module_src_install

	newconfd "${FILESDIR}"/ufl_webadmin_sitedeploy_web.confd ufl_webadmin_sitedeploy_web
	newinitd "${FILESDIR}"/ufl_webadmin_sitedeploy_web.initd ufl_webadmin_sitedeploy_web
}
