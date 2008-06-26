#! /usr/bin/perl
#---------------------------------------------------------------------
# $Id: perlcritic.t 2031 2008-06-25 17:00:00Z cjm $
#---------------------------------------------------------------------

use Test::More;

plan skip_all => "Don't want automated Perl::Critic reports"
    if $ENV{AUTOMATED_TESTING};

# ProhibitAccessOfPrivateData is a badly implemented policy that bans
# all use of hashrefs
eval <<'';
use Test::Perl::Critic (qw(-verbose 10
                           -exclude) => ['ProhibitAccessOfPrivateData']);

plan skip_all => "Test::Perl::Critic required for testing PBP compliance" if $@;

all_critic_ok();
