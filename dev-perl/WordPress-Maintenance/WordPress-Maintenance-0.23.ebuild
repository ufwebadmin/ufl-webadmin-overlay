# Copyright University of Florida <webmaster at ufl dot edu>
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=4

inherit perl-module

DESCRIPTION="Configuration and file maintenance for WordPress instances"
HOMEPAGE="http://www.webadmin.ufl.edu/"
SRC_URI="https://github.com/downloads/ufwebadmin/${PN}/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="amd64 x86"
RESTRICT="mirror"
SRC_TEST="do"

IUSE="test"
RDEPEND="dev-lang/perl
	dev-perl/Class-Accessor
	dev-perl/DBI
	virtual/perl-Digest-SHA
	dev-perl/File-ShareDir
	dev-perl/File-Slurp
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	virtual/perl-Getopt-Long
	dev-perl/Hash-Merge
	dev-perl/IPC-Run
	dev-perl/Net-SSH
	dev-perl/Template-Toolkit
	virtual/perl-Time-HiRes
	dev-perl/URI
	dev-perl/WWW-Mechanize
	dev-perl/yaml"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-File-Spec
		dev-perl/Template-Toolkit
		virtual/perl-Test-Simple
	)"
