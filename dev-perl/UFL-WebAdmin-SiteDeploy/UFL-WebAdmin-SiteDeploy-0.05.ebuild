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
	dev-perl/DateTime
	dev-perl/IO-String
	dev-perl/Log-Log4perl
	dev-perl/Moose
	dev-perl/MooseX-App-Cmd
	dev-perl/MooseX-Getopt
	dev-perl/Path-Class
	dev-perl/SVN-Notify
	dev-perl/SVN-Notify-Config
	dev-perl/SVN-Notify-Mirror
	dev-perl/UFL-WebAdmin-SVN
	dev-perl/URI
	dev-perl/yaml
	net-misc/rsync
	net-misc/openssh
	dev-util/subversion
	sys-apps/coreutils"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-File-Spec
		dev-perl/Test-Log4perl
		virtual/perl-Test-Simple
	)"

pkg_setup() {
	if ! perl -MSVN::Client < /dev/null 2> /dev/null; then
		eerror "SVN::Client missing or outdated."
		eerror "Please emerge dev-util/subversion with the perl USE flag."
		die "Need Subversion compiled with Perl bindings"
	fi
}
