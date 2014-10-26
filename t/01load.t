#!/usr/local/bin/perl
#use Test::Simple tests => 7;
use Test::More tests => 2;
### Load citric modules (ok after each ?)
#use lib ('../..');
#use Citrix::Config;
use Citrix::LaunchMesg;
use Citrix::SessOp;
use Citrix::SessionSet;
use Citrix::Farm;
use Citrix;
ok(1, "Modules loaded fine");
# Version sync
sub versync {
   my $v = $Citrix::VERSION;
   ($Citrix::LaunchMesg::VERSION) == $v && ($Citrix::SessOp::VERSION == $v) &&
   ($Citrix::SessionSet::VERSION == $v) && ($Citrix::Farm::VERSION == $v);
}

ok (versync(), "Versions of modules are in sync");
