#!perl
#---------------------------------------------------------------------
# $Id: perlcritic.t 1599 2006-11-26 23:40:46Z cjm $
#---------------------------------------------------------------------

use Test::More;

eval "use Test::Perl::Critic qw(-verbose 10)";
plan skip_all => "Test::Perl::Critic required for testing PBP compliance" if $@;

all_critic_ok();
